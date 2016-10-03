myfoldl f z [] = z
myfoldl f z (l1 : ls) = myfoldl f (f z l1) ls