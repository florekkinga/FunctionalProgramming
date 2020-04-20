find :: (a -> Bool) -> [a] -> Maybe a
find f [] = Nothing
find f (x:tail) | (f x) == True = Just x
                | otherwise = find f tail

