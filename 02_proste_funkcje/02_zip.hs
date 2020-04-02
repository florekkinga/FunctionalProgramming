{-
Zdefiniuję funkcję zip', działającą tak samo jak zip!
Podpowiedzi:
* poniżej jest już widoczna definicja typu tej funkcji
* są trzy przypadki: pierwsza lista jest pusta, druga lista jest pusta, obie są niepuste
-}
zip' :: [a] -> [b] -> [(a,b)]
zip' (aHead:aTail) (bHead:bTail) = (aHead,bHead) : zip aTail bTail
zip' _ (bHead:bTail) = []
zip' (aHead:aTail) _ = []

