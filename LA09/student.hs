module Main where

data Student = Student
    { sid   :: Int,
      name :: String,
      mark :: Double
    } deriving (Show, Eq)

s1 = Student
    { sid = 101,
      name = "Alice",
      mark = 75.5
    }

main :: IO ()
main = do
    print s1
    print $ name s1
    print $ mark s1
    let s2 = s1 {mark = 85.0}
    print s2
