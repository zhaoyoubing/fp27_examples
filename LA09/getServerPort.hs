module Main where
    
-- If a port number is provided, use it. Otherwise, default to 8080.
getServerPort :: Maybe Int -> Int
getServerPort maybePort = maybe 8080 id maybePort
-- (where 'id' just returns the value inside 'Just' as-is)

main :: IO ()
main = do
    print (getServerPort (Just 3000)) -- Output: 3000
    print (getServerPort Nothing)      -- Output: 8080 (default)