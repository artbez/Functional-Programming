f i j l n
  | i < 0 = f (i + 1) (j + 1) l n
  | i < n && j < n = (l !! i !! j) : f (i + 1) (j + 1) l n
  | otherwise = []

diagonalSums l = [foldl (+) 0 (f i 0 l n) | i <- [n - 1, (n-2)..(-n + 1)]]  
             where n = length l