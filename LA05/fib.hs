module Main where

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n - 2) + fib (n - 1)

main :: IO()
main = do
    print $ fib 10
    print $ map fib [1..10] 