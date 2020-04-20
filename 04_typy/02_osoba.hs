{-# LANGUAGE FlexibleInstances #-}

data Osoba = Osoba
   { imie     :: String
   , nazwisko :: String
   , pesel    :: String
   } deriving (Show)

instance Eq Osoba where
    (==) (Osoba imie1 nazwisko1 pesel1) (Osoba imie2 nazwisko2 pesel2) = pesel1 == pesel2

instance Ord Osoba where
    (<) (Osoba imie1 nazwisko1 pesel1) (Osoba imie2 nazwisko2 pesel2) =  nazwisko1 < nazwisko2
    (>) (Osoba imie1 nazwisko1 pesel1) (Osoba imie2 nazwisko2 pesel2) =  nazwisko1 > nazwisko2
    (<=) (Osoba imie1 nazwisko1 pesel1) (Osoba imie2 nazwisko2 pesel2) =  nazwisko1 <= nazwisko2
    (>=) (Osoba imie1 nazwisko1 pesel1) (Osoba imie2 nazwisko2 pesel2) =  nazwisko1 >= nazwisko2
