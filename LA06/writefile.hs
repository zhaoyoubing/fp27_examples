import System.IO

main :: IO ()
main = do
  writeFile "log.txt" "Application started.\n"
  appendFile "log.txt" "User logged in.\n"
  putStrLn "File operations complete!"