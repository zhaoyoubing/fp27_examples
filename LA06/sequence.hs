main :: IO ()
main = do
  let actions = [putStrLn "One", putStrLn "Two", putStrLn "Three"]
  sequence actions                    -- Runs them all in order
  
  mapM_ putStrLn ["Apple", "Banana"]   -- Maps and prints each string