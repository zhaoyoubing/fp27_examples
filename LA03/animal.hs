module Main where
    
data Animal = Dog | Mouse | Elephant | Hippo
  deriving Show

isSmall :: Animal -> Bool
isSmall Elephant = False
isSmall Hippo    = False
isSmall _        = True

main :: IO ()
main = do
  let animals = [Dog, Mouse, Elephant, Hippo]
  let smallAnimals = filter isSmall animals
  print smallAnimals