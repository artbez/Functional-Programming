countEven l = foldr (\x res -> (x + 1) `mod` 2 + res) 0 l
countEven1 = length . filter (\x -> x `mod` 2 == 0)