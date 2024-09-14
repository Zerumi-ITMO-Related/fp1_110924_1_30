module Lib
    ( someFunc
    ) where
import Prob1 (filterImplementation)

someFunc :: IO ()
someFunc = do
    putStrLn ("Problem 1 solution: " ++ show filterImplementation)
    putStrLn ("Problem 2 solution: " ++ show (1 :: Int))
