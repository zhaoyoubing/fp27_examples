module Main where
    
-- Takes a Maybe String (like an optional nickname) and returns a greeting
greetUser :: Maybe String -> String
greetUser (Just name) = "Hello, " ++ name ++ "!"
greetUser Nothing     = "Hello, Guest!"

main :: IO ()
main = do
    putStrLn $ greetUser (Just "Alice") -- Output: "Hello, Alice!"
    putStrLn $ greetUser Nothing            -- Output: "Hello, Guest!"