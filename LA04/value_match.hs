-- Matching on specific integer constants
describeNumber :: Int -> String
describeNumber 0  = "Zero"
describeNumber 1  = "One"
describeNumber 42 = "The ultimate answer!"
describeNumber n  = "Some other number: " ++ show n

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- Pattern matching on Bool literals
not :: Bool -> Bool
not True  = False
not False = True

-- Matching on specific characters
isVowel :: Char -> Bool
isVowel 'a' = True
isVowel 'e' = True
isVowel 'i' = True
isVowel 'o' = True
isVowel 'u' = True
isVowel _   = False  -- Wildcard pattern for any other character

isPositiveSign :: Char -> Bool
isPositiveSign '+' = True
isPositiveSign '-' = False
isPositiveSign _   = False  -- Wildcard pattern for any other character

-- String matching
greetUser :: String -> String
greetUser "Admin" = "Welcome back, System Administrator!"
greetUser "Guest" = "Welcome! Please sign up."
greetUser name    = "Hello, " ++ name ++ "!"

data Animal = Dog | Mouse | Elephant | Hippo
  deriving Show

isSmall :: Animal -> Bool
isSmall Elephant = False
isSmall Hippo    = False
isSmall _        = True    

data TrafficLight = Red | Yellow | Green

action :: TrafficLight -> String
action Red    = "Stop"
action Yellow = "Prepare to stop"
action Green  = "Go"

main:: IO ()
main = do
    print $ describeNumber 0
    print $ describeNumber 1
    print $ describeNumber 42
    print $ describeNumber 100

    print $ factorial 0
    print $ factorial 5

    

    print $ isVowel 'a'
    print $ isVowel 'b'

    print $ isPositiveSign '+'
    print $ isPositiveSign '-'
    print $ isPositiveSign '*'

    print $ greetUser "Admin"
    print $ greetUser "Guest"
    print $ greetUser "Alice"

    print $ isSmall Dog
    print $ isSmall Elephant