module Main where

-- Converting a raw string to an Int explicitly
parseAge :: String -> Int
parseAge s = read s :: Int

main :: IO ()
main = do
  let strNumber = "25"
  let parsedInt = parseAge strNumber
  print (parsedInt + 5)             -- Outputs: 30