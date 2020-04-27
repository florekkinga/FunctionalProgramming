import Control.Monad
import System.IO
import Data.Char
import Data.List
import Data.Set

remove :: String -> String
remove x = [s | s <- x, notElem s ",.?!:;"]

spell d w = when (w `notMember` d) (appendFile "output.txt" (w++"\n"))

main = do
    f   <- readFile "/usr/share/dict/words"
    g   <- readFile "machine.txt"
    let dict = fromList (lines f)
    mapM_ (spell dict) (words $ Prelude.map toLower $ remove g)




