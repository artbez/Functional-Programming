data Scheme = Res Double | Par Scheme Scheme | Seq Scheme Scheme

foldScheme f1 f2 f3 (Par left right)  = let
           newLeft = foldScheme f1 f2 f3 left
           newRight = foldScheme f1 f2 f3 right
           in f2 newLeft newRight

foldScheme f1 f2 f3 (Seq left right)  = let
           newLeft = foldScheme f1 f2 f3 left
           newRight = foldScheme f1 f2 f3 right
           in f3 newLeft newRight

foldScheme f1 f2 f3 (Res res) = f1 res

testScheme = Seq (Par (Res 2) (Res 2)) (Res 2) 
test1 = foldScheme (\x -> x) (\x y -> 1 / (1 / x + 1 / y)) (\x y -> x + y) testScheme
test2 = foldScheme id max max testScheme
test3 = foldScheme (\x -> 1) (+) (+) testScheme