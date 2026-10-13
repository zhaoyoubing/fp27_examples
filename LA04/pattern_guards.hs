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


processList :: [Int] -> String
processList lst 
    | (x:y:_) <- lst, x == y = "Starts with two equal numbers"
    | otherwise              = "Something else"

-- using pattern guards avoids the need for case...of
countHotDays :: [Double] -> Int
countHotDays temps 
      | [] <- temps =  0
      | (t:ts) <- temps, t > 30.0 = 1 + countHotDays ts
      | otherwise = countHotDays (tail temps)      -- Skip this day and process the rest

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

    print $ processList [1, 1, 2, 3]
    print $ processList [1, 2, 3]   

    print $ countHotDays [31.0, 29.0, 32.0, 28.0, 30.0]