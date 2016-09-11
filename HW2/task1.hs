isqrt :: Integral i => i -> i
isqrt = floor . sqrt . fromIntegral

isPrime :: Integer -> Bool
isPrime n = isPrime' n (isqrt n)
isPrime' n 1 = True
isPrime' n p = (n `mod` p /= 0) && (isPrime' n (p - 1))

isTwoCool :: Integer -> Bool
isTwoCool a = isTwoCool' a (isqrt a)
isTwoCool' a 1 = False
isTwoCool' a i = (isPrime i) && (a `mod` i == 0) && (isPrime (a `div` i)) || (isTwoCool' a (i - 1))

g :: Integer -> Bool
g n = g' n (n `div` 2)
g' n 0 = False
g' n i = (isTwoCool i) && (isTwoCool (n - i)) || (g' n (i - 1) )

main = do
     let c = g 13
     putStrLn $ show c


