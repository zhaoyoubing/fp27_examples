-- LA02/calc_avg.hs
module Main where
    
calcAverage :: Int -> Int -> Double
calcAverage a b = 
    ( fromIntegral a + (fromIntegral b) ) / 2.0

main :: IO ()
main = do
    putStrLn "The average score is:"
    print $ calcAverage 15 20

{-
Running Instructions:

> ghc calc_avg.hs
[1 of 2] Compiling Main ( calc_avg.hs, calc_avg.o )
[2 of 2] Linking calc_avg.exe
> .\calc_avg.exe
The average score is:
17.5

-}