module Main where

import Data.List (sortBy)
import Data.Ord (comparing)
import Data.Function (on)

data Person = Person { 
    name :: String, 
    age  :: Int 
} deriving (Show)

people :: [Person]
people = [Person "Alice" 20, Person "Bob" 15, Person "Charlie" 25, Person "Alex" 22]

-- Manual ordering logic
cmpAge :: Person -> Person -> Ordering
cmpAge p1 p2
  | age p1 < age p2 = LT
  | age p1 > age p2 = GT
  | otherwise       = EQ

sortByAge = sortBy cmpAge

main :: IO ()
main = do
    -- let unsortedList = [3, 6, 2, 8, 5, 1, 4, 7]
    -- let sortedList = sortBy (flip compare) unsortedList
    print $ sortByAge people
    print $ sortBy (comparing age) people
    print $ sortBy (compare `on` age) people
    print $ sortBy (flip compare `on` age) people
    print $ sortBy (flip (comparing age)) people