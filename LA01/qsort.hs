-- qsort.hs

quicksort :: [Int] -> [Int] 
quicksort [] = []
quicksort (x:xs) = quicksort [e | e <- xs, e < x]
                    ++ [x] 
                    ++ quicksort [e | e <- xs, e >= x] 

main :: IO()
main = do
    print (quicksort [2, 6, 0, 9, 2, 1])