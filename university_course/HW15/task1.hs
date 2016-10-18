fiveInner n = n : fiveInner (n * 10 + 5)
fives = fiveInner 5