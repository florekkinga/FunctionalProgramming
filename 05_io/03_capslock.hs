import Data.Char

uppercase :: String -> String
uppercase = map toUpper

main = do
    contents <- readFile "machine.txt"    
    writeFile "CAPSLOCK.txt" (uppercase contents)

