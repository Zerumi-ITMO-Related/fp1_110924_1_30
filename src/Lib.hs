module Lib
  ( someFunc,
  )
where

import Prob1 (prob1FilterImplementation)
import Prob30 (prob30FilterImplementation)

someFunc :: IO ()
someFunc = do
  putStrLn ("Problem 1 solution: " ++ show prob1FilterImplementation)
  putStrLn ("Problem 2 solution: " ++ show prob30FilterImplementation)
