module Main where

taxable :: Float -> Float
taxable x = 
    let allowance = 12570.0
    in x - allowance

-- using indentation
tax :: Float -> Float
tax x =
    let rate = 0.2
        allowance = 12570.0
    in (x - allowance) * rate

-- using intermediate variables
tax1 :: Float -> Float
tax1 x = let rate = 0.2
             allowance = 12570.0
             taxable = x - allowance
         in taxable * rate

-- using semicolon
tax2 :: Float -> Float
tax2 x =
    let rate = 0.2; allowance = 12570.0 
    in ( x - allowance) * rate

-- using Tuple
tax3 :: Float -> Float
tax3 x =
    let (rate, allowance)  = (0.2, 12570.0)
    in ( x - allowance) * rate

tax4 :: Float -> Float
tax4 x = (x - allowance) * rate
         where rate = 0.2
               allowance = 12570.0
               

tax5 :: Float -> Float
tax5 x = taxable * rate
         where taxable = x - allowance
               rate = 0.2
               allowance = 12570.0


-- in a do-block
main :: IO()
main = do
  -- print $ tax5 30000 -- 3486.0
  putStrLn "Please input the annual salary:"
  input <- getLine
  let salary = read input :: Float
  let rate = 0.2
      allowance = 12570.0
      tax = ( salary - allowance) * rate
  putStr "Tax payable: "
  print tax