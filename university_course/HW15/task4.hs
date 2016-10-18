calculate l = foldr (\x y -> let p = x . fst . y in (\el -> (fst (p el), snd (p el) + snd (y el)) ) ) (\x -> (x,0)) l

sin39 x = (sin x, 2)
exp39 x = (exp x, 5)
f x = (x*x+5, 10)

test = calculate [sin39,exp39,f] 1