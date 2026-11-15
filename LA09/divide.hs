module Main where

divide :: Float -> Float -> Either String Float
divide _ 0.0 = Left "Error: Division by zero"
divide x y   = Right (x / y)

main :: IO ()
main = do
    print $ divide 5 0
    print $ divide 5 2