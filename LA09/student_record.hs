module Main where

data Student = Student
    { sid   :: Int,
      name :: String,
      mark :: Double
    } deriving (Show, Eq)

s1 = Student 101 "Alice" 75.5

s2 = Student
    { sid = 102,
      name = "Bob",
      mark = 82.0
    }

summariseStudent :: Student -> String
summariseStudent  (Student a_sid a_name a_mark) 
  = "Student id: " 
    ++ (show a_sid) ++ ", name: " ++ a_name 
    ++ ", mark: " ++ (show a_mark) 


summariseStudent' :: Student -> String
summariseStudent'  (Student {mark, name, sid} ) 
  = "Student id: " 
    ++ (show sid) ++ ", name: " ++ name 
    ++ ", mark: " ++ (show mark) 

main :: IO ()
main = do
    print s1
    print $ name s2
    print $ mark s2
    let s3 = s3 {mark = 85.0}
    print s3
    print $ summariseStudent s2
    print $ summariseStudent' s2
