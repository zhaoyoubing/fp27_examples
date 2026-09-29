-- LA02/point_show.hs
module Main where
    
data Point = Point Double Double 
             deriving Show

main :: IO ()
main = do
    let p = Point 3.0 4.0
    putStrLn (show p)  -- Output: Point 3.0 4.0

{-
Running Instructions:

> ghc point_show.hs
[1 of 2] Compiling Main  ( point_show.hs, point_show.o ) \\
[2 of 2] Linking point_show.exe 
> ./point_show
Point 3.0 4.0

-}