myf n = c
          where
            c = [ [ f i j | j <- [0..n]] | i <- [0..n]]
            f i j
                | j == 0        = 1
                | i == 0        = 0
                | j < i         = c !! (i - 1) !! j
                | otherwise     = (c !! (i - 1) !! (j - i)) + (c !! (i - 1) !! j)  
  

nseq n = myf n !! n  !! n

main = do
     let c = nseq 9
     putStrLn $ show c 
