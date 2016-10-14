data Scheme = Res Double | Par Scheme Scheme | Seq Scheme Scheme

totalResistance (Res a) = a
totalResistance (Seq a b) = totalResistance a + totalResistance b
totalResistance (Par a b) = 1 / (1 / (totalResistance a) + 1 / (totalResistance b))

test = totalResistance $ Seq (Par (Res 2) (Res 2)) $ Res 2