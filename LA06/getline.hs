main :: IO ()
main = do
  putStrLn "What is your name?"
  name <- getLine                    -- Captures input into 'name'
  putStrLn ("Hello, " ++ name ++ "! Enter a grade char: ")
  grade <- getChar                   -- Captures a single character
  putStrLn ("\nGot grade: " ++ [grade])