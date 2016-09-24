len (a, b) (c, d) =  (a - c) * (a - c) + (b - d) * (b - d)
isosc a b c = (len a b == len b c) || (len b c == len c a) || (len a b == len a c)