import Data.Char (toUpper)

-- Converts all incoming standard input to uppercase
main :: IO ()
main = interact (map toUpper)