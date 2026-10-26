main :: IO ()
main = do
  input <- getContents
  putStrLn $ "Total characters: " ++ show (length input)