module Main where

handleAccountResult :: Either String String -> String
handleAccountResult (Left err) = "ALERT: " ++ err
handleAccountResult (Right msg) = "SUCCESS: " ++ msg

-- Suppose verifyAccount returns Either String String (Left error or Right success)
handleAccountResult' :: Either String String -> String
handleAccountResult' result = 
    either 
        (\err -> "ALERT: " ++ err)      -- Handled if it's Left
        (\msg -> "SUCCESS: " ++ msg)    -- Handled if it's Right
        result

main :: IO ()
main = do
    let successRes = Right "Email verified successfully."
    let failureRes = Left "Error: Username cannot be empty."

    putStrLn $ handleAccountResult successRes -- Email verified successfully.
    putStrLn $ handleAccountResult failureRes -- Error: Username cannot be empty.

    putStrLn $ handleAccountResult' successRes -- Email verified successfully.
    putStrLn $ handleAccountResult' failureRes -- Error: Username cannot be empty.