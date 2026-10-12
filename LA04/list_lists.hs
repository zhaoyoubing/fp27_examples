module Main where

-- checks if there are lines, and if the first line has any characters:
describeLines :: [String] -> String
describeLines [] = "No lines provided." -- matches an empty list of strings.
describeLines ("":_) = "The first line is empty." -- matches first line empty
describeLines (line@(c:cs):_) = "The first line starts with '" ++ [c] ++ "', size: " ++ show (length line) 
-- nested matching: destructures the first line into head (c) and tail (cs).

{-
getTopLeft :: [[Int]] -> Maybe Int
getTopLeft []                  = Nothing       -- Empty grid
getTopLeft ([]:_)              = Nothing       -- First row is empty
getTopLeft ((x:_):_)           = Just x        -- Grab the first element of the first row
-}

processCommand :: [String] -> String
processCommand args
    | ("run":filename:_) <- args = "Running file: " ++ filename
    | ("help":_)         <- args = "Displaying help manual..."
    | []                 <- args = "No arguments supplied."
    | (cmd:_)            <- args = "Unknown command: " ++ cmd

analyzeMatrix :: [[Int]] -> String
analyzeMatrix []                      = "Matrix is completely empty."
analyzeMatrix ([]:_)                  = "First row has no columns."
analyzeMatrix (row@(x:xs):xss) = "Top-left elem: " ++ show x ++ " | Rest of first row: " ++ show xs 
         ++ " | rows size: " ++ show (length row)  -- extract the head and tail of the first row

main :: IO ()
main = do
    print $ describeLines []
    print $ describeLines [""]
    print $ describeLines ["Hello, World!"]
    print $ describeLines ["First line", "Second line"]

    print $ processCommand []
    print $ processCommand ["help"]
    print $ processCommand ["run", "script.hs"]
    print $ processCommand ["unknown", "arg1"]

    print $ analyzeMatrix []
    print $ analyzeMatrix [[]]
    print $ analyzeMatrix [[1, 2, 3], [4, 5, 6]]