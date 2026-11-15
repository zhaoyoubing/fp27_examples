module Main where

import Data.List (find)

itemCatalog :: [(String, Double)]
itemCatalog = [("apple", 2.50), ("banana", 1.20)]

getPriceWithTax :: String -> String
getPriceWithTax target = 
  case find (\(name, _) -> name == target) itemCatalog of
    -- Successfully found: unwrap and use 'basePrice' in math
    Just (_, basePrice) -> 
      let final = basePrice * 1.20
      in target ++ " costs $" ++ show final
      
    -- Search failed: handle gracefully without crashes
    Nothing -> "Sorry, we don't carry " ++ target ++ "."

main :: IO()
main = do
    print $ getPriceWithTax "apple"
    print $ getPriceWithTax "orange"
