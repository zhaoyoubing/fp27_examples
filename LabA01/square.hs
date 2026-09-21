-- square.hs
module Main where

square :: Int -> Int
square x = x * x


main :: IO()
main = do
    print (square 2)