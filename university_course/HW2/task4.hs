sumprod [] = 0
sumprod (l1:[]) = 0
sumprod (l1:l2:ls) = l1 * l2 + sumprod (l2:ls)

main = do
  let c = sumprod [1, 3, 2, 7]
  putStrLn $ show c