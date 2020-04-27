import System.Random
guess :: Int -> Int -> IO ()
guess 3 _ = putStrLn "You lost :("
guess tries num = do
              input <- getLine
              if (read input :: Int)==num
                  then putStrLn "Correct! You got it!" 
                  else if (read input :: Int) > num
			then do 
			    putStrLn "Too high!"
			    guess (tries+1) num
                        else do
                            putStrLn "Too low!"
			    guess (tries+1) num
 
main = do
    num <- randomRIO (1,10) :: IO Int
    putStrLn "Hello! Welcome to the Guess A Number Game!"
    putStrLn "Enter a guess between 1 and 10:" 
    guess 0 num
