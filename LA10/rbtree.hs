
data Colour = Red | Black
  deriving (Show, Eq)

data RBTree a = Empty
              | Node Colour (RBTree a) a (RBTree a)
              deriving (Show, Eq)

makeBlack :: Ord a => RBTree a -> RBTree a
makeBlack (Node _ left val right) = Node Black left val right


-- You are expected to implement the balance function
balance :: Ord a => RBTree a -> RBTree a
-- four cases for an Uncle in Black
-- Left-Left
balance (Node Black 
        (Node Red x@(Node Red _ _ _) pValue pRight) 
         gValue 
         (Node Red uLeft uValue uRight)) = 
        Node Red 
         (Node Black x pValue pRight) 
         gValue 
         (Node Black uLeft uValue uRight)


-- four cases for an Uncle in Black or Empty
-- Left-Left Case
balance (Node Black (Node Red (Node Red a x b) y c) z d) = Node Black (Node Red a x b) y (Node Red c z d)

-- you are expected to complete the remaining 3 cases

-- Valid structural configuration (catch-all)
balance (Node colour left val right) = Node colour left val right

ins :: Ord a => a -> RBTree a -> RBTree a
ins x Empty = Node Red Empty x Empty
ins x (Node colour left val right)
        | x < val     = balance (Node colour (ins x left) val right)
        | x > val     = balance (Node colour left val (ins x right))
        | otherwise = Node colour left val right  -- Avoid duplicates

insert :: Ord a => a -> RBTree a -> RBTree a
insert x tree = makeBlack (ins x tree)

main :: IO ()
main = do
