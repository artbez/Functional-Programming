data Candy = Cake String Integer | Sweet String Integer Double

totalPrice [] = 0.0
totalPrice (Cake _ price : ls) = (fromIntegral price) + totalPrice ls
totalPrice (Sweet _ priceForKg weight : ls)
           = (fromIntegral priceForKg) * weight + totalPrice ls

test = totalPrice [Cake "lal" 750,  Sweet "swe" 1000 0.2, Cake "rrr" 50] 