module Main where

{--
quicksort :: [Int] -> [Int] 
quicksort [] = []
quicksort (x:xs) = quicksort [e | e <- xs, e < x]
                    ++ [x] 
                    ++ quicksort [e | e <- xs, e >= x] 
--}

quicksort :: [Int] -> [Int]
quicksort []     = []
quicksort (p:ps) = quicksort (less p ps)
                ++ equal p (p:ps)       -- all elems equal to p, including p
                ++ quicksort (more p ps)

less :: Int -> [Int] -> [Int]
less pivot xs = filter (\x -> x < pivot) xs

more :: Int -> [Int] -> [Int]
more pivot xs = filter (\x -> x > pivot) xs

equal :: Int -> [Int] -> [Int]
equal pivot xs = filter (\x -> x == pivot) xs

{--
-- recursive implementation
equal :: Int -> [Int] -> [Int]
equal _ [] = []
equal pivot (y:ys)
    | y == pivot = y : equal pivot ys
    | otherwise = equal pivot ys
--}

main :: IO ()
main = do
    let unsortedList = [3, 6, 2, 8, 5, 1, 4, 7]
    let sortedList = quicksort unsortedList
    print sortedList