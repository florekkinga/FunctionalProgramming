pierwsze :: [Int] -> [Int]
pierwsze lista = filter is_prime lista

is_prime :: Int -> Bool
is_prime 1 = False
is_prime x | length ([a | a <- [2..x-1], x `mod` a == 0]) > 0 = False
          | otherwise = True
-- funkcja znajdujące w podanej liście wszystkie liczby pierwsze

