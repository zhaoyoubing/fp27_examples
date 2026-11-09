module Main where
    
quicksort :: [Int] -> [Int] 
quicksort [] = []
quicksort (x:xs) = quicksort [e | e <- xs, e <= x]
                    ++ [x] 
                    ++ quicksort [e | e <- xs, e > x] 

main :: IO()
main = do
    let unsortedList = [3, 6, 2, 8, 5, 1, 4, 7]
    let sortedList = quicksort unsortedList
    print sortedList