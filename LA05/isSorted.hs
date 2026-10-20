isSorted :: [Int] -> Bool
isSorted [] = True
isSorted [_] = True  -- Single elem is always sorted
isSorted (x:y:xs)
  | x > y     = False  --  Out of order, break early!
  | otherwise = isSorted (y:xs) -- Continue checking 

-- or
isSorted' [] = True
isSorted' [_] = True 
isSorted' (x:y:xs) = (x <= y) && isSorted (y:xs)

main :: IO()
main = do
    print $ isSorted [2, 0, 2, 6]
    print $ isSorted [2, 3, 5, 6]
    print $ isSorted' [2, 0, 2, 6]
    print $ isSorted' [2, 3, 5, 6]