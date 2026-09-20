-- let ... in ... for value binding in expressions
area_let = 
    let pi = 3.1415925
        r = 2.0
    in  pi * r * r

-- where for value binding in expressions
area_where = 
    pi * r * r
    where pi = 3.1415925
          r = 2.0

main :: IO()
main = do
    putStr "Using let ... in ... : "
    print area_let
    putStr "Using ... where : "
    print area_where