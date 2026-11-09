-- compareAge.hs
module Main where

quickSortBy  :: (a -> a -> Ordering) -> [a] -> [a]
quickSortBy _ [] = []
quickSortBy cmp (p:ps) = 
    let left  = quickSortBy cmp [x | x <- ps, cmp x p == LT || cmp x p == EQ]
        right = quickSortBy cmp [x | x <- ps, cmp x p == GT]
    in left ++ [p] ++ right
    
data Person = Person { name :: String, age :: Int } deriving (Show)

-- Custom comparison function from scratch (comparing by age)
cmpAge :: Person -> Person -> Ordering
cmpAge p1 p2
    | age p1 < age p2 = LT
    | age p1 > age p2 = GT
    | otherwise       = EQ

-- Or, using a custom comparison lambda:
sortedByAge = quickSortBy (\p1 p2 -> compare (age p1) (age p2)) 

main :: IO ()
main = do
    let personList = [Person "Alice" 30, Person "Bob" 25, Person "Charlie" 35]
    print $ quickSortBy cmpAge personList
    print $ sortedByAge personList