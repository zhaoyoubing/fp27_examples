-- testEven.hs
isEven :: Int -> Bool
isEven x = mod x 2 == 0

main :: IO()
main = do
    putStrLn "Test if 4 is even"
    print (isEven 4)