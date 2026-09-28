checkSignC :: (Num a, Ord a) => a -> String
checkSignC e = case e of
    n | n > 0     -> "Positive"
    n | n == 0    -> "Zero"
    _             ->  "Negative"


main :: IO ()
main = do
    putStrLn "checkSignC 5"
    print $ checkSignC 5
    putStrLn "checkSignC -5"
    print $ checkSignC (-5)
    putStrLn "checkSignC 0"
    print $ checkSignC 0


{-

> ghc check_sign_case.hs
[1 of 2] Compiling Main  ( check_sign_case.hs, check_sign_case.o )
[2 of 2] Linking check_sign_case.exe
> .\check_sign_case.exe
checkSignC 5
"Positive"
checkSignC -5
"Negative"
checkSignC 0
"Zero"

-}