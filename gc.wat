
(module (func $print (import "imports" "print") (param i32))
 (func $new-page (result i32)
  (i32.mul (i32.const 65536) (grow_memory (i32.const 1))))
 (func $new-gc (result i32) (call $new-page))
 (func $gc-init (param i32) (i32.store offset=0 (get_local 0) (i32.const 0))
  (i32.store offset=4 (get_local 0) (i32.const 0))
  (i32.store offset=8 (get_local 0) (i32.const 0))
  (i32.store offset=12 (get_local 0) (i32.const 0))
  (i32.store offset=16 (get_local 0) (i32.const 0))
  (i32.store offset=20 (get_local 0) (i32.const 0))
  (i32.store offset=24 (get_local 0) (i32.const 0))
  (i32.store offset=28 (get_local 0) (i32.const 0))
  (i32.store offset=32 (get_local 0) (i32.const 0))
  (i32.store offset=36 (get_local 0) (i32.const 0))
  (i32.store offset=40 (get_local 0) (i32.const 0))
  (i32.store offset=44 (get_local 0) (i32.const 0))
  (i32.store offset=48 (get_local 0) (i32.const 16371)))
 (func $new-heap-page (result i32) (call $new-page))
 (func $init-heap-page (param i32 i32)
  (i64.store offset=0 (get_local 0) (i64.const 0))
  (i64.store offset=8 (get_local 0) (i64.const 0))
  (i64.store offset=16 (get_local 0) (i64.const 0))
  (i64.store offset=24 (get_local 0) (i64.const 0))
  (i64.store offset=32 (get_local 0) (i64.const 0))
  (i64.store offset=40 (get_local 0) (i64.const 0))
  (i64.store offset=48 (get_local 0) (i64.const 0))
  (i64.store offset=56 (get_local 0) (i64.const 0))
  (i64.store offset=64 (get_local 0) (i64.const 0))
  (i64.store offset=72 (get_local 0) (i64.const 0))
  (i64.store offset=80 (get_local 0) (i64.const 0))
  (i64.store offset=88 (get_local 0) (i64.const 0))
  (i64.store offset=96 (get_local 0) (i64.const 0))
  (i64.store offset=104 (get_local 0) (i64.const 0))
  (i64.store offset=112 (get_local 0) (i64.const 0))
  (i64.store offset=120 (get_local 0) (i64.const 0))
  (i64.store offset=128 (get_local 0) (i64.const 0))
  (i64.store offset=136 (get_local 0) (i64.const 0))
  (i64.store offset=144 (get_local 0) (i64.const 0))
  (i64.store offset=152 (get_local 0) (i64.const 0))
  (i64.store offset=160 (get_local 0) (i64.const 0))
  (i64.store offset=168 (get_local 0) (i64.const 0))
  (i64.store offset=176 (get_local 0) (i64.const 0))
  (i64.store offset=184 (get_local 0) (i64.const 0))
  (i64.store offset=192 (get_local 0) (i64.const 0))
  (i64.store offset=200 (get_local 0) (i64.const 0))
  (i64.store offset=208 (get_local 0) (i64.const 0))
  (i64.store offset=216 (get_local 0) (i64.const 0))
  (i64.store offset=224 (get_local 0) (i64.const 0))
  (i64.store offset=232 (get_local 0) (i64.const 0))
  (i64.store offset=240 (get_local 0) (i64.const 0))
  (i64.store offset=248 (get_local 0) (i64.const 0))
  (i64.store offset=256 (get_local 0) (i64.const 0))
  (i64.store offset=264 (get_local 0) (i64.const 0))
  (i64.store offset=272 (get_local 0) (i64.const 0))
  (i64.store offset=280 (get_local 0) (i64.const 0))
  (i64.store offset=288 (get_local 0) (i64.const 0))
  (i64.store offset=296 (get_local 0) (i64.const 0))
  (i64.store offset=304 (get_local 0) (i64.const 0))
  (i64.store offset=312 (get_local 0) (i64.const 0))
  (i64.store offset=320 (get_local 0) (i64.const 0))
  (i64.store offset=328 (get_local 0) (i64.const 0))
  (i64.store offset=336 (get_local 0) (i64.const 0))
  (i64.store offset=344 (get_local 0) (i64.const 0))
  (i64.store offset=352 (get_local 0) (i64.const 0))
  (i64.store offset=360 (get_local 0) (i64.const 0))
  (i64.store offset=368 (get_local 0) (i64.const 0))
  (i64.store offset=376 (get_local 0) (i64.const 0))
  (i64.store offset=384 (get_local 0) (i64.const 0))
  (i64.store offset=392 (get_local 0) (i64.const 0))
  (i64.store offset=400 (get_local 0) (i64.const 0))
  (i64.store offset=408 (get_local 0) (i64.const 0))
  (i64.store offset=416 (get_local 0) (i64.const 0))
  (i64.store offset=424 (get_local 0) (i64.const 0))
  (i64.store offset=432 (get_local 0) (i64.const 0))
  (i64.store offset=440 (get_local 0) (i64.const 0))
  (i64.store offset=448 (get_local 0) (i64.const 0))
  (i64.store offset=456 (get_local 0) (i64.const 0))
  (i64.store offset=464 (get_local 0) (i64.const 0))
  (i64.store offset=472 (get_local 0) (i64.const 0))
  (i64.store offset=480 (get_local 0) (i64.const 0))
  (i64.store offset=488 (get_local 0) (i64.const 0))
  (i64.store offset=496 (get_local 0) (i64.const 0))
  (i64.store offset=504 (get_local 0) (i64.const 0))
  (i64.store offset=512 (get_local 0) (i64.const 0))
  (i64.store offset=520 (get_local 0) (i64.const 0))
  (i64.store offset=528 (get_local 0) (i64.const 0))
  (i64.store offset=536 (get_local 0) (i64.const 0))
  (i64.store offset=544 (get_local 0) (i64.const 0))
  (i64.store offset=552 (get_local 0) (i64.const 0))
  (i64.store offset=560 (get_local 0) (i64.const 0))
  (i64.store offset=568 (get_local 0) (i64.const 0))
  (i64.store offset=576 (get_local 0) (i64.const 0))
  (i64.store offset=584 (get_local 0) (i64.const 0))
  (i64.store offset=592 (get_local 0) (i64.const 0))
  (i64.store offset=600 (get_local 0) (i64.const 0))
  (i64.store offset=608 (get_local 0) (i64.const 0))
  (i64.store offset=616 (get_local 0) (i64.const 0))
  (i64.store offset=624 (get_local 0) (i64.const 0))
  (i64.store offset=632 (get_local 0) (i64.const 0))
  (i64.store offset=640 (get_local 0) (i64.const 0))
  (i64.store offset=648 (get_local 0) (i64.const 0))
  (i64.store offset=656 (get_local 0) (i64.const 0))
  (i64.store offset=664 (get_local 0) (i64.const 0))
  (i64.store offset=672 (get_local 0) (i64.const 0))
  (i64.store offset=680 (get_local 0) (i64.const 0))
  (i64.store offset=688 (get_local 0) (i64.const 0))
  (i64.store offset=696 (get_local 0) (i64.const 0))
  (i64.store offset=704 (get_local 0) (i64.const 0))
  (i64.store offset=712 (get_local 0) (i64.const 0))
  (i64.store offset=720 (get_local 0) (i64.const 0))
  (i64.store offset=728 (get_local 0) (i64.const 0))
  (i64.store offset=736 (get_local 0) (i64.const 0))
  (i64.store offset=744 (get_local 0) (i64.const 0))
  (i64.store offset=752 (get_local 0) (i64.const 0))
  (i64.store offset=760 (get_local 0) (i64.const 0))
  (i64.store offset=768 (get_local 0) (i64.const 0))
  (i64.store offset=776 (get_local 0) (i64.const 0))
  (i64.store offset=784 (get_local 0) (i64.const 0))
  (i64.store offset=792 (get_local 0) (i64.const 0))
  (i64.store offset=800 (get_local 0) (i64.const 0))
  (i64.store offset=808 (get_local 0) (i64.const 0))
  (i64.store offset=816 (get_local 0) (i64.const 0))
  (i64.store offset=824 (get_local 0) (i64.const 0))
  (i64.store offset=832 (get_local 0) (i64.const 0))
  (i64.store offset=840 (get_local 0) (i64.const 0))
  (i64.store offset=848 (get_local 0) (i64.const 0))
  (i64.store offset=856 (get_local 0) (i64.const 0))
  (i64.store offset=864 (get_local 0) (i64.const 0))
  (i64.store offset=872 (get_local 0) (i64.const 0))
  (i64.store offset=880 (get_local 0) (i64.const 0))
  (i64.store offset=888 (get_local 0) (i64.const 0))
  (i64.store offset=896 (get_local 0) (i64.const 0))
  (i64.store offset=904 (get_local 0) (i64.const 0))
  (i64.store offset=912 (get_local 0) (i64.const 0))
  (i64.store offset=920 (get_local 0) (i64.const 0))
  (i64.store offset=928 (get_local 0) (i64.const 0))
  (i64.store offset=936 (get_local 0) (i64.const 0))
  (i64.store offset=944 (get_local 0) (i64.const 0))
  (i64.store offset=952 (get_local 0) (i64.const 0))
  (i64.store offset=960 (get_local 0) (i64.const 0))
  (i64.store offset=968 (get_local 0) (i64.const 0))
  (i64.store offset=976 (get_local 0) (i64.const 0))
  (i64.store offset=984 (get_local 0) (i64.const 0))
  (i64.store offset=992 (get_local 0) (i64.const 0))
  (i64.store offset=1000 (get_local 0) (i64.const 0))
  (i64.store offset=1008 (get_local 0) (i64.const 0))
  (i64.store offset=1016 (get_local 0) (i64.const 0))
  (i64.store offset=1024 (get_local 0) (i64.const 0))
  (i64.store offset=1032 (get_local 0) (i64.const 0))
  (i64.store offset=1040 (get_local 0) (i64.const 0))
  (i64.store offset=1048 (get_local 0) (i64.const 0))
  (i64.store offset=1056 (get_local 0) (i64.const 0))
  (i64.store offset=1064 (get_local 0) (i64.const 0))
  (i64.store offset=1072 (get_local 0) (i64.const 0))
  (i64.store offset=1080 (get_local 0) (i64.const 0))
  (i64.store offset=1088 (get_local 0) (i64.const 0))
  (i64.store offset=1096 (get_local 0) (i64.const 0))
  (i64.store offset=1104 (get_local 0) (i64.const 0))
  (i64.store offset=1112 (get_local 0) (i64.const 0))
  (i64.store offset=1120 (get_local 0) (i64.const 0))
  (i64.store offset=1128 (get_local 0) (i64.const 0))
  (i64.store offset=1136 (get_local 0) (i64.const 0))
  (i64.store offset=1144 (get_local 0) (i64.const 0))
  (i64.store offset=1152 (get_local 0) (i64.const 0))
  (i64.store offset=1160 (get_local 0) (i64.const 0))
  (i64.store offset=1168 (get_local 0) (i64.const 0))
  (i64.store offset=1176 (get_local 0) (i64.const 0))
  (i64.store offset=1184 (get_local 0) (i64.const 0))
  (i64.store offset=1192 (get_local 0) (i64.const 0))
  (i64.store offset=1200 (get_local 0) (i64.const 0))
  (i64.store offset=1208 (get_local 0) (i64.const 0))
  (i64.store offset=1216 (get_local 0) (i64.const 0))
  (i64.store offset=1224 (get_local 0) (i64.const 0))
  (i64.store offset=1232 (get_local 0) (i64.const 0))
  (i64.store offset=1240 (get_local 0) (i64.const 0))
  (i64.store offset=1248 (get_local 0) (i64.const 0))
  (i64.store offset=1256 (get_local 0) (i64.const 0))
  (i64.store offset=1264 (get_local 0) (i64.const 0))
  (i64.store offset=1272 (get_local 0) (i64.const 0))
  (i64.store offset=1280 (get_local 0) (i64.const 0))
  (i64.store offset=1288 (get_local 0) (i64.const 0))
  (i64.store offset=1296 (get_local 0) (i64.const 0))
  (i64.store offset=1304 (get_local 0) (i64.const 0))
  (i64.store offset=1312 (get_local 0) (i64.const 0))
  (i64.store offset=1320 (get_local 0) (i64.const 0))
  (i64.store offset=1328 (get_local 0) (i64.const 0))
  (i64.store offset=1336 (get_local 0) (i64.const 0))
  (i64.store offset=1344 (get_local 0) (i64.const 0))
  (i64.store offset=1352 (get_local 0) (i64.const 0))
  (i64.store offset=1360 (get_local 0) (i64.const 0))
  (i64.store offset=1368 (get_local 0) (i64.const 0))
  (i64.store offset=1376 (get_local 0) (i64.const 0))
  (i64.store offset=1384 (get_local 0) (i64.const 0))
  (i64.store offset=1392 (get_local 0) (i64.const 0))
  (i64.store offset=1400 (get_local 0) (i64.const 0))
  (i64.store offset=1408 (get_local 0) (i64.const 0))
  (i64.store offset=1416 (get_local 0) (i64.const 0))
  (i64.store offset=1424 (get_local 0) (i64.const 0))
  (i64.store offset=1432 (get_local 0) (i64.const 0))
  (i64.store offset=1440 (get_local 0) (i64.const 0))
  (i64.store offset=1448 (get_local 0) (i64.const 0))
  (i64.store offset=1456 (get_local 0) (i64.const 0))
  (i64.store offset=1464 (get_local 0) (i64.const 0))
  (i64.store offset=1472 (get_local 0) (i64.const 0))
  (i64.store offset=1480 (get_local 0) (i64.const 0))
  (i64.store offset=1488 (get_local 0) (i64.const 0))
  (i64.store offset=1496 (get_local 0) (i64.const 0))
  (i64.store offset=1504 (get_local 0) (i64.const 0))
  (i64.store offset=1512 (get_local 0) (i64.const 0))
  (i64.store offset=1520 (get_local 0) (i64.const 0))
  (i64.store offset=1528 (get_local 0) (i64.const 0))
  (i64.store offset=1536 (get_local 0) (i64.const 0))
  (i64.store offset=1544 (get_local 0) (i64.const 0))
  (i64.store offset=1552 (get_local 0) (i64.const 0))
  (i64.store offset=1560 (get_local 0) (i64.const 0))
  (i64.store offset=1568 (get_local 0) (i64.const 0))
  (i64.store offset=1576 (get_local 0) (i64.const 0))
  (i64.store offset=1584 (get_local 0) (i64.const 0))
  (i64.store offset=1592 (get_local 0) (i64.const 0))
  (i64.store offset=1600 (get_local 0) (i64.const 0))
  (i64.store offset=1608 (get_local 0) (i64.const 0))
  (i64.store offset=1616 (get_local 0) (i64.const 0))
  (i64.store offset=1624 (get_local 0) (i64.const 0))
  (i64.store offset=1632 (get_local 0) (i64.const 0))
  (i64.store offset=1640 (get_local 0) (i64.const 0))
  (i64.store offset=1648 (get_local 0) (i64.const 0))
  (i64.store offset=1656 (get_local 0) (i64.const 0))
  (i64.store offset=1664 (get_local 0) (i64.const 0))
  (i64.store offset=1672 (get_local 0) (i64.const 0))
  (i64.store offset=1680 (get_local 0) (i64.const 0))
  (i64.store offset=1688 (get_local 0) (i64.const 0))
  (i64.store offset=1696 (get_local 0) (i64.const 0))
  (i64.store offset=1704 (get_local 0) (i64.const 0))
  (i64.store offset=1712 (get_local 0) (i64.const 0))
  (i64.store offset=1720 (get_local 0) (i64.const 0))
  (i64.store offset=1728 (get_local 0) (i64.const 0))
  (i64.store offset=1736 (get_local 0) (i64.const 0))
  (i64.store offset=1744 (get_local 0) (i64.const 0))
  (i64.store offset=1752 (get_local 0) (i64.const 0))
  (i64.store offset=1760 (get_local 0) (i64.const 0))
  (i64.store offset=1768 (get_local 0) (i64.const 0))
  (i64.store offset=1776 (get_local 0) (i64.const 0))
  (i64.store offset=1784 (get_local 0) (i64.const 0))
  (i64.store offset=1792 (get_local 0) (i64.const 0))
  (i64.store offset=1800 (get_local 0) (i64.const 0))
  (i64.store offset=1808 (get_local 0) (i64.const 0))
  (i64.store offset=1816 (get_local 0) (i64.const 0))
  (i64.store offset=1824 (get_local 0) (i64.const 0))
  (i64.store offset=1832 (get_local 0) (i64.const 0))
  (i64.store offset=1840 (get_local 0) (i64.const 0))
  (i64.store offset=1848 (get_local 0) (i64.const 0))
  (i64.store offset=1856 (get_local 0) (i64.const 0))
  (i64.store offset=1864 (get_local 0) (i64.const 0))
  (i64.store offset=1872 (get_local 0) (i64.const 0))
  (i64.store offset=1880 (get_local 0) (i64.const 0))
  (i64.store offset=1888 (get_local 0) (i64.const 0))
  (i64.store offset=1896 (get_local 0) (i64.const 0))
  (i64.store offset=1904 (get_local 0) (i64.const 0))
  (i64.store offset=1912 (get_local 0) (i64.const 0))
  (i64.store offset=1920 (get_local 0) (i64.const 0))
  (i64.store offset=1928 (get_local 0) (i64.const 0))
  (i64.store offset=1936 (get_local 0) (i64.const 0))
  (i64.store offset=1944 (get_local 0) (i64.const 0))
  (i64.store offset=1952 (get_local 0) (i64.const 0))
  (i64.store offset=1960 (get_local 0) (i64.const 0))
  (i64.store offset=1968 (get_local 0) (i64.const 0))
  (i64.store offset=1976 (get_local 0) (i64.const 0))
  (i64.store offset=1984 (get_local 0) (i64.const 0))
  (i64.store offset=1992 (get_local 0) (i64.const 0))
  (i64.store offset=2000 (get_local 0) (i64.const 0))
  (i64.store offset=2008 (get_local 0) (i64.const 0))
  (i64.store offset=2016 (get_local 0) (i64.const 0))
  (i64.store offset=2024 (get_local 0) (i64.const 0))
  (i64.store offset=2032 (get_local 0) (i64.const 0))
  (i64.store offset=2040 (get_local 0) (i64.const 0))
  (i32.store offset=2048 (get_local 0) (i32.const 0))
  (i32.store offset=2052 (get_local 0) (get_local 1))
  (i32.store offset=2056 (get_local 0)
   (i32.div_u (i32.const 63480) (get_local 1))))
 (func $gc--append-heap-page (param i32 i32 i32) (local i32 i32 i32)
  (set_local 3
   (i32.mul (i32.const 4)
    (if i32
        (i32.le_u (get_local 2) (i32.const 128))
        (if i32
            (i32.le_u (get_local 2) (i32.const 8))
            (if i32
                (i32.le_u (get_local 2) (i32.const 4))
                (i32.const 0)
                (i32.const 1))
            (if i32
                (i32.le_u (get_local 2) (i32.const 32))
                (if i32
                    (i32.le_u (get_local 2) (i32.const 16))
                    (i32.const 2)
                    (i32.const 3))
                (if i32
                    (i32.le_u (get_local 2) (i32.const 64))
                    (i32.const 4)
                    (i32.const 5))))
        (if i32
            (i32.le_u (get_local 2) (i32.const 1024))
            (if i32
                (i32.le_u (get_local 2) (i32.const 512))
                (if i32
                    (i32.le_u (get_local 2) (i32.const 256))
                    (i32.const 6)
                    (i32.const 7))
                (i32.const 8))
            (if i32
                (i32.le_u (get_local 2) (i32.const 2048))
                (i32.const 9)
                (if i32
                    (i32.le_u (get_local 2) (i32.const 4096))
                    (i32.const 10)
                    (unreachable)))))))
  (set_local 4 (i32.load offset=0 (i32.add (get_local 0) (get_local 3))))
  (if (i32.eqz (get_local 4))
      (i32.store offset=0 (i32.add (get_local 0) (get_local 3)) (get_local 1))
      (loop $loop (set_local 5
                   (i32.load offset=2048 (get_local 4))) (if (i32.eqz
                                                              (get_local 5))
                                                             (block
                                                                 (i32.store
                                                                  offset=2048
                                                                  (get_local 4)
                                                                  (get_local
                                                                   1))
                                                               (return))
                                                             (set_local 4
                                                              (get_local
                                                               5))) (br
                                                                     $loop))))
 (func $gc-extend-heap-page (param i32 i32) (local i32)
  (set_local 2 (call $new-heap-page))
  (call $init-heap-page (get_local 2) (get_local 1))
  (call $gc--append-heap-page (get_local 0) (get_local 2) (get_local 1)))
 (func $gc--alloc-page (param i32 i32) (result i32) (local i64 i32 i32 i32)
  (block $outer
    (loop $loop (if (i32.le_u (i32.const 256) (get_local 3))
                    (br $outer)) (set_local 2
                                  (i64.load offset=0
                                   (i32.add (get_local 0)
                                    (get_local 3)))) (if (i64.eq (i64.const -1)
                                                          (get_local 2))
                                                         (br $loop)) (set_local
                                                                      4
                                                                      (i32.wrap/i64
                                                                       (i64.ctz
                                                                        (i64.sub
                                                                         (i64.const
                                                                          -1)
                                                                         (get_local
                                                                          2))))) (set_local
                                                                                  5
                                                                                  (i32.add
                                                                                   (i32.mul
                                                                                    (get_local
                                                                                     3)
                                                                                    (i32.const
                                                                                     64))
                                                                                   (get_local
                                                                                    4))) (if (i32.le_u
                                                                                              (i32.load
                                                                                               offset=2056
                                                                                               (get_local
                                                                                                0))
                                                                                              (get_local
                                                                                               5))
                                                                                             (return
                                                                                              (i32.const
                                                                                               0))
                                                                                             (block
                                                                                                 (i64.store
                                                                                                  offset=0
                                                                                                  (i32.add
                                                                                                   (get_local
                                                                                                    0)
                                                                                                   (get_local
                                                                                                    3))
                                                                                                  (i64.or
                                                                                                   (get_local
                                                                                                    2)
                                                                                                   (i64.shl
                                                                                                    (i64.const
                                                                                                     1)
                                                                                                    (i64.extend_u/i32
                                                                                                     (get_local
                                                                                                      4)))))
                                                                                               (return
                                                                                                (i32.add
                                                                                                 (i32.add
                                                                                                  (get_local
                                                                                                   0)
                                                                                                  (i32.const
                                                                                                   2060))
                                                                                                 (i32.mul
                                                                                                  (get_local
                                                                                                   5)
                                                                                                  (get_local
                                                                                                   1)))))) (br
                                                                                                            $loop)))
  (i32.const 0))
 (func $gc--alloc-pages (param i32 i32) (result i32) (local i32)
  (loop $loop (if (i32.eqz (get_local 0))
                  (return (i32.const 0))) (if (i32.eqz
                                               (tee_local 2
                                                (call $gc--alloc-page
                                                 (get_local 0) (get_local 1))))
                                              (set_local 2
                                               (i32.load offset=2048
                                                (get_local 0)))
                                              (return (get_local 2))) (br
                                                                       $loop))
  (unreachable))
 (func $gc--alloc (param i32 i32) (result i32) (local i32 i32)
  (set_local 3
   (if i32
       (i32.le_u (get_local 1) (i32.const 128))
       (if i32
           (i32.le_u (get_local 1) (i32.const 8))
           (if i32
               (i32.le_u (get_local 1) (i32.const 4))
               (i32.const 0)
               (i32.const 1))
           (if i32
               (i32.le_u (get_local 1) (i32.const 32))
               (if i32
                   (i32.le_u (get_local 1) (i32.const 16))
                   (i32.const 2)
                   (i32.const 3))
               (if i32
                   (i32.le_u (get_local 1) (i32.const 64))
                   (i32.const 4)
                   (i32.const 5))))
       (if i32
           (i32.le_u (get_local 1) (i32.const 1024))
           (if i32
               (i32.le_u (get_local 1) (i32.const 512))
               (if i32
                   (i32.le_u (get_local 1) (i32.const 256))
                   (i32.const 6)
                   (i32.const 7))
               (i32.const 8))
           (if i32
               (i32.le_u (get_local 1) (i32.const 2048))
               (i32.const 9)
               (if i32
                   (i32.le_u (get_local 1) (i32.const 4096))
                   (i32.const 10)
                   (unreachable))))))
  (set_local 2 (i32.load offset=0 (i32.add (get_local 0) (get_local 3))))
  (call $gc--alloc-pages (get_local 2) (get_local 1)))
 (func $gc-alloc (param i32 i32) (result i32) (local i32 i32)
  (if (i32.eqz (tee_local 3 (call $gc--alloc (get_local 0) (get_local 1))))
      (block (call $gc-run (get_local 0))
        (if (i32.eqz
             (tee_local 3 (call $gc--alloc (get_local 0) (get_local 1))))
            (block (set_local 2 (get_local 1))
              (call $gc-extend-heap-page (get_local 0) (get_local 2))
              (if (i32.eqz
                   (tee_local 3 (call $gc--alloc (get_local 0) (get_local 1))))
                  (unreachable))))))
  (get_local 3))
 (func $gc-save-state (param i32) (result i32)
  (i32.load offset=44 (get_local 0)))
 (func $gc-protect (param i32 i32) (local i32)
  (set_local 2 (i32.load offset=44 (get_local 0)))
  (i32.store offset=52 (i32.add (get_local 0) (get_local 2)) (get_local 1))
  (i32.store offset=44 (get_local 0) (i32.add (i32.const 4) (get_local 2))))
 (func $gc-restore-state (param i32 i32)
  (i32.store offset=44 (get_local 0) (get_local 1)))
 (func $gc--clear-marks-page (param i32)
  (i64.store offset=0 (get_local 0) (i64.const 0))
  (i64.store offset=8 (get_local 0) (i64.const 0))
  (i64.store offset=16 (get_local 0) (i64.const 0))
  (i64.store offset=24 (get_local 0) (i64.const 0))
  (i64.store offset=32 (get_local 0) (i64.const 0))
  (i64.store offset=40 (get_local 0) (i64.const 0))
  (i64.store offset=48 (get_local 0) (i64.const 0))
  (i64.store offset=56 (get_local 0) (i64.const 0))
  (i64.store offset=64 (get_local 0) (i64.const 0))
  (i64.store offset=72 (get_local 0) (i64.const 0))
  (i64.store offset=80 (get_local 0) (i64.const 0))
  (i64.store offset=88 (get_local 0) (i64.const 0))
  (i64.store offset=96 (get_local 0) (i64.const 0))
  (i64.store offset=104 (get_local 0) (i64.const 0))
  (i64.store offset=112 (get_local 0) (i64.const 0))
  (i64.store offset=120 (get_local 0) (i64.const 0))
  (i64.store offset=128 (get_local 0) (i64.const 0))
  (i64.store offset=136 (get_local 0) (i64.const 0))
  (i64.store offset=144 (get_local 0) (i64.const 0))
  (i64.store offset=152 (get_local 0) (i64.const 0))
  (i64.store offset=160 (get_local 0) (i64.const 0))
  (i64.store offset=168 (get_local 0) (i64.const 0))
  (i64.store offset=176 (get_local 0) (i64.const 0))
  (i64.store offset=184 (get_local 0) (i64.const 0))
  (i64.store offset=192 (get_local 0) (i64.const 0))
  (i64.store offset=200 (get_local 0) (i64.const 0))
  (i64.store offset=208 (get_local 0) (i64.const 0))
  (i64.store offset=216 (get_local 0) (i64.const 0))
  (i64.store offset=224 (get_local 0) (i64.const 0))
  (i64.store offset=232 (get_local 0) (i64.const 0))
  (i64.store offset=240 (get_local 0) (i64.const 0))
  (i64.store offset=248 (get_local 0) (i64.const 0))
  (i64.store offset=256 (get_local 0) (i64.const 0))
  (i64.store offset=264 (get_local 0) (i64.const 0))
  (i64.store offset=272 (get_local 0) (i64.const 0))
  (i64.store offset=280 (get_local 0) (i64.const 0))
  (i64.store offset=288 (get_local 0) (i64.const 0))
  (i64.store offset=296 (get_local 0) (i64.const 0))
  (i64.store offset=304 (get_local 0) (i64.const 0))
  (i64.store offset=312 (get_local 0) (i64.const 0))
  (i64.store offset=320 (get_local 0) (i64.const 0))
  (i64.store offset=328 (get_local 0) (i64.const 0))
  (i64.store offset=336 (get_local 0) (i64.const 0))
  (i64.store offset=344 (get_local 0) (i64.const 0))
  (i64.store offset=352 (get_local 0) (i64.const 0))
  (i64.store offset=360 (get_local 0) (i64.const 0))
  (i64.store offset=368 (get_local 0) (i64.const 0))
  (i64.store offset=376 (get_local 0) (i64.const 0))
  (i64.store offset=384 (get_local 0) (i64.const 0))
  (i64.store offset=392 (get_local 0) (i64.const 0))
  (i64.store offset=400 (get_local 0) (i64.const 0))
  (i64.store offset=408 (get_local 0) (i64.const 0))
  (i64.store offset=416 (get_local 0) (i64.const 0))
  (i64.store offset=424 (get_local 0) (i64.const 0))
  (i64.store offset=432 (get_local 0) (i64.const 0))
  (i64.store offset=440 (get_local 0) (i64.const 0))
  (i64.store offset=448 (get_local 0) (i64.const 0))
  (i64.store offset=456 (get_local 0) (i64.const 0))
  (i64.store offset=464 (get_local 0) (i64.const 0))
  (i64.store offset=472 (get_local 0) (i64.const 0))
  (i64.store offset=480 (get_local 0) (i64.const 0))
  (i64.store offset=488 (get_local 0) (i64.const 0))
  (i64.store offset=496 (get_local 0) (i64.const 0))
  (i64.store offset=504 (get_local 0) (i64.const 0))
  (i64.store offset=512 (get_local 0) (i64.const 0))
  (i64.store offset=520 (get_local 0) (i64.const 0))
  (i64.store offset=528 (get_local 0) (i64.const 0))
  (i64.store offset=536 (get_local 0) (i64.const 0))
  (i64.store offset=544 (get_local 0) (i64.const 0))
  (i64.store offset=552 (get_local 0) (i64.const 0))
  (i64.store offset=560 (get_local 0) (i64.const 0))
  (i64.store offset=568 (get_local 0) (i64.const 0))
  (i64.store offset=576 (get_local 0) (i64.const 0))
  (i64.store offset=584 (get_local 0) (i64.const 0))
  (i64.store offset=592 (get_local 0) (i64.const 0))
  (i64.store offset=600 (get_local 0) (i64.const 0))
  (i64.store offset=608 (get_local 0) (i64.const 0))
  (i64.store offset=616 (get_local 0) (i64.const 0))
  (i64.store offset=624 (get_local 0) (i64.const 0))
  (i64.store offset=632 (get_local 0) (i64.const 0))
  (i64.store offset=640 (get_local 0) (i64.const 0))
  (i64.store offset=648 (get_local 0) (i64.const 0))
  (i64.store offset=656 (get_local 0) (i64.const 0))
  (i64.store offset=664 (get_local 0) (i64.const 0))
  (i64.store offset=672 (get_local 0) (i64.const 0))
  (i64.store offset=680 (get_local 0) (i64.const 0))
  (i64.store offset=688 (get_local 0) (i64.const 0))
  (i64.store offset=696 (get_local 0) (i64.const 0))
  (i64.store offset=704 (get_local 0) (i64.const 0))
  (i64.store offset=712 (get_local 0) (i64.const 0))
  (i64.store offset=720 (get_local 0) (i64.const 0))
  (i64.store offset=728 (get_local 0) (i64.const 0))
  (i64.store offset=736 (get_local 0) (i64.const 0))
  (i64.store offset=744 (get_local 0) (i64.const 0))
  (i64.store offset=752 (get_local 0) (i64.const 0))
  (i64.store offset=760 (get_local 0) (i64.const 0))
  (i64.store offset=768 (get_local 0) (i64.const 0))
  (i64.store offset=776 (get_local 0) (i64.const 0))
  (i64.store offset=784 (get_local 0) (i64.const 0))
  (i64.store offset=792 (get_local 0) (i64.const 0))
  (i64.store offset=800 (get_local 0) (i64.const 0))
  (i64.store offset=808 (get_local 0) (i64.const 0))
  (i64.store offset=816 (get_local 0) (i64.const 0))
  (i64.store offset=824 (get_local 0) (i64.const 0))
  (i64.store offset=832 (get_local 0) (i64.const 0))
  (i64.store offset=840 (get_local 0) (i64.const 0))
  (i64.store offset=848 (get_local 0) (i64.const 0))
  (i64.store offset=856 (get_local 0) (i64.const 0))
  (i64.store offset=864 (get_local 0) (i64.const 0))
  (i64.store offset=872 (get_local 0) (i64.const 0))
  (i64.store offset=880 (get_local 0) (i64.const 0))
  (i64.store offset=888 (get_local 0) (i64.const 0))
  (i64.store offset=896 (get_local 0) (i64.const 0))
  (i64.store offset=904 (get_local 0) (i64.const 0))
  (i64.store offset=912 (get_local 0) (i64.const 0))
  (i64.store offset=920 (get_local 0) (i64.const 0))
  (i64.store offset=928 (get_local 0) (i64.const 0))
  (i64.store offset=936 (get_local 0) (i64.const 0))
  (i64.store offset=944 (get_local 0) (i64.const 0))
  (i64.store offset=952 (get_local 0) (i64.const 0))
  (i64.store offset=960 (get_local 0) (i64.const 0))
  (i64.store offset=968 (get_local 0) (i64.const 0))
  (i64.store offset=976 (get_local 0) (i64.const 0))
  (i64.store offset=984 (get_local 0) (i64.const 0))
  (i64.store offset=992 (get_local 0) (i64.const 0))
  (i64.store offset=1000 (get_local 0) (i64.const 0))
  (i64.store offset=1008 (get_local 0) (i64.const 0))
  (i64.store offset=1016 (get_local 0) (i64.const 0))
  (i64.store offset=1024 (get_local 0) (i64.const 0))
  (i64.store offset=1032 (get_local 0) (i64.const 0))
  (i64.store offset=1040 (get_local 0) (i64.const 0))
  (i64.store offset=1048 (get_local 0) (i64.const 0))
  (i64.store offset=1056 (get_local 0) (i64.const 0))
  (i64.store offset=1064 (get_local 0) (i64.const 0))
  (i64.store offset=1072 (get_local 0) (i64.const 0))
  (i64.store offset=1080 (get_local 0) (i64.const 0))
  (i64.store offset=1088 (get_local 0) (i64.const 0))
  (i64.store offset=1096 (get_local 0) (i64.const 0))
  (i64.store offset=1104 (get_local 0) (i64.const 0))
  (i64.store offset=1112 (get_local 0) (i64.const 0))
  (i64.store offset=1120 (get_local 0) (i64.const 0))
  (i64.store offset=1128 (get_local 0) (i64.const 0))
  (i64.store offset=1136 (get_local 0) (i64.const 0))
  (i64.store offset=1144 (get_local 0) (i64.const 0))
  (i64.store offset=1152 (get_local 0) (i64.const 0))
  (i64.store offset=1160 (get_local 0) (i64.const 0))
  (i64.store offset=1168 (get_local 0) (i64.const 0))
  (i64.store offset=1176 (get_local 0) (i64.const 0))
  (i64.store offset=1184 (get_local 0) (i64.const 0))
  (i64.store offset=1192 (get_local 0) (i64.const 0))
  (i64.store offset=1200 (get_local 0) (i64.const 0))
  (i64.store offset=1208 (get_local 0) (i64.const 0))
  (i64.store offset=1216 (get_local 0) (i64.const 0))
  (i64.store offset=1224 (get_local 0) (i64.const 0))
  (i64.store offset=1232 (get_local 0) (i64.const 0))
  (i64.store offset=1240 (get_local 0) (i64.const 0))
  (i64.store offset=1248 (get_local 0) (i64.const 0))
  (i64.store offset=1256 (get_local 0) (i64.const 0))
  (i64.store offset=1264 (get_local 0) (i64.const 0))
  (i64.store offset=1272 (get_local 0) (i64.const 0))
  (i64.store offset=1280 (get_local 0) (i64.const 0))
  (i64.store offset=1288 (get_local 0) (i64.const 0))
  (i64.store offset=1296 (get_local 0) (i64.const 0))
  (i64.store offset=1304 (get_local 0) (i64.const 0))
  (i64.store offset=1312 (get_local 0) (i64.const 0))
  (i64.store offset=1320 (get_local 0) (i64.const 0))
  (i64.store offset=1328 (get_local 0) (i64.const 0))
  (i64.store offset=1336 (get_local 0) (i64.const 0))
  (i64.store offset=1344 (get_local 0) (i64.const 0))
  (i64.store offset=1352 (get_local 0) (i64.const 0))
  (i64.store offset=1360 (get_local 0) (i64.const 0))
  (i64.store offset=1368 (get_local 0) (i64.const 0))
  (i64.store offset=1376 (get_local 0) (i64.const 0))
  (i64.store offset=1384 (get_local 0) (i64.const 0))
  (i64.store offset=1392 (get_local 0) (i64.const 0))
  (i64.store offset=1400 (get_local 0) (i64.const 0))
  (i64.store offset=1408 (get_local 0) (i64.const 0))
  (i64.store offset=1416 (get_local 0) (i64.const 0))
  (i64.store offset=1424 (get_local 0) (i64.const 0))
  (i64.store offset=1432 (get_local 0) (i64.const 0))
  (i64.store offset=1440 (get_local 0) (i64.const 0))
  (i64.store offset=1448 (get_local 0) (i64.const 0))
  (i64.store offset=1456 (get_local 0) (i64.const 0))
  (i64.store offset=1464 (get_local 0) (i64.const 0))
  (i64.store offset=1472 (get_local 0) (i64.const 0))
  (i64.store offset=1480 (get_local 0) (i64.const 0))
  (i64.store offset=1488 (get_local 0) (i64.const 0))
  (i64.store offset=1496 (get_local 0) (i64.const 0))
  (i64.store offset=1504 (get_local 0) (i64.const 0))
  (i64.store offset=1512 (get_local 0) (i64.const 0))
  (i64.store offset=1520 (get_local 0) (i64.const 0))
  (i64.store offset=1528 (get_local 0) (i64.const 0))
  (i64.store offset=1536 (get_local 0) (i64.const 0))
  (i64.store offset=1544 (get_local 0) (i64.const 0))
  (i64.store offset=1552 (get_local 0) (i64.const 0))
  (i64.store offset=1560 (get_local 0) (i64.const 0))
  (i64.store offset=1568 (get_local 0) (i64.const 0))
  (i64.store offset=1576 (get_local 0) (i64.const 0))
  (i64.store offset=1584 (get_local 0) (i64.const 0))
  (i64.store offset=1592 (get_local 0) (i64.const 0))
  (i64.store offset=1600 (get_local 0) (i64.const 0))
  (i64.store offset=1608 (get_local 0) (i64.const 0))
  (i64.store offset=1616 (get_local 0) (i64.const 0))
  (i64.store offset=1624 (get_local 0) (i64.const 0))
  (i64.store offset=1632 (get_local 0) (i64.const 0))
  (i64.store offset=1640 (get_local 0) (i64.const 0))
  (i64.store offset=1648 (get_local 0) (i64.const 0))
  (i64.store offset=1656 (get_local 0) (i64.const 0))
  (i64.store offset=1664 (get_local 0) (i64.const 0))
  (i64.store offset=1672 (get_local 0) (i64.const 0))
  (i64.store offset=1680 (get_local 0) (i64.const 0))
  (i64.store offset=1688 (get_local 0) (i64.const 0))
  (i64.store offset=1696 (get_local 0) (i64.const 0))
  (i64.store offset=1704 (get_local 0) (i64.const 0))
  (i64.store offset=1712 (get_local 0) (i64.const 0))
  (i64.store offset=1720 (get_local 0) (i64.const 0))
  (i64.store offset=1728 (get_local 0) (i64.const 0))
  (i64.store offset=1736 (get_local 0) (i64.const 0))
  (i64.store offset=1744 (get_local 0) (i64.const 0))
  (i64.store offset=1752 (get_local 0) (i64.const 0))
  (i64.store offset=1760 (get_local 0) (i64.const 0))
  (i64.store offset=1768 (get_local 0) (i64.const 0))
  (i64.store offset=1776 (get_local 0) (i64.const 0))
  (i64.store offset=1784 (get_local 0) (i64.const 0))
  (i64.store offset=1792 (get_local 0) (i64.const 0))
  (i64.store offset=1800 (get_local 0) (i64.const 0))
  (i64.store offset=1808 (get_local 0) (i64.const 0))
  (i64.store offset=1816 (get_local 0) (i64.const 0))
  (i64.store offset=1824 (get_local 0) (i64.const 0))
  (i64.store offset=1832 (get_local 0) (i64.const 0))
  (i64.store offset=1840 (get_local 0) (i64.const 0))
  (i64.store offset=1848 (get_local 0) (i64.const 0))
  (i64.store offset=1856 (get_local 0) (i64.const 0))
  (i64.store offset=1864 (get_local 0) (i64.const 0))
  (i64.store offset=1872 (get_local 0) (i64.const 0))
  (i64.store offset=1880 (get_local 0) (i64.const 0))
  (i64.store offset=1888 (get_local 0) (i64.const 0))
  (i64.store offset=1896 (get_local 0) (i64.const 0))
  (i64.store offset=1904 (get_local 0) (i64.const 0))
  (i64.store offset=1912 (get_local 0) (i64.const 0))
  (i64.store offset=1920 (get_local 0) (i64.const 0))
  (i64.store offset=1928 (get_local 0) (i64.const 0))
  (i64.store offset=1936 (get_local 0) (i64.const 0))
  (i64.store offset=1944 (get_local 0) (i64.const 0))
  (i64.store offset=1952 (get_local 0) (i64.const 0))
  (i64.store offset=1960 (get_local 0) (i64.const 0))
  (i64.store offset=1968 (get_local 0) (i64.const 0))
  (i64.store offset=1976 (get_local 0) (i64.const 0))
  (i64.store offset=1984 (get_local 0) (i64.const 0))
  (i64.store offset=1992 (get_local 0) (i64.const 0))
  (i64.store offset=2000 (get_local 0) (i64.const 0))
  (i64.store offset=2008 (get_local 0) (i64.const 0))
  (i64.store offset=2016 (get_local 0) (i64.const 0))
  (i64.store offset=2024 (get_local 0) (i64.const 0))
  (i64.store offset=2032 (get_local 0) (i64.const 0))
  (i64.store offset=2040 (get_local 0) (i64.const 0)))
 (func $gc--clear-marks-pages (param i32)
  (loop $loop (if (i32.eqz (get_local 0))
                  (return)) (call $gc--clear-marks-page
                             (get_local 0)) (set_local 0
                                             (i32.load offset=2048
                                              (get_local 0))) (br $loop)))
 (func $gc--clear-marks (param i32)
  (call $gc--clear-marks-pages (i32.load offset=0 (get_local 0)))
  (call $gc--clear-marks-pages (i32.load offset=4 (get_local 0)))
  (call $gc--clear-marks-pages (i32.load offset=8 (get_local 0)))
  (call $gc--clear-marks-pages (i32.load offset=12 (get_local 0)))
  (call $gc--clear-marks-pages (i32.load offset=16 (get_local 0)))
  (call $gc--clear-marks-pages (i32.load offset=20 (get_local 0)))
  (call $gc--clear-marks-pages (i32.load offset=24 (get_local 0)))
  (call $gc--clear-marks-pages (i32.load offset=28 (get_local 0)))
  (call $gc--clear-marks-pages (i32.load offset=32 (get_local 0)))
  (call $gc--clear-marks-pages (i32.load offset=36 (get_local 0)))
  (call $gc--clear-marks-pages (i32.load offset=40 (get_local 0))))
 (func $gc--mark-data (param i32) (result i32) (i32.const 1))
 (func $gc--mark-ptr (param i32) (result i32)
  (local i32 i32 i64 i64 i32 i32 i32)
  (set_local 1 (i32.and (i32.const -65536) (get_local 0)))
  (set_local 2 (i32.load offset=2052 (get_local 1)))
  (set_local 5
   (i32.div_u (i32.sub (get_local 0) (i32.add (get_local 1) (i32.const 2060)))
    (get_local 2)))
  (set_local 6 (i32.div_u (get_local 5) (i32.const 64)))
  (set_local 7 (i32.rem_u (get_local 5) (i32.const 64)))
  (set_local 3
   (i64.load offset=0
    (i32.add (get_local 1) (i32.mul (get_local 6) (i32.const 8)))))
  (set_local 4 (i64.shl (i64.const 1) (i64.extend_u/i32 (get_local 7))))
  (if (i64.eqz (i64.and (get_local 3) (get_local 4)))
      (block
          (i64.store offset=0
           (i32.add (get_local 1) (i32.mul (get_local 6) (i32.const 8)))
           (i64.or (get_local 3) (get_local 4)))
        (return (call $gc--mark-data (get_local 0)))))
  (return (i32.const 1)))
 (func $gc--mark (param i32) (local i32 i32)
  (set_local 1 (i32.load offset=44 (get_local 0)))
  (loop $loop (if (i32.le_u (get_local 1) (get_local 2))
                  (return)) (drop
                             (call $gc--mark-ptr
                              (i32.load offset=52
                               (i32.add (get_local 2)
                                (get_local 0))))) (set_local 2
                                                   (i32.add
                                                    (get_local 2
                                                     (i32.const 4)))) (br
                                                                       $loop)))
 (func $gc-run (param i32) (call $gc--clear-marks (get_local 0))
  (call $gc--mark (get_local 0)))
 (func $gc--allocated-data-page (param i32) (result i32) (local i32)
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=0 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=8 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=16 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=24 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=32 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=40 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=48 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=56 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=64 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=72 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=80 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=88 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=96 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=104 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=112 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=120 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=128 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=136 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=144 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=152 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=160 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=168 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=176 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=184 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=192 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=200 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=208 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=216 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=224 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=232 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=240 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=248 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=256 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=264 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=272 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=280 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=288 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=296 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=304 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=312 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=320 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=328 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=336 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=344 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=352 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=360 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=368 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=376 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=384 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=392 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=400 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=408 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=416 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=424 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=432 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=440 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=448 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=456 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=464 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=472 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=480 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=488 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=496 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=504 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=512 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=520 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=528 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=536 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=544 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=552 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=560 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=568 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=576 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=584 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=592 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=600 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=608 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=616 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=624 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=632 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=640 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=648 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=656 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=664 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=672 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=680 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=688 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=696 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=704 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=712 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=720 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=728 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=736 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=744 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=752 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=760 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=768 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=776 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=784 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=792 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=800 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=808 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=816 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=824 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=832 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=840 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=848 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=856 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=864 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=872 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=880 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=888 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=896 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=904 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=912 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=920 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=928 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=936 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=944 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=952 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=960 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=968 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=976 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=984 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=992 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1000 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1008 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1016 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1024 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1032 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1040 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1048 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1056 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1064 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1072 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1080 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1088 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1096 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1104 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1112 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1120 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1128 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1136 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1144 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1152 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1160 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1168 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1176 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1184 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1192 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1200 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1208 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1216 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1224 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1232 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1240 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1248 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1256 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1264 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1272 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1280 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1288 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1296 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1304 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1312 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1320 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1328 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1336 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1344 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1352 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1360 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1368 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1376 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1384 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1392 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1400 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1408 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1416 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1424 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1432 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1440 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1448 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1456 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1464 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1472 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1480 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1488 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1496 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1504 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1512 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1520 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1528 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1536 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1544 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1552 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1560 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1568 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1576 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1584 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1592 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1600 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1608 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1616 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1624 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1632 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1640 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1648 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1656 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1664 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1672 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1680 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1688 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1696 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1704 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1712 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1720 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1728 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1736 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1744 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1752 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1760 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1768 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1776 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1784 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1792 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1800 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1808 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1816 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1824 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1832 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1840 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1848 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1856 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1864 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1872 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1880 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1888 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1896 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1904 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1912 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1920 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1928 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1936 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1944 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1952 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1960 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1968 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1976 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1984 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=1992 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=2000 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=2008 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=2016 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=2024 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=2032 (get_local 0))))))
  (set_local 1
   (i32.add (get_local 1)
    (i32.wrap/i64 (i64.popcnt (i64.load offset=2040 (get_local 0))))))
  (get_local 1))
 (func $gc--allocated-data-pages (param i32) (result i32) (local i32)
  (loop $loop (if (i32.eqz (get_local 0))
                  (return (get_local 1))) (set_local 1
                                           (i32.add (get_local 1)
                                            (call $gc--allocated-data-page
                                             (get_local 0)))) (set_local 0
                                                               (i32.load
                                                                offset=2048
                                                                (get_local
                                                                 0))) (br
                                                                       $loop))
  (unreachable))
 (func $gc--allocated-data (param i32) (result i32) (local i32)
  (set_local 1
   (i32.add (get_local 1)
    (call $gc--allocated-data-pages (i32.load offset=0 (get_local 0)))))
  (set_local 1
   (i32.add (get_local 1)
    (call $gc--allocated-data-pages (i32.load offset=4 (get_local 0)))))
  (set_local 1
   (i32.add (get_local 1)
    (call $gc--allocated-data-pages (i32.load offset=8 (get_local 0)))))
  (set_local 1
   (i32.add (get_local 1)
    (call $gc--allocated-data-pages (i32.load offset=12 (get_local 0)))))
  (set_local 1
   (i32.add (get_local 1)
    (call $gc--allocated-data-pages (i32.load offset=16 (get_local 0)))))
  (set_local 1
   (i32.add (get_local 1)
    (call $gc--allocated-data-pages (i32.load offset=20 (get_local 0)))))
  (set_local 1
   (i32.add (get_local 1)
    (call $gc--allocated-data-pages (i32.load offset=24 (get_local 0)))))
  (set_local 1
   (i32.add (get_local 1)
    (call $gc--allocated-data-pages (i32.load offset=28 (get_local 0)))))
  (set_local 1
   (i32.add (get_local 1)
    (call $gc--allocated-data-pages (i32.load offset=32 (get_local 0)))))
  (set_local 1
   (i32.add (get_local 1)
    (call $gc--allocated-data-pages (i32.load offset=36 (get_local 0)))))
  (set_local 1
   (i32.add (get_local 1)
    (call $gc--allocated-data-pages (i32.load offset=40 (get_local 0)))))
  (get_local 1))
 (func $main (local i32 i32) (set_local 0 (call $new-gc))
  (call $gc-init (get_local 0))
  (call $print (call $gc--allocated-data (get_local 0)))
  (set_local 1 (call $gc-save-state (get_local 0)))
  (call $gc-protect (get_local 0) (call $gc-alloc (get_local 0) (i32.const 4)))
  (call $gc-protect (get_local 0) (call $gc-alloc (get_local 0) (i32.const 4)))
  (call $gc-protect (get_local 0) (call $gc-alloc (get_local 0) (i32.const 4)))
  (call $print (call $gc--allocated-data (get_local 0)))
  (call $gc-run (get_local 0))
  (call $print (call $gc--allocated-data (get_local 0)))
  (call $gc-restore-state (get_local 0) (get_local 1))
  (call $gc-run (get_local 0))
  (call $print (call $gc--allocated-data (get_local 0))))
 (start $main) (memory 1 10)) 