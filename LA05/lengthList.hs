module Main where

lengthList :: [a] -> Int
lengthList []     = 0
lengthList (x:xs) = 1 + lengthList xs

main :: IO ()
main = do
    print $ lengthList [1..9]
    print $ lengthList "University"