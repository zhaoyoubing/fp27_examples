-- quadruple_sum_list.hs
-- use following commands to compile and run on Windows
-- ghc quadruple_sum_list.hs
-- ./quadruple_sum_list.exe

lst = [1, 2, 3, 4, 5]

tot = sum (map (4*) lst)

-- print values in the main function
main :: IO()
main = do
    print tot