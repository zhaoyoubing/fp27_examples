-- use if-then-else expression
max2 :: Int -> Int -> Int
max2 a b = if a > b then a else b

-- use guards
max3 :: Int -> Int -> Int
max3 a b 
    | a > b = a
    | otherwise = b

main :: IO()
main = do
    putStrLn "max2 2 3"
    print (max2 2 3)
    putStrLn "max3 2 3"
    print $ max2 2 3
