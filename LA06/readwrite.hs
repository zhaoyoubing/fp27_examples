module Main where
    
import System.IO
import Data.Char (toUpper)

processFileContent :: IO ()
processFileContent = do
  -- Read file contents into a String
  content <- readFile "log.txt"
  putStrLn content
  
  -- Apply string operations to uppercase everything
  let upperContent = map toUpper content
  
  -- Write the transformed string to a new file
  writeFile "upper_log.txt" upperContent
  putStrLn "File processed successfully!"

main :: IO ()
main = do
    processFileContent