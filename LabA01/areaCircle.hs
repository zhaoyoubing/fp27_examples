-- areaCircle.hs
module Main where -- for loading areaCircle in GHCi


-- areaCircle :: Float -> Float
areaCircle :: Floating a => a -> a
areaCircle r = pi * r * r


main :: IO()
main = do 
    print $ areaCircle 1 -- print (areaCircle 1)
