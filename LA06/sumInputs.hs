module Main where

sumInputs :: Int -> IO Int
sumInputs total = do
    putStr "Enter a number (0 to stop), "
    putStrLn ("Current Total: " ++ show total)
    input <- getLine
    let n = read input :: Int
    -- or, n <- readLn :: IO Int
    if n == 0
        then return total  -- wrap an Int in IO, to be explained in the next semester
        else sumInputs (total + n)

main :: IO ()
main = do
    total <- sumInputs 0
    print total