{-
Zdefiniuj funkcję supercyfra zgodnie z instrukcjami
Podpowiedzi:
* `div` i `mod` mogą się przydać
* podwójna rekurencja!  
-}
sumacyfr :: Int->Int
sumacyfr 0 = 0
sumacyfr x = x `mod` 10 + sumacyfr(x `div` 10)

supercyfra :: Int -> Int
supercyfra x | x<10 = x | otherwise = supercyfra(sumacyfr x)
