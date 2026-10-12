module Main where

-- Extracting and formatting user data from a tuple
formatUser :: (String, Int, Bool) -> String
formatUser userData = 
    let (name, age, isActive) = userData
        statusStr = if isActive then "Active" 
                    else "Inactive"
    in name ++ " is " ++ show age 
    ++ " years old (" ++ statusStr ++ ")"

-- Calculate the distance between two 2D points
type Point = (Double, Double)
distance :: Point -> Point -> Double
distance p1 p2 = sqrt (dx * dx + dy * dy)
  where
    -- Pattern matching tuples directly in where
    (x1, y1) = p1 ; (x2, y2) = p2
    dx = x1 - x2 ; dy = y1 - y2

main :: IO ()
main = do
    let user = ("Alice", 30, True)
    putStrLn $ formatUser user

    let point1 = (3.0, 4.0)
    let point2 = (0.0, 0.0)
    putStrLn $ "Distance: " ++ show (distance point1 point2)