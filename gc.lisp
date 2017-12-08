(require 'uiop)
(setf (readtable-case *readtable*) :invert)

(defparameter *page-size* (* 64  1024))
(defparameter *null-ptr* '(i32.const 0))
(defparameter *sizeof-i32* 4)
(defparameter *sizeof-i64* 8)
(defparameter *sizeof-ptr* 4)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (defun split-list (list sep)
    (labels ((recc (left rest)
               (cond
                 ((null rest) (cons (nreverse left) rest))
                 ((eql (car rest) sep)
                  (cons (nreverse left) (cdr rest)))
                 (t (recc
                     (cons (car rest) left)
                     (cdr rest))))))
      (recc () list))))

(defparameter *wasm-funs* nil)

(defmacro defwfun (name param-list result &body body)
  (let* ((param-list (split-list param-list '&aux))
         (params (car param-list))
         (auxs   (cdr param-list))
         (param-types (mapcar #'cadr params))
         (param-vars  (mapcar #'car params))
         (aux-types   (mapcar #'cadr auxs))
         (aux-vars    (mapcar #'car auxs)))
    (let ((bindings (loop
                       :for var :in (append param-vars aux-vars)
                       :for i := 0 then (1+ i)
                       :collect (list var i)))
          (param (if (null param-types) () (list (cons 'param param-types))))
          (local (if (null aux-types) () (list (cons 'local aux-types))))
          (result (if (eql nil result) () (list (list 'result result)))))
      `(push
        (let ,bindings
          (append `(func ,',name ,@',param ,@',result
                         ,@',local
                         )
                  ,@body))
        *wasm-funs*))))


;; (defwfun $add ((x i32) (y i32)) i32
;;          `((i32.add (get_local ,x) (get_local ,y))))


;;; utils
(defwfun $new-page () i32
  `((i32.mul (i32.const ,*page-size*) (grow_memory (i32.const 1)))))

#|
struct gc {
  struct heap_page (*pages)[11], // 4 x 2^0 byte, 4 x 2^1 byte, ..., 4 x 2^10 byte
  size_t arena_top,
  // in the number of pointers
  size_t arena_size,
  void (*arena)[]
};
|#
(defparameter *sizeof-gc* (+ (* 11 *sizeof-ptr*) *sizeof-ptr* *sizeof-ptr*))
(defparameter *offset-gc-heap-page*  0)
(defparameter *offset-gc-arena-top*  (+ *offset-gc-heap-page*  (* 11 *sizeof-ptr*)))
(defparameter *offset-gc-arena-size* (+ *offset-gc-arena-top*  *sizeof-ptr*))
(defparameter *offset-gc-arena*      (+ *offset-gc-arena-size* *sizeof-ptr*))
#|
struct heap_page {
  // bitmaps enough to manage the 4byte-sized data pages
  uint64_t bitmaps[*page-size* / 4 /  64],
  struct page *next,
  // in bytes
  size_t data_size
  // in the number of cell
  size_t heap_size,
  void (*data)[]
};
|#

(defparameter *bitmap-size* (/ *page-size* 4 64))
(defparameter *sizeof-heap-page* (+ (* 8 *bitmap-size*) *sizeof-ptr* *sizeof-ptr*))
(defparameter *offset-heap-page-bitmaps* 0)
(defparameter *offset-heap-page-next*      (+ *offset-heap-page-bitmaps*   (* 8 *bitmap-size*)))
(defparameter *offset-heap-page-data-size* (+ *offset-heap-page-next*      *sizeof-ptr*))
(defparameter *offset-heap-page-heap-size* (+ *offset-heap-page-data-size* *sizeof-ptr*))
(defparameter *offset-heap-page-heap-data* (+ *offset-heap-page-heap-size* *sizeof-ptr*))


;;; struct gc;
(defwfun $new-gc () i32
  '((call $new-page)))

(defwfun $gc-init ((gc i32)) nil
  `(;; pages
    ,@(loop
         :for i :from 0 :below 11 :collect
           `(i32.store ,(intern (format nil "OFFSET=~a" (+ *offset-gc-heap-page* (* i *sizeof-ptr*))))
                       (get_local ,gc)
                       ,*null-ptr*))
    ;; arena_top
    (i32.store ,(intern (format nil "OFFSET=~a" *offset-gc-arena-top*))
               (get_local ,gc)
               (i32.const 0))
    ;; arena_size
    (i32.store ,(intern (format nil "OFFSET=~a" *offset-gc-arena-size*))
               (get_local ,gc)
               (i32.const ,(floor (- *page-size* *sizeof-gc*) *sizeof-ptr*)))))

;;; struct heap_page;
                                        ; heap data must be 8 byte aligned
(assert (zerop (rem *sizeof-heap-page* 8)))

(defwfun $new-heap-page () i32
  '((call $new-page)))

(defwfun $init-heap-page ((page i32) (size i32)) nil
  `(;; bitmaps
    ,@(loop :for i :from 0 :below *bitmap-size* :collect
           `(i64.store ,(intern (format nil "OFFSET=~a" (+ *offset-heap-page-bitmaps* (* i 8))))
                       (get_local ,page)
                       (i64.const 0)))
    ;; next
    (i32.store ,(intern (format nil "OFFSET=~a" *offset-heap-page-next*))
               (get_local ,page)
               ,*null-ptr*)
    ;; data-size
    (i32.store ,(intern (format nil "OFFSET=~a" *offset-heap-page-data-size*))
               (get_local ,page)
               (get_local ,size))
    ;; heap-size
    (i32.store ,(intern (format nil "OFFSET=~a" *offset-heap-page-heap-size*))
               (get_local ,page)
               (i32.div_u (i32.const ,(- *page-size* *sizeof-heap-page*)) (get_local ,size)))))




(defun calc-heap-index (size)
  ;; Simple binary search.
  ;; Should be optimized to common size (frequently 4 bytes and 8bytes)
  `(if i32 (i32.le_u ,size (i32.const 128))
                                        ; size <= 128
       (if i32 (i32.le_u ,size (i32.const 8))
                                        ; size <= 8
           (if i32 (i32.le_u ,size (i32.const 4))
                                        ; size <= 4
               (i32.const 0)
                                        ; 4 < size <= 8
               (i32.const 1))
                                        ; 8 < size <= 128
           (if i32 (i32.le_u ,size (i32.const 32))
                                        ; 8 < size <= 32
               (if i32 (i32.le_u ,size (i32.const 16))
                                        ; 8 < size <= 16
                   (i32.const 2)
                                        ; 16 < size <= 32
                   (i32.const 3))
                                        ; 32 < size <= 128
               (if i32 (i32.le_u ,size (i32.const 64))
                                        ; 32 < size <= 64
                   (i32.const 4)
                                        ; 64 < size <= 128
                   (i32.const 5))))
                                        ; 128 < size
       (if i32 (i32.le_u ,size (i32.const 1024))
                                        ; 128 < size <= 1024
           (if i32 (i32.le_u ,size (i32.const 512))
                                        ; 128 < size <= 512
               (if i32 (i32.le_u ,size (i32.const 256))
                                        ; 128 < size <= 256
                   (i32.const 6)
                                        ; 256 < size <= 512
                   (i32.const 7))
                                        ; 512 < size <= 1024
               (i32.const 8))
                                        ; 1024 < size
           (if i32 (i32.le_u ,size (i32.const 2048))
                                        ; 1024 < size <= 2048
               (i32.const 9)
               (if i32 (i32.le_u ,size (i32.const 4096))
                                        ; 2048 < size <= 4096
                   (i32.const 10)
                                        ; 4096 < size
                   (unreachable))))))

(defwfun $gc--append-heap-page ((gc i32) (heap-page i32) (size i32)
                                &aux (heap-index i32) (heap-page-ptr i32) (heap-page-next-ptr i32)) nil
  `((set_local ,heap-index (i32.mul (i32.const 4) ,(calc-heap-index `(get_local ,size))))
    (set_local ,heap-page-ptr
               (i32.load ,(intern (format nil "OFFSET=~a" *offset-gc-heap-page*))
                         (i32.add (get_local ,gc) (get_local ,heap-index))))
    (if (i32.eqz (get_local ,heap-page-ptr))
        ;; if no page exist let it be the first page
        (i32.store ,(intern (format nil "OFFSET=~a" *offset-gc-heap-page*))
                   (i32.add (get_local ,gc) (get_local ,heap-index))
                   (get_local ,heap-page))
        ;; if at least 1 page exist, append it to the end
        (loop $loop
           (set_local ,heap-page-next-ptr
                      (i32.load ,(intern (format nil "OFFSET=~a" *offset-heap-page-next*))
                                (get_local ,heap-page-ptr)))
           (if (i32.eqz (get_local ,heap-page-next-ptr))
               (block
                   (i32.store ,(intern (format nil "OFFSET=~a" *offset-heap-page-next*))
                              (get_local ,heap-page-ptr)
                              (get_local ,heap-page))
                 (return))
               (set_local ,heap-page-ptr (get_local,heap-page-next-ptr)))
           (br $loop)))))

(defwfun $gc-extend-heap-page ((gc i32) (size i32) &aux (heap-page i32)) nil
  `((set_local ,heap-page (call $new-heap-page))
    (call $init-heap-page (get_local ,heap-page) (get_local ,size))
    (call $gc--append-heap-page (get_local ,gc) (get_local ,heap-page) (get_local ,size))))


(defwfun $gc--alloc-page ((page i32) (size i32) &aux  (bitmap i64) (i i32) (j i32) (index i32)) i32
  `(
                                        ; for i from 0 below *bitmap-size*
    (block $outer
     (loop $loop
        (if (i32.le_u (i32.const ,*bitmap-size*) (get_local ,i))
            (br $outer))
                                        ;   bitmap <- page.bitmap[i]
        (set_local ,bitmap (i64.load ,(intern (format nil "OFFSET=~a" *offset-heap-page-bitmaps*))
                                     (i32.add (get_local ,page) (get_local ,i))))
                                        ;   if bitmap == 1111...1111
        (if (i64.eq (i64.const -1) (get_local ,bitmap))
                                        ;     next
            (br $loop))
                                        ;   j <- index of the first 0 in bitmap
        (set_local ,j (i32.wrap/i64(i64.ctz (i64.sub (i64.const -1) (get_local ,bitmap)))))
                                        ;   index <- i*64+j
        (set_local ,index (i32.add (i32.mul (get_local ,i) (i32.const 64)) (get_local ,j)))
                                        ;   if page.heap_size <= index
        (if (i32.le_u (i32.load ,(intern (format nil "OFFSET=~a" *offset-heap-page-heap-size*))
                                (get_local ,page))
                      (get_local ,index))
                                        ;     return null
            (return ,*null-ptr*)
                                        ;   else
            (block
                                        ;     page.bitmap[i] <- bitmap | (1 << j)
                (i64.store ,(intern (format nil "OFFSET=~a" *offset-heap-page-bitmaps*))
                           (i32.add (get_local ,page) (get_local ,i))
                           (i64.or (get_local ,bitmap) (i64.shl (i64.const 1) (i64.extend_u/i32 (get_local ,j)))))
                                        ;     return &page.data[index*size]
                (return (i32.add (i32.add (get_local ,page) (i32.const ,*offset-heap-page-heap-data*))
                                 (i32.mul (get_local ,index) (get_local ,size))))))
        (br $loop)))
                                        ; return null
    ,*null-ptr*))

(defwfun $gc--alloc-pages ((pages i32) (size i32) &aux (ptr i32)) i32
  `(
                                        ;  loop
    (loop $loop
                                        ;   if (page.next is null)
       (if (i32.eqz (get_local, pages))
                                        ;     fail
           (return (i32.const 0)))
                                        ;   try alloc-page(page, size)
       (if (i32.eqz (tee_local ,ptr (call $gc--alloc-page (get_local ,pages) (get_local ,size))))
           (set_local ,ptr (i32.load ,(intern (format nil "OFFSET=~a" *offset-heap-page-next*))
                                     (get_local ,pages)))
           (return (get_local ,ptr)))
       (br $loop))
    (unreachable)
    )
  )

(defwfun $gc--alloc ((gc i32) (size i32) &aux (pages i32) (index i32)) i32
  `(
                                        ; index <- calc-index-by-size(size)
    (set_local ,index ,(calc-heap-index `(get_local ,size)))
                                        ; alloc-pages(gc.heaps[index], size)
    (set_local ,pages (i32.load ,(intern (format nil "OFFSET=~a" *offset-gc-heap-page*))
                                (i32.add (get_local ,gc) (get_local ,index))))
    (call $gc--alloc-pages
          (get_local ,pages)
          (get_local ,size))))

(defwfun $gc-alloc ((gc i32) (data-size i32) &aux (size i32) (ptr i32)) i32
  `(
                                        ; try alloc
    (if (i32.eqz (tee_local ,ptr (call $gc--alloc (get_local ,gc) (get_local ,data-size))))
        (block
                                        ; gc-run
            (call $gc-run (get_local ,gc))
                                        ; try alloc
          (if (i32.eqz (tee_local ,ptr (call $gc--alloc (get_local ,gc) (get_local ,data-size))))
              (block
                        ; FIXME: round up power of 2
                  (set_local ,size (get_local ,data-size))
                                        ; extend-page
                  (call $gc-extend-heap-page (get_local ,gc) (get_local ,size))
                                        ; alloc
                (if (i32.eqz (tee_local ,ptr (call $gc--alloc (get_local ,gc) (get_local ,data-size))))
                    (unreachable))))))
    (get_local ,ptr)))

(defwfun $gc-save-state ((gc i32)) i32
  `((i32.load ,(intern (format nil "OFFSET=~a" *offset-gc-arena-top*)) (get_local ,gc))))
(defwfun $gc-protect ((gc i32) (ptr i32) &aux (arena-top i32)) nil
  `((set_local ,arena-top (i32.load ,(intern (format nil "OFFSET=~a" *offset-gc-arena-top*)) (get_local ,gc)))
    (i32.store ,(intern (format nil "OFFSET=~a" *offset-gc-arena*))
               (i32.add (get_local ,gc) (get_local ,arena-top))
               (get_local ,ptr))
    (i32.store ,(intern (format nil "OFFSET=~a" *offset-gc-arena-top*))
               (get_local ,gc)
               (i32.add (i32.const 4) (get_local ,arena-top)))))
(defwfun $gc-restore-state ((gc i32) (state i32)) nil
    `((i32.store ,(intern (format nil "OFFSET=~a" *offset-gc-arena-top*))
                 (get_local ,gc) (get_local ,state))))

(defwfun $gc--clear-marks-page ((page i32)) nil
  ;; clear the bitmaps of the page
  (loop :for i :from 0 :below *bitmap-size* :collect
       `(i64.store ,(intern (format nil "OFFSET=~a" (* i 8)))
                   (get_local ,page)
                   (i64.const 0))))
(defwfun $gc--clear-marks-pages ((current-page i32)) nil
  ;; call for $gc--clear-marks-page all the pages connected to this page
  `((loop $loop
       (if (i32.eqz (get_local ,current-page))
           (return))
       (call $gc--clear-marks-page (get_local ,current-page))
       (set_local ,current-page
                  (i32.load ,(intern (format nil "OFFSET=~a" *offset-heap-page-next*))
                            (get_local ,current-page)))
       (br $loop))))
(defwfun $gc--clear-marks ((gc i32)) nil
  ;; cal $gc--clear-marks-pages for all the size of pages
  (loop
     :for i :from 0 :below 11 :collect
       `(call $gc--clear-marks-pages
              (i32.load ,(intern (format nil "OFFSET=~a" (* i *sizeof-ptr*)))
                        (get_local ,gc)))))
(defwfun $gc--mark-data ((ptr i32)) i32
                                        ; user defined data marking function
  `((i32.const 1)))

(defun get-page (ptr)
  `(i32.and (i32.const ,(lognot(1- (ash 1 (round (log *page-size* 2))))))
            (get_local ,ptr)))

(defwfun $gc--mark-ptr
    ((ptr i32)
     &aux (page i32) (size i32) (bitmap i64) (mask i64)
     (index-in-heap i32) (index-in-array i32) (index-in-i64 i32)) i32
                                        ; mark the ptr and recursively the data
  `(
                                        ; page <- get_page(ptr)
    (set_local ,page ,(get-page ptr))
                                        ; size <- get_size(page
    (set_local ,size (i32.load ,(intern (format nil "OFFSET=~a" *offset-heap-page-data-size*))
                               (get_local ,page)))
                                        ; index <- calc index(page, ptr)
    (set_local ,index-in-heap
               (i32.div_u (i32.sub (get_local ,ptr)
                                   (i32.add (get_local,page)
                                            (i32.const ,*offset-heap-page-heap-data*)))
                          (get_local ,size)))
    (set_local ,index-in-array (i32.div_u (get_local ,index-in-heap) (i32.const 64)))
    (set_local ,index-in-i64   (i32.rem_u (get_local ,index-in-heap) (i32.const 64)))
                                        ; if (! is_marked(page, index))
    (set_local ,bitmap (i64.load ,(intern (format nil "OFFSET=~a" *offset-heap-page-bitmaps*))
                                 (i32.add (get_local ,page)
                                          (i32.mul (get_local ,index-in-array) (i32.const 8)))))
    (set_local ,mask (i64.shl (i64.const 1) (i64.extend_u/i32 (get_local ,index-in-i64))))
    (if (i64.eqz (i64.and (get_local ,bitmap) (get_local ,mask)))
                                        ;   mark(page, index)
        (block
            (i64.store ,(intern (format nil "OFFSET=~a" *offset-heap-page-bitmaps*))
                       (i32.add (get_local ,page)
                                (i32.mul (get_local ,index-in-array) (i32.const 8)))
                       (i64.or (get_local ,bitmap) (get_local ,mask)))
                                        ;   $gc--mark-data(ptr)
          (return (call $gc--mark-data (get_local ,ptr)))))
    (return (i32.const 1))))

(defwfun $gc--mark ((gc i32) &aux (arena-top i32) (i i32)) nil
  `(; for each arena data call $gc--mark-ptr
    (set_local ,arena-top (i32.load ,(intern (format nil "OFFSET=~a" *offset-gc-arena-top*))
                                    (get_local ,gc)))
    (loop $loop
       (if (i32.le_u (get_local ,arena-top) (get_local ,i))
           (return))
       (drop (call $gc--mark-ptr
                   (i32.load ,(intern (format nil "OFFSET=~a" *offset-gc-arena*))
                             (i32.add (get_local ,i) (get_local ,gc)))))
       (set_local ,i (i32.add (get_local ,i (i32.const 4))))
       (br $loop))))

(defwfun $gc-run ((gc i32)) nil
  `((call $gc--clear-marks (get_local ,gc))
    (call $gc--mark (get_local ,gc))))


;;; other utils
(defwfun $gc--allocated-data-page ((page i32) &aux (sum i32)) i32
  `(,@(loop :for i :from 0 :below *bitmap-size* :collect
           `(set_local ,sum
                       (i32.add (get_local ,sum)
                                (i32.wrap/i64
                                 (i64.popcnt (i64.load ,(intern (format nil "OFFSET=~a" (* i 8)))
                                                       (get_local ,page)))))))
      (get_local ,sum)))

(defwfun $gc--allocated-data-pages ((current-page i32) &aux (sum i32)) i32
  `((loop $loop
       (if (i32.eqz (get_local ,current-page))
           (return (get_local ,sum)))
       (set_local ,sum (i32.add (get_local ,sum)
                                (call $gc--allocated-data-page (get_local ,current-page))))
       (set_local ,current-page
                  (i32.load ,(intern (format nil "OFFSET=~a" *offset-heap-page-next*))
                            (get_local ,current-page)))
       (br $loop))
    (unreachable)))
(defwfun $gc--allocated-data ((gc i32) &aux (sum i32)) i32
  `(,@(loop
         :for i :from 0 :below 11 :collect
           `(set_local ,sum
                       (i32.add (get_local ,sum)
                                (call $gc--allocated-data-pages
                                      (i32.load ,(intern (format nil "OFFSET=~a" (* i *sizeof-ptr*)))
                                                (get_local ,gc))))))
      (get_local ,sum)))

;;; entry point

(defwfun $main (&aux (gc i32) (state i32)) nil
  `(
    ; GCデータを初期化
    (set_local ,gc (call $new-gc))
    (call $gc-init (get_local ,gc))
    ; この時点ではまだデータは0
    (call $print (call $gc--allocated-data (get_local ,gc)))
    ; 今から確保するメモリのポインタをヒープに退避する準備。多くは関数の先頭でやる
    (set_local ,state (call $gc-save-state (get_local ,gc)))
    ; 4byteのメモリを確保し、ポインタを保護
    (call $gc-protect (get_local ,gc) (call $gc-alloc (get_local ,gc) (i32.const 4)))
    (call $gc-protect (get_local ,gc) (call $gc-alloc (get_local ,gc) (i32.const 4)))
    (call $gc-protect (get_local ,gc) (call $gc-alloc (get_local ,gc) (i32.const 4)))
    ; この時点で3つデータを確保している
    (call $print (call $gc--allocated-data (get_local ,gc)))
    ; GCを走らせる
    (call $gc-run (get_local ,gc))
    ; ポインタは退避されているので回収されない
    (call $print (call $gc--allocated-data (get_local ,gc)))
    ; 退避する前の状態に戻す。多くは関数の末尾でやる
    (call $gc-restore-state (get_local ,gc) (get_local ,state))
    ; ポインタを保護してない状態でGCを走らせる
    (call $gc-run (get_local ,gc))
    ; 回収される
    (call $print (call $gc--allocated-data (get_local ,gc)))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun write-wasm (filename wasm)
  (with-open-file (f filename :direction :output :if-does-not-exist :create :if-exists :supersede)
    (print wasm f)))

(let ((wasm (append
             '(module (func $print (import "imports" "print") (param i32)))
             (reverse *wasm-funs*)
             '((start $main)
               (memory 1 10)))))
  (write-wasm "gc.wat" wasm)
  (uiop:run-program "~/compile/wabt/build/wast2wasm gc.wat -o gc.wasm"))
