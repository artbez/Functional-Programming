pow1 n = map (round) $ [1..n] >>= \x -> [1..x] >>= \y -> [y ** y] 

pow2 n = do x <- [1..n]
            y <- [1..x]
            return $ round (y**y) 