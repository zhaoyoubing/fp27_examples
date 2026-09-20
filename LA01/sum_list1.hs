-- sum_list1.hs
-- use following commands to compile and run on Windows
-- ghc sum_list1.hs
-- ./sum_list1.exe

sum_list :: [Int] -> Int
sum_list [] = 0
-- x and xs are the head and reminader of a list
sum_list (x:xs) = x + sum_list xs

-- print values in the main function
main :: IO()
main = do
    let lst = [1..10]
        tot = sum_list lst
    
    print tot