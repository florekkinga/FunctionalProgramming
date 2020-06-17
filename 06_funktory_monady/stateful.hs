{-# LANGUAGE MultiWayIf #-}
import Control.Monad.State

-- przykladowe drzewo do testow
myTree :: Tree Int
myTree = Node 3 (Node 1 Empty (Node 2 Empty Empty)) (Node 4 Empty Empty)

--typ drzewo
data Tree a = Empty | Node a (Tree a) (Tree a) deriving (Show, Read, Eq)

--insert wrapper
treeInsert x tree = runState (insert x) tree

-- insert jako stateful computations 
insert :: (Ord a) => a -> State (Tree a) ()
insert x = state $ \tree -> case tree of
                                Empty -> ((),Node x Empty Empty)
                                Node a left right
                                    | x == a -> ((),Node x left right)
                                    | x < a -> ((), Node a (snd (runState (insert x) left)) right)
                                    | otherwise -> ((), Node a left (snd (runState (insert x) right)))

--search wrapper
treeSearch x tree = runState (search x) tree 

--search jako stateful computations
search :: (Ord a) => a -> State (Tree a) Bool
search x = state $ \tree -> ((oldSearch x tree), tree)

oldsearch :: (Ord a) => a -> Tree a -> Bool
oldsearch x Empty = False
oldsearch x (Node a left right)
    | x == a = True
    | x < a  = oldsearch x left  
    | x > a  = oldsearch x right


