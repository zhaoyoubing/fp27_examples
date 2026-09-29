-- LA02/calc_avg_let.hs
module Main where
    
calcAverage :: Int -> Int -> Double
calcAverage a b = 
    let totalSum = a + b
    in fromIntegral totalSum / fromIntegral 2

main :: IO ()
main = do
    let avg = calcAverage 15 20
    putStrLn "The average score is:"
    print avg  -- Will output: 17.5

{-
Running Instructions:

> ghc calc_avg.hs
[1 of 2] Compiling Main ( calc_avg.hs, calc_avg.o )
[2 of 2] Linking calc_avg.exe
> .\calc_avg.exe
The average score is:
17.5

-}