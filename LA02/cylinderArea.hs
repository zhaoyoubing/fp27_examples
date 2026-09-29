module Main where
    
cylinderArea :: Double -> Double -> Double
cylinderArea r h = sideArea + 2 * topArea
   where
     sideArea = 2 * pi * r * h
     topArea = pi * r^2

main :: IO()
main = do
    print $ cylinderArea 1 2

{-

> ghc cylinderArea.hs
[1 of 2] Compiling Main             ( cylinderArea.hs, cylinderArea.o )
[2 of 2] Linking cylinderArea.exe
(base) PS D:\_course\_functional\lecture\2027\fp27_examples\LA02> .\cylinderArea.exe
18.84955592153876

-}