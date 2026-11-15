module Main where

type UserInfo = (String, Int)
user :: UserInfo
user = ("Alice", 25)

main :: IO ()
main = do
    print user