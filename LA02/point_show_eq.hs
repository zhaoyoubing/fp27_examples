-- LA02/point_show_eq.hs
data Point = Point Double Double 
                   deriving (Show, Eq)

main :: IO ()
main = do
    let p1 = Point 3.0 4.0
    let p2 = Point 2.0 4.0
    print $ p1 == p2
    -- putStrLn $ show (p1 == p2) 

{-
Running Instructions:

> ghc point_show_eq.hs
[1 of 2] Compiling Main  ( point_show_eq.hs, point_show_eq.o ) \\
[2 of 2] Linking point_show_eq.exe 
> ./point_show_eq
False

-}