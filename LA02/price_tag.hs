module Main where

priceTag basePrice = -- (Show a, Fractional a) => a -> [Char]
  let rate = 0.10   -- Fractional a => a
      discount = basePrice * rate -- type from basePrice
      label = "Final Price: "    -- String ([Char])
  in label ++ show (basePrice - discount)

main :: IO ()
main = do
    putStrLn $ priceTag 100.0
    putStrLn $ priceTag 200.0