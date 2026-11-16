module Main where

-- student id, name, mark
data Student = Student Int String Double
    deriving (Show, Eq)

-- positional construction
s1 = Student 101 "Alice" 75.5


getStudentId :: Student -> Int
getStudentId (Student sid _ _) = sid

getStudentName :: Student -> String
getStudentName (Student _ name _) = name

getStudentMark :: Student -> Double
getStudentMark (Student _ _ mark) = mark


summariseStudent :: Student -> String
summariseStudent  (Student sid name mark) 
  = "Student id: " 
    ++ (show sid) ++ ", name: " ++ name 
    ++ ", mark: " ++ (show mark) 

main :: IO ()
main = do
    print s1
    print $ getStudentName s1
    print $ getStudentMark s1
    print $ summariseStudent s1
