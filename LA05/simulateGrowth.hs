module Main where

simulateGrowth :: Double -> Int
simulateGrowth initBalance = loop initBalance 0
  where
    loop bal months
      | bal >= 500  = months -- Exit  1
      | months >= 12 = months -- Exit 2
    -- State Update: 
    loop bal months = loop (bal * 1.10) (months + 1)

main :: IO()
main = do
    print $ simulateGrowth 300.0