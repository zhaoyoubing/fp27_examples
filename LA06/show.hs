data TrafficLight = RED | YELLOW | GREEN deriving Show
data Point = Point Int Int deriving Show

main :: IO ()
main = do
  print  40            -- Uses Show under the hood
  putStrLn (show True)        -- Explicitly converts Bool to String
  putStrLn $ show [1..5]
  putStrLn (shows 123 "!")    -- Prepends string representation ("123!")
  print (1001, "Alice")
  putStrLn $ show (1001, "Alice")
  putStrLn $ show (Just 123)
  putStrLn $ show RED
  putStrLn $ show (Point 2 3)