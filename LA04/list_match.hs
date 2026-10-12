module Main where

head' :: [a] -> a
head' (x:_) = x

tellList :: [a] -> String
tellList []       = "The list is empty"
tellList (x:[])   = "The list has one element"
tellList (x:y:[]) = "The list has two elements"
tellList (x:xs)   = "This list is long!"

sumList :: Num a => [a] -> a
sumList []     = 0   -- Matches empty list
sumList (x:xs) = x + sumList xs   -- Matches head 'x' and tail 'xs'


length' :: [a] -> Int
length' []     = 0    -- Matches empty list
length' (_:xs) = 1 + length' xs   -- Matches head and tail 'xs'

-- Matching multiple elements
-- firstTwo :: [a] -> (a, a)
firstTwo (x:y:_) = (x, y)
firstTwo _       = error "list length < 2"

-- string literal and prefix matching
processStr :: String -> String
processStr ":quit" = "Quit"
processStr (':':rest) = "Other commands: " ++ rest
processStr ""         = "Empty string."
processStr other      = "Other string: " ++ other

main:: IO ()
main = do
    print $ head' [1, 2, 3]
    print $ tellList []
    print $ tellList [1]
    print $ tellList [1, 2]
    print $ tellList [1, 2, 3]
    
    print $ sumList [1, 2, 3, 4]
    print $ length' [1, 2, 3, 4]
    
    print $ firstTwo [10, 20, 30]
    
    print $ processStr ":quit"
    print $ processStr ":help"
    print $ processStr ""
    print $ processStr "x = 1"


