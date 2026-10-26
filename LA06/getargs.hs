import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  putStrLn "Command-line arguments provided:"
  mapM_ putStrLn args