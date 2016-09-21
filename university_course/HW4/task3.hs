parts2' [] m1 m2 s1 s2 n = True
parts2' (l1:ls) m1 m2 s1 s2 n
        | s1 == n = if (l1 > m2) then parts2' ls m1 l1 s1 (s2 + 1) n else False
        | s2 == n = if (l1 > m1) then parts2' ls l1 m2 (s1 + 1) s2 n else False
        | l1 > m2 && l1 > m1 =  (parts2' ls m1 l1 s1 (s2 + 1) n) || (parts2' ls l1 m2 (s1 + 1) s2 n)
        | l1 > m2 = parts2' ls m1 l1 s1 (s2 + 1) n
        | l1 > m1 = parts2' ls l1 m2 (s1 + 1) s2 n
        | otherwise = False

parts2 l = ((length l) `mod` 2 == 0) && (parts2' l (minimum l - 1) (minimum l - 1) 0 0 ((length l) `div` 2))

main = do
     let c = parts2 [1, 3, 2, 4, 8, 9]
     putStrLn $ show c
     