getPerimeter' p [] = 0
getPerimeter' (a, b) ((l1, l2):ls)
  | (a == l1) && (abs(b - l2) == 1) = 2 + getPerimeter' (a, b) ls
  | (b == l2) && (abs(a - l1) == 1) = 2 + getPerimeter' (a, b) ls
  | otherwise = getPerimeter' (a, b) ls

getPerimeter'' [] = 0
getPerimeter'' (l1:ls) = getPerimeter' l1 ls + getPerimeter'' ls

getPerimeter [] = 0
getPerimeter (l1:ls) = (length (l1:ls)) * 4 - getPerimeter'' (l1:ls)  