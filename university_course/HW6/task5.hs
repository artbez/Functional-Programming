repeatFunc f 1 = f
repeatFunc f n = f . (repeatFunc f (n - 1))

f = repeatFunc sin 3