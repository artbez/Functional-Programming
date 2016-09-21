upDown' [] c 
       | c == 2 = True
       | otherwise = False
upDown' (l1:[]) c = upDown' [] c
upDown' (l1:l2:ls) c
       | c == 0 = if (l1 < l2) then upDown' (l2:ls) 1 else False
       | c == 1 = if (l1 < l2) then upDown' (l2:ls) 1 else upDown' (l2:ls) 2
       | otherwise = if (l2 < l1) then upDown' (l2:ls) 2 else False

upDown l = upDown' l 0

main = do
     let c = upDown [1,2,1]
     putStrLn $ show c
             