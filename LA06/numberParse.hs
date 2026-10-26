main :: IO ()
main = do
  putStrLn "Enter your birth year:"
  inputStr <- getLine
  
  -- Parse the input string into an Integer
  let birthYear = read inputStr :: Integer
      currentYear = 2026
      age = currentYear - birthYear
  
  putStrLn ("You are approximately " ++ show age ++ " years old.")