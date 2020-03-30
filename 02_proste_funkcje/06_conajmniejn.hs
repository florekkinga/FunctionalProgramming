{-
Zdefiniuj funkcję conajmniejn, która zostawia w liście elementy, które występuje co najmniej określoną liczbę razy
Podpowiedzi:
* przydatna może okazać się pomocnicza funkcja, która zlicza liczbę wystąpień danego elementu w liście
* przydatna może okazać się pomocnicza funkcja, która usuwa wszystkie wystąpienia danego elementu w liście
* w ramach optymalizacji obie te pomocnicze funkcje można zaimplementować w postaci jednej funkcji
-}
conajmniejn :: (Eq a) => [a] -> Int -> [a]