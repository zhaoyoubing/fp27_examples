module Main where

analyzePoint :: (Double, Double) -> String
analyzePoint (0, 0)                   = "Origin point"
analyzePoint (x, y) | x == y          = "On the diagonal"
                    | x > 0 && y > 0  = "Quadrant I"
                    | otherwise       = "Other region"


processStr' :: String -> String
processStr' xs
            | ":quit" <- xs = "Quit"
            | (':':rest) <-xs = "Other commands: " ++ rest
            | ""         <- xs = "Empty string."
            | otherwise  = "Other string: " ++ xs

main :: IO ()
main = do  
    print $ analyzePoint (0, 0)
    print $ analyzePoint (1, 1)
    print $ analyzePoint (2, 3)
    print $ analyzePoint (-1, -1)

    print $ processStr' ":quit"
    print $ processStr' ":help"
    print $ processStr' ""
    print $ processStr' "x = 1"