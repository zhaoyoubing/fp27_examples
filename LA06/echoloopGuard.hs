module Main where

echoLoop :: IO ()
echoLoop = do
    putStrLn "Type something (type 'quit' to exit): "
    input <- getLine
    loop input
      where
        loop s
          | s == "quit" = putStrLn "Goodbye!"
          | otherwise   = do
              putStrLn ("You typed: " ++ s)
              echoLoop

main :: IO()
main = do
    echoLoop