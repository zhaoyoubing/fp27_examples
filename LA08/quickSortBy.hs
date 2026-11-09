module Main where

quickSortBy  :: Ord a => (a -> a -> Ordering) -> [a] -> [a]
quickSortBy _ [] = []
quickSortBy cmp (p:ps) = 
    let left  = quickSortBy cmp [x | x <- ps, cmp x p == LT || cmp x p == EQ]
        right = quickSortBy cmp [x | x <- ps, cmp x p == GT]
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
    -- ascending
    -- let sortedList = quickSortBy compare unsortedList
    let sortedList = quickSortBy cmp unsortedList
    print sortedList
