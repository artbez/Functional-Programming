findEl x [] = False
findEl x (l1:ls) = x == l1 || findEl x ls

findDublicates [] = False
findDublicates (l1:ls) = findEl l1 ls || findDublicates ls 

sameDigits l = findDublicates (map (\i -> abs i `mod` 10) l)

main = do
     let c = sameDigits [13,2,79,5]
     putStrLn $ show c