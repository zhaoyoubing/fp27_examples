module Main where

-- most common form
sumList :: [Int] -> Int
sumList []     = 0
sumList (x:xs) = x + sumList xs

-- no helper 
sumListTail :: [Int] -> Int -> Int
sumListTail []  acc    = acc
sumListTail (x:xs) acc = sumListTail xs (acc + x)

-- with helper
sumListTail' :: [Int] -> Int
sumListTail' xs = loop xs 0
  where 
    loop [] acc  = acc
    loop (x:xs) acc = loop  xs (acc + x)

main :: IO()
main = do
    print $ sumList [1..10]
    print $ sumListTail [1..10] 0
    print $ sumListTail' [1..10]