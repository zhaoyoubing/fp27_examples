module Main where
    
totalPrice :: Bool -> Double -> Double
totalPrice isVIP price = price * (if isVIP then 0.8 else 1.0)

main :: IO ()
main = do
    putStrLn "totalPrice True 2.0"
    print $ totalPrice True 2.0  -- 1.6

{-

> ghc total_price.hs
[1 of 2] Compiling Main ( total_price.hs, total_price.o )
[2 of 2] Linking total_price.exe
(base) PS D:\_course\_functional\lecture\2027\fp27_examples\LA02> .\total_price.exe
totalPrice True 2.0
1.6

-}