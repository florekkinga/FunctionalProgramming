{-# LANGUAGE FlexibleInstances #-}
myTree :: Tree Int
myTree = Node 3 (Node 1 Empty (Node 2 Empty Empty)) (Node 4 Empty Empty)

data Tree a = Empty | Node a (Tree a) (Tree a) deriving (Show, Read, Eq)

insert :: (Ord a) => a -> Tree a -> Tree a  
insert x Empty = Node x Empty Empty 
insert x (Node a left right)   
    | x == a = Node x left right  
    | x < a  = Node a (insert x left) right  
    | x > a  = Node a left (insert x right)

empty :: Tree a -> Bool
empty Empty = True
empty _ = False

search :: (Ord a) => a -> Tree a -> Bool
search x Empty = False
search x (Node a left right)
    | x == a = True
    | x < a  = search x left  
    | x > a  = search x right

toString :: (Show a) => Tree a -> String
toString Empty = ""
toString (Node a Empty Empty) = (show a)
toString (Node a Empty right) = (show a) ++ "(," ++ toString right ++ ")"
toString (Node a left Empty) = (show a) ++ "(" ++ toString left ++ ",)"
toString (Node a left right) = (show a) ++ "(" ++ toString left ++ "," ++ toString right ++ ")"

leaves :: Tree a -> [a]
leaves Empty = []
leaves (Node a Empty Empty) = [a]
leaves (Node a left right) = leaves left ++ leaves right 

nnodes :: Tree a -> Int
nnodes Empty = 0
nnodes (Node a left right) = 1 + nnodes left + nnodes right

nsum :: (Num a) => Tree a -> a
nsum Empty = 0
nsum (Node a left right) = a + nsum left + nsum right 

remove :: (Ord a) => a -> Tree a -> Tree a
remove _ Empty = Empty 
