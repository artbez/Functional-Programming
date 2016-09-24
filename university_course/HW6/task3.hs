data Tree = Empty | Node Integer Tree Tree

height Empty = 0
height (Node _ Empty Empty) = 0
height (Node _ left right) = max (height left) (height right) + 1