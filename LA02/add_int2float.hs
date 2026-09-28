-- LA02/add_int2float.hs
add_int2float :: (Integral a, Floating b) => a -> a -> b
add_int2float m n = fromIntegral(m) + fromIntegral(n)

main :: IO()
main = do
    print $ add_int2float 3 4