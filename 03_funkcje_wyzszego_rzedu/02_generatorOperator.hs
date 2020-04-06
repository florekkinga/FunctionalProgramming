generatorOperator :: (lewa -> prawa -> wynik) -> lewa -> (prawa -> wynik)
generatorOperator = \f x y -> f x y
-- funkcja przyjmuje operator, który jest typu (lewa -> prawa -> wynik)
-- oraz lewą część operatora i zwraca funkcję, która przyjmuje prawą część operatora i zwraca wynik
