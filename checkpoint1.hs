-- copy this file and run it in playground.haskell.org
module Main where

import Data.List (sort)
import System.Random (randomRIO)

-- to try in the future
-- import System.Random (mkStdGen)
-- import System.Random.Shuffle (shuffle')
-- shuffleList :: RandomGen g => [a] -> g -> [a]
-- shuffleList xs = shuffle' xs (length xs)

selectOne :: [a] -> IO [a]
selectOne xs
    | length xs < 1 = error "List must contain at least one elements"
    | otherwise = do
        i <- randomRIO (0, length xs - 1)
        return [xs !! i]

selectTwo :: [a] -> IO [a]
selectTwo xs
    | length xs < 2 = error "List must contain at least two elements"
    | otherwise = do
        i <- randomRIO (0, length xs - 1)
        let remaining = take i xs ++ drop (i + 1) xs
        j <- randomRIO (0, length remaining - 1)
        return [xs !! i, remaining !! j]


xss = ["LA01 S1 div", "LA01 S2 Cylinder Volume", "LA01 S3 minOfTwo", 
       "LA01 S4 tellSignNum", "LA01 S5 myProduct",
       "LA02 S1 2D Vector Magnitude", "LA02 S2 Vector Dot Product", 
       "LA02 S3 Take the second from a pair tuple", 
       "LA02 S4 List Slicing", "LA02 S5 Check Palindrome String in list",
       "LA03 S1 Sum of Squares", "LA03 S2 Tribonacci", "LA03 S3 Recursive reverse", 
       "LA03 S4 A list contains an element", "LA03 S5 Merge sort code"
       ]

xsm = ["LA01 M1 Filter Odd Number", "LA01 M2 Free-fall distance", 
       "LA02 M1 Uppercase char in a string with two methods",
       "LA02 M2 Matrix columns", "LA02 M3 BMI Calculator",
       "LA03 M1 Collatz conjecture", "LA03 M2 Tower of Hanoi",
       "LA03 M3 Summing Numbers from Input", "LA03 M4 Factorial in Two Ways"
       ]

xsl = ["LA02 L1 Credit Card Number Check"]

main :: IO()
main = do
  putStrLn "==== Seleted S List ===="
  result <- selectTwo xss
  print $ sort result
  
  putStrLn "==== Selected M List ===="
  result <- selectTwo xsm
  print $ sort result

  putStrLn "==== Selected L List ===="
  result <- selectOne xsl
  print $ sort result