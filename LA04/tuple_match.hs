-- tuple_match.hs
module Main where

first :: (a, b, c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, y, _) = y

vecAdd :: (Num a) => (a, a) -> (a, a) -> (a, a)
vecAdd (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

main :: IO ()
main = do
    let tuple = (1, 2, 3)
    print (first tuple)
    print $ second tuple

    let vec1 = (1, 2)
    let vec2 = (3, 4)
    print (vecAdd vec1 vec2)
