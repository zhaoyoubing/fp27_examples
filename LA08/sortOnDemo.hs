-- sortOnDemo.hs
import Data.List (sortOn)
import Data.Ord (Down(..))

data Person = Person { 
    name :: String, 
    age  :: Int 
} deriving (Show)

people = [Person "Alice" 20, Person "Bob" 15, Person "Charlie" 25]

-- Single field projection sort
sortByAge = sortOn age

-- Tuple key for multi-field criteria
sortByAgeThenName = sortOn (\p -> (age p, name p))

main :: IO ()
main = do
    print $ sortByAge people
    print $ sortByAgeThenName people
    print $ sortOn (Down . age) people
    -- Age descending, Name ascending
    print $ sortOn (\p -> (Down (age p), name p)) people