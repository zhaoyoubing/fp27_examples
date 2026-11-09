module Main where

quickSortBy  :: (a -> a -> Ordering) -> [a] -> [a]
quickSortBy _ [] = []
quickSortBy cmp (x:xs) =  quickSortBy cmp (lessBy cmp x xs)
                ++ equalBy cmp x (x:xs)
                ++ quickSortBy cmp (moreBy cmp x xs)

lessBy :: (a -> a -> Ordering) -> a -> [a] -> [a]
lessBy cmp pivot xs = filter (\x -> cmp x pivot == LT) xs

moreBy ::  (a -> a -> Ordering) -> a -> [a] -> [a]
moreBy cmp pivot xs = filter (\x -> cmp x pivot == GT) xs

equalBy ::  (a -> a -> Ordering) -> a -> [a] -> [a]
equalBy cmp pivot xs = filter (\x -> cmp x pivot == EQ) xs


-- descending
cmp :: Ord a => a -> a -> Ordering
cmp a b 
    | a < b = GT
    | a > b = LT
    | otherwise = EQ


main :: IO ()
main = do
    let unsortedList = [3, 6, 2, 8, 5, 1, 4, 7]
    let sortedList = quickSortBy cmp unsortedList
    print sortedList