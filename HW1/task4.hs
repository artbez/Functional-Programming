sumfact :: Integer -> Integer
sumfact n = sumfact' n 2 1 0
sumfact' 1 i p s = p + s
sumfact' n i p s = sumfact' (n - 1) (i + 1) (p * i) (s + p)

main = do
     let c = sumfact 3
     putStrLn $ show c