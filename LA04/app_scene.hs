
vec2Add :: (Num a) => (a, a) -> (a, a) -> (a, a)
vec2Add (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

describeList :: [a] -> String
describeList xs = case xs of
    []  -> "Empty"
    [x] -> "Single element"
    _   -> "Multiple elements"

area :: (Double, Double) -> Double
area rect = 
    let (width, height) = rect 
    in width * height

 -- Tuple pattern match in where
distanceSquared :: (Int, Int) -> Int
distanceSquared point = x * x + y * y
  where
    (x, y) = point  