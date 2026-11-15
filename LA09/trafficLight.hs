module Main where

data TrafficLight = Red | Yellow | Green
  deriving (Show, Eq)

-- Using pattern matching to handle each alternative:
action :: TrafficLight -> String
action Red    = "Stop"
action Yellow = "Caution"
action Green  = "Go"

main :: IO ()
main = do
    print $ action Red
    print $ action Green