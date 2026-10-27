module Main where

echoLoop :: IO ()
echoLoop = do
  putStrLn "Type something (type 'quit' to exit): "
  input <- getLine
  case input of
    "quit" -> putStrLn "Goodbye!"
    _      -> do    -- do block for sequential operations
            putStrLn ("You typed: " ++ input)
            echoLoop        -- Recursion


main :: IO()
main = do
    echoLoop