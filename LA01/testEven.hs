-- testEven.hs
module Main where
    
isEven :: Int -> Bool
isEven x = mod x 2 == 0

main :: IO()
main = do
    putStrLn "Test if 4 is even"
    print (isEven 4)
    putStr "Test if 5 is even : "
    print $ isEven 5