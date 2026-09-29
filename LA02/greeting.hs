main:: IO()
main = do
  name <- getLine
  let greeting = "Welcome " ++ name
      module_name = "Functional Programming"
  print $ greeting ++ " to " ++ module_name