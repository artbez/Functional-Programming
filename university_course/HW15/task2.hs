data Tree = Node Integer Tree Tree | Empty

foldTree f e (Node val l r) = let
         resl = foldTree f e l
         resr = foldTree f e r
         in f val resl resr
         
foldTree f e Empty = e

sumOdd tree = foldTree (\v l r -> (v `mod` 2) * v + l + r) 0 tree