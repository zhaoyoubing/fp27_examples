module Main where

checkCmd :: String -> String
checkCmd cmd = case cmd of
    "quit" -> "Exiting application..."
    "help" -> "Displaying help menu..."
    _      -> "Unknown command."

describeList :: [a] -> String
describeList xs = "The list is " ++ case xs of
    []  -> "empty."
    [x] -> "a singleton."
    x:y:[] -> "two elements" -- both x:y:[] and (x:y:[]) are OK here
    _   -> "multi-elements"

main :: IO ()
main = do
    putStrLn "Enter a command:"
    cmd <- getLine
    putStrLn (checkCmd cmd)