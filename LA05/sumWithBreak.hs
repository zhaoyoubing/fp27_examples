module Main where

sumWithBreak :: [Int] -> Int
sumWithBreak xs = loop xs 0
  where
    loop [] acc = acc -- Base case: empty list
    loop (y:ys) acc 
      | acc + y > 50 = acc   -- Early exit / break 
      | otherwise    = loop ys (acc + y) -- Continue 

main :: IO()
main = do
    print $ sumWithBreak [1..15]
