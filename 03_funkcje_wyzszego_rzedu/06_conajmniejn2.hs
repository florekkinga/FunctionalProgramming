import Data.List
conajmniejn2 :: [Int] -> Int -> [Int]
conajmniejn2 lista a = nub $ filter (\y -> length(filter (\x -> x == y) lista) >= a) lista

