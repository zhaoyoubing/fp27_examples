module Main where

-- a = Int (the value inside Maybe Int)
-- b = String (the output type of both the default and the function)
formatUserId :: Maybe Int -> String
formatUserId = maybe "No user logged in" (\idNum -> "User ID: " ++ show idNum)

main :: IO()
main = do
    print $ formatUserId (Just 1001)
    print $ formatUserId Nothing