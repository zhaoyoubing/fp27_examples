module Main where

-- self documentary with named fields
data Shape 
  = Circle { radius :: Double } 
  | Rectangle { width:: Double, height :: Double}
  | Point                          -- No fields
  deriving (Show, Eq)


-- positional matching
area :: Shape -> Double
area (Circle r)      = pi * r * r
area (Rectangle w h) = w * h
area Point           = 0.0

-- named field matching
area' :: Shape -> Double
area' (Circle {radius}) = pi * radius * radius
area' (Rectangle {width, height}) = width * height
area' Point  = 0.0

main :: IO ()
main = do
    -- construction with named fields
    let s1 = Circle { radius = 1.0 }
    let s2 = Rectangle {width = 3.0, height = 2.0}
    let s3 = Point
    
    print $ area s1
    print $ area s2
    print $ area s3
    print $ area' s1
    print $ area' s2
    print $ area' s3