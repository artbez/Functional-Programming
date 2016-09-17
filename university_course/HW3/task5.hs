check cond [] = False
check cond (l1:ls) = cond l1 || check cond ls

main = do
     let c = check (\i -> i < -5) [-2, 0, 4, 6]
     putStr $ show c