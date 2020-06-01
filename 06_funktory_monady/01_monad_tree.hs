-- Wszystkie trzy zadania mają znaleźć się w tym pliku
-- 1. typ Tree
-- 2. Implementacja Functora dla drzewa
-- 3. Implementacja Monady dla drzewa
-- 4. Operacje na drzewie jako stateful computations
-- 5. Przykładowe użycie drzewa w notacji 'do'.

-- 1. typ Tree
data Tree a = Empty | Leaf a | Node (Tree a) (Tree a) deriving (Show)
-- przykładowe drzewo do testów
myTree = Node (Leaf 3) (Node (Node (Leaf 1) (Node (Empty) (Node (Leaf 2) Empty))) (Node (Leaf 4) Empty))

-- 2. Implementacja Functora dla drzewa
instance Functor Tree where
    fmap f (Empty) = Empty
    fmap f (Leaf x) = Leaf (f x)
    fmap f (Node left right) = Node (fmap f left) (fmap f right)

-- 3. Implementacja Monady dla drzewa
instance Monad Tree where
    return a = Node (Leaf a) (Node Empty Empty)
    Empty >>= f = Empty
    Leaf a >>= f = f a
    (Node left right) >>= f = (Node (left >>= f) (right >>= f))
    fail _ = Empty

-- 4. Operacje na drzewie jako stateful computations (dla starego drzewa) 
-- w drugim pliku


-- 5. Zadanie ekstra - zaimplementuj te same operacje dla nowego drzewa







