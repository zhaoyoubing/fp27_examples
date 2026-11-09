module Main where

insertsort :: [Int] -> [Int]
insertsort []     = []
insertsort (x:xs) = insert x (insertsort xs)

insert :: Int -> [Int] -> [Int]
insert n []     = [n]
insert n (x:xs)
    | n <= x    = n : x : xs
    | otherwise = x : insert n xs

main :: IO()
main = do
    print $ insertsort [3, 1, 4, 1, 5, 9, 2, 6]
    print $ insertsort [3, 0, -1, 8, 7]
    print $ insertsort []
    print $ insertsort [42]