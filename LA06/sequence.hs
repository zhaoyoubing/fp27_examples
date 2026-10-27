main :: IO ()
main = do
  let actions = [putStrLn "One", 
        putStrLn "Two", putStrLn "Three"]
  
  -- Runs them all in order
  sequence actions                    
  
  -- Maps and prints each string
  mapM_ putStrLn ["Apple", "Banana"]   