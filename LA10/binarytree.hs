data BinaryTree a = Empty
            | Node a (BinaryTree a) (BinaryTree a)
              deriving (Show, Eq)

postOrder :: BinaryTree a -> [a]
postOrder Empty = []
postOrder (Node value left right) = postOrder left 
                                  ++ postOrder right 
                                  ++ [value]

inOrder :: BinaryTree a -> [a]
inOrder Empty = []
inOrder (Node value left right) = inOrder left 
                                ++ [value] 
                                ++ inOrder right

insert :: (Ord a) => a -> BinaryTree a -> BinaryTree a
insert x Empty = Node x Empty Empty
insert x (Node value left right)
    | x < value  = Node value (insert x left) right
    | x > value  = Node value left (insert x right)
    | otherwise  = Node value left right  -- Prevents duplicates!

-- Root node only with value 1
tree1 :: BinaryTree Int
tree1 = Node 1 Empty Empty

-- Root node with a left branch
tree2 :: BinaryTree Int
tree2 = Node 1 (Node 2 Empty Empty) Empty

tree3 :: BinaryTree Int
tree3 = Node 1
            (Node 2 Empty Empty)
            (Node 3 (Node 4 Empty Empty) Empty)

tree4 :: BinaryTree Int
tree4 = Node 4
            (Node 2 
                  (Node 1 Empty Empty)
                  (Node 3 Empty Empty)
            )
            (Node 6
                  (Node 5 Empty Empty)
                  (Node 7 Empty Empty)
            )

main :: IO ()
main = do
    print tree1
    print tree2
    print tree3
    print tree4
    print $ postOrder tree4
    print $ inOrder tree4
    print $ insert 6 tree3

