module Main where

data Shape 
  = Circle Double                  -- Radius
  | Rectangle Double Double        -- Width and Height
  | Point                          -- No fields
  deriving (Show, Eq)

-- Deconstructing the variants to compute results:
area :: Shape -> Double
area (Circle r)      = pi * r * r
area (Rectangle w h) = w * h
area Point           = 0.0

main :: IO ()
main = do
    let s1 = Circle 1.0
    let s2 = Rectangle 3.0 2.0
    let s3 = Point
    print $ area s1
    print $ area s2
    print $ area s3