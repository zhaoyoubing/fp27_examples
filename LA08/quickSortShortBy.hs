module Main where

quickSortShortBy  ::  (a -> a -> Ordering) -> [a] -> [a]
quickSortShortBy _ [] = []
quickSortShortBy cmp (p:ps) = 
    let left  = quickSortShortBy cmp [x | x <- ps, cmp x p == LT || cmp x p == EQ]
        right = quickSortShortBy cmp [x | x <- ps, cmp x p == GT]
    in left ++ [p] ++ right

-- descending
cmp :: Ord a => a -> a -> Ordering
cmp a b 
    | a < b = GT
    | a > b = LT
    | otherwise = EQ

main :: IO ()
main = do
    let unsortedList = [3, 6, 2, 8, 5, 1, 4, 7]
    print $ quickSortShortBy cmp unsortedList
