-- LA02/check_sign.hs
module Main where
    
checkSign :: (Num a, Ord a) => a -> String
checkSign e = if e > 0 then "Positive" 
                       else if e < 0 then "Negative" 
                            else "Zero"


main :: IO ()
main = do
    putStrLn "checkSign 5"
    print $ checkSign 5
    putStrLn "checkSign -5"
    print $ checkSign (-5)
    putStrLn "checkSign 0"
    print $ checkSign 0
