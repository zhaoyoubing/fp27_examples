-- sum_list.hs
-- use following commands to compile and run on Windows
-- ghc sum_list.hs
-- ./sum_list.exe

sum_list :: [Int] -> Int
sum_list [] = 0
sum_list (x:xs) = x + sum_list xs

lst = [1, 2, 3, 4, 5]
tot = sum_list lst

main :: IO()
main = do
    print tot