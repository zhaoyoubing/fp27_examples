module Main where

reduceToZero :: Int -> Int
reduceToZero n
    | n <= 0    = 0
    | even n    = reduceToZero (n `div` 2)
    | otherwise = reduceToZero (n - 1)

main :: IO ()
main = do
    print $ reduceToZero 8
    print $ reduceToZero 7