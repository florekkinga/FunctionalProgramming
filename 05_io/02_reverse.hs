import System.Exit

reverse' :: IO ()
reverse' = do
        text <- getLine
	if text == "" 
            then putStrLn "Exited"
            else do
                putStrLn (reverse text) 
                reverse'

main = do
    putStrLn "Enter a text you want to reverse. Press ENTER if you want to exit."
    reverse' 

