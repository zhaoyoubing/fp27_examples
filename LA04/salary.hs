module Main where

type Person = (Integer, String, Float)
salary_list :: [Person]
salary_list = [(20260001, "Alice", 38000.0), (20260002, "Thomas", 45000.0), (20260003, "Laura", 35000.0), 
               (20260004, "Max", 52000.0), (20260005, "John", 30000.0), (20260006, "David", 48000.0)]  


second :: (a, b, c) -> b
second (_, y, _) = y

third :: (a, b, c) -> c
third (_, _, z) = z

filter_salary = filter (\x -> third x > 40000.0) 

filter_salary' = filter (\(_, _, salary) -> salary > 40000.0)

main :: IO ()
main = do
    print $ filter_salary salary_list
    print $ filter_salary' salary_list

    print $ map second $ filter_salary' salary_list


