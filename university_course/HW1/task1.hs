f :: Integer -> Double
f n = f' n 1
f' 1 p = 1 + 1 / p
f' n p = f' (n - 1) (1 + 1 / p) 

main = do
let m = f 3  
putStrLn $ show m
