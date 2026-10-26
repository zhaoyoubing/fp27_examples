main :: IO ()
main = do
  let num = read "42" :: Int
  print (num * 2)
  
  -- Safe parsing with reads
  print (reads "123apples" :: [(Int, String)]) 
  -- Output: [(123,"apples")]