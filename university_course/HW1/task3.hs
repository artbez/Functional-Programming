sumsqr :: Double -> Double
sumsqr n = sumsqr' n 1 1
sumsqr' 1 p q = p * p / q
sumsqr' n p q = sumsqr' (n - 1) (p + n) (q + n * n)

main = do
     let c = sumsqr 2
     putStrLn $ show c