-- matching constant
lucky :: Int -> String
lucky 7 = "LUCKY SEVEN!"
lucky x = "Sorry, out of luck!"

getFirst :: Int -> Int -> Int
-- _ is the wildcard
getFirst x _ = x

-- matching lists
tellList :: [Int] -> String
tellList []       = "The list is empty"
tellList (x:[])   = "The list has one element"
tellList (x:y:[]) = "The list has two elements"
tellList (x:xs)   = "This list is long!"