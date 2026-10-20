module Main where

sumPositives :: [Int] -> Int
sumPositives numbers = loop numbers 0
  where
    loop [] acc = acc -- Base case, return total
    loop (x:xs) acc
      | x < 0     = loop xs acc     -- skip, acc unchanged
      | otherwise = loop xs (acc + x)  -- proceed/update

main :: IO ()
main = do 
    print $ sumPositives [1, -2, 3, 4, -5, 6]