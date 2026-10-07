-- LA01/tree.hs
module Main where

data Tree = Leaf Char
           | Node Tree Int Tree
           deriving Show

-- You can create a tree in the following way
{-     
        1
       / \
      x   2
         / \
        y   z
-}

tree :: Tree
tree = Node (Leaf 'x') 1
        (Node (Leaf 'y') 2 (Leaf 'z'))


main :: IO ()
main = do
  print tree

{-     
Options for running the program:

[ghc]
Compile the program using GHC and run it:
> ghc tree.hs
> ./tree
Node (Leaf 'x') 1 (Node (Leaf 'y') 2 (Leaf 'z'))

[GHCi]
Load the file in GHCi and print tree:
ghci> :load tree.hs
ghci> print tree
Node (Leaf 'x') 1 (Node (Leaf 'y') 2 (Leaf 'z'))
-}