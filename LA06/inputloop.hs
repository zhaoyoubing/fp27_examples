echoLoop :: IO ()
echoLoop = do
  putStrLn "Type something (type 'quit' to exit): "
  input <- getLine
  if input == "quit"
    then putStrLn "Goodbye!"
    else do
      putStrLn ("You typed: " ++ input)
      echoLoop                       -- Recursive step for looping

main :: IO()
main = do
    echoLoop