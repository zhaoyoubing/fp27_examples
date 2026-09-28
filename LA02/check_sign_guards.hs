-- LA02/check_sign_guards.hs

checkSignG :: (Num a, Ord a) => a -> String
checkSignG e 
    | e > 0 = "Positive"
    | e < 0 = "Negative"
    | otherwise = "Zero"

main :: IO ()
main = do
    putStrLn "checkSignG 5"
    print $ checkSignG 5
    putStrLn "checkSignG -5"
    print $ checkSignG (-5)
    putStrLn "checkSignG 0"
    print $ checkSignG 0


{-

ghc .\check_sign_guards.hs
[1 of 2] Compiling Main   ( check_sign_guards.hs, check_sign_guards.o )
[2 of 2] Linking check_sign_guards.exe
(base) PS D:\_course\_functional\lecture\2027\fp27_examples\LA02> .\check_sign_guards.exe
checkSignG 5
"Positive"
checkSignG -5
"Negative"
checkSignG 0
"Zero"

-}