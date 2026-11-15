module Main where

safeHead :: [a] -> Maybe a
safeHead []    = Nothing
safeHead (x:_) = Just x

main :: IO ()
main = do
    print $ safeHead ([] :: [Int])
    print $ safeHead [1, 2, 3]