module Main where
    
describeList :: [a] -> String
describeList xs = "The list is " ++ case xs of
    [] -> "empty."
    [x] -> "a singleton."
    _ -> "a multi-element list."

main :: IO()
main = do
    putStrLn "describeList []"
    print $ describeList []
    putStrLn "describeList [1]"
    print $ describeList [1]
    putStrLn "describeList [1..5]"
    print $ describeList [1..5]


{-

> ghc .\describeList.hs
[1 of 2] Compiling Main             ( describeList.hs, describeList.o )
[2 of 2] Linking describeList.exe
(base) PS D:\_course\_functional\lecture\2027\fp27_examples\LA02> .\describeList.exe
describeList []
"The list is empty."
describeList [1]
"The list is a singleton."
describeList [1..5]
"The list is a multi-element list."

-}