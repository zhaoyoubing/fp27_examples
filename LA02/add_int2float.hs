-- LA02/add_int2float.hs
module Main where
    
add_int2float :: (Integral a, Floating b) => a -> a -> b
add_int2float m n = fromIntegral(m) + fromIntegral(n)

main :: IO()
main = do
    print $ add_int2float 3 4

{-
Running Instructions:

ghc add_int2float.hs
[1 of 2] Compiling Main             ( add_int2float.hs, add_int2float.o )
[2 of 2] Linking add_int2float.exe
(base) PS D:\_course\_functional\lecture\2027\fp27_examples\LA02> .\add_int2float.exe
7.0

-}