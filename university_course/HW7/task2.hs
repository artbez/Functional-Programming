import Data.List
s = sort [(2,2),(1,2),(1,3),(1,4)]

fMin l = minimum $ map fst l 
sMin l = minimum $ map snd l

shift l = sort $ map (\x -> (fst x - mf, snd x - ms)) l
      where
        mf = fMin l
        ms = sMin l

rot l p = l' == (shift p)
         || l' == shift (map (\x -> (fst x, -snd x)) p)
         || l' == shift (map (\x -> (-fst x, snd x)) p)
         || l' == shift (map (\x -> (-fst x, -snd x)) p)
         where l' = shift l


areEqual l p = (rot l p) || (rot l (map (\x -> (snd x, fst x)) p)) 