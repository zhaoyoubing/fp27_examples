module Main where

sumInputs :: Int -> IO Int
sumInputs total = do
    putStrLn "Enter a number (0 to stop):"
    n <- readLn :: IO Int
    if n == 0
        then return total  -- to be explained in the next semester
        else sumInputs (total + n)

main :: IO ()
main = do
    total <- sumInputs 0
    print total