findSame [] = (1, False)
findSame (l1:ls) =
         let res = filter (\x -> x == l1) ls
         in case (res) of
            []    -> findSame ls
            r1:rs -> (r1, True) 