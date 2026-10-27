main :: IO ()
main = do
  putStrLn "Enter a number (0 to stop):"
  n <- readLn :: IO Int
  print n

  let num = read "42" :: Int
  print (num * 2)
  
  -- Safe parsing with reads
  print (reads "123apples" :: [(Int, String)]) 
  -- Output: [(123,"apples")]

  print (reads "apples123" :: [(Int, String)]) 
  -- Output: []