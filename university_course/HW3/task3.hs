minList l = minList' (head l) (tail l)
minList' x [] = x
minList' x (l1:ls) =
  if (x < l1) then minList' x ls
     else minList' l1 ls

main = do
     let c = minList [1, 2, -1, 40, -2, 2]
     putStrLn $ show c