b :: Double -> Double
b n = b' n n
b' 1 p = 1 / p
b' n p = b' (n - 1) (n - 1 + 1 / p)