module Main where
    
applyDiscount :: Double -> Maybe Double -> Double
applyDiscount price (Just rate) = price * (1.0 - rate)
applyDiscount price Nothing      = price -- No discount applied

main :: IO ()
main = do
    print (applyDiscount 100.0 (Just 0.2)) -- Output: 80.0 (20% off)
    print (applyDiscount 100.0 Nothing)      -- Output: 100.0 (no change)