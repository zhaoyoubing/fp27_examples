module Main where

capital :: String -> String
capital "" = "Empty string, oops!"
capital all@(x:xs) = "The first letter of " ++ all 
                    ++ " is " ++ [x]


-- highlight words starting with 'a'
highlightWord :: String -> String
highlightWord word@('a':_) = "[" ++ word ++ "]"
highlightWord word@('A':_) = "[" ++ word ++ "]"
highlightWord word         = word

vecInfo :: (Float, Float) -> String
vecInfo vec@(x1, y1) = show vec ++ " has length " ++ show (sqrt (x1^2 + y1^2))

main :: IO ()
main = do
    print $ capital "Haskell"
    print $ capital ""

    print $ highlightWord "apple"
    print $ highlightWord "banana"

    print $ vecInfo (3, 4)