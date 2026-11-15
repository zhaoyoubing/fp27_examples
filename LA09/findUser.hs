module Main where

findUser :: Int -> Maybe String
findUser id = 
  if id == 1 
    then Just "Alice" 
    else Nothing

main :: IO ()
main = do
    print $ findUser 1
    print $ findUser 0