data Tree = Empty | Node Integer Tree Tree

foldTree f z Empty = z
foldTree f z (Node num l r) = foldTree f ((foldTree f z l) `f` num) r

res1 = foldTree (+) 0 (Node 2 (Node (-1) Empty Empty) (Node 5 Empty (Node 6 Empty Empty)))
res2 = foldTree (*) 1 (Node 2 (Node (-1) Empty Empty) (Node 5 Empty (Node 6 Empty Empty)))