lenInc l = len' l 1
len' [] a = [0]
len' (l1:[]) a = [a]
len' (l1:l2:ls) a = if (l1 < l2) then len' (l2:ls) (a + 1)
                    else a:(len' (l2:ls) 1)

parts l = foldr gcd 0 (lenInc l) > 1

main = do
     let c = parts [4, 6, 3, 5, 7]
     putStrLn $ show c