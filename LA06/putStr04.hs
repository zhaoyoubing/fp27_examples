main :: IO ()
main = do
  print 20
  putStr $ show 20 
  print [1..5]      -- Converts into text and prints it
  putStrLn $ show [1..5]
  print (1001, "Alice")
  putStrLn $ show (1001, "Alice")
