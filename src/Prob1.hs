{-
 - Project Euler Problem 1. Multiples of 3 or 5

 - If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
 - The sum of these multiples is 23.

 - Find the sum of all the multiples of 3 or 5 below 1000.
 -}

module Prob1(
    prob1RecursiveImplementation,
    prob1TailRecursiveImplementation,
    prob1FilterImplementation,
    prob1MapImplementation,
    prob1ListComprehensionImplementation,
    prob1InfinitiveListImplementation,
) where

isMod3Or5 :: Integer -> Bool
isMod3Or5 x = x `mod` 3 == 0 || x `mod` 5 == 0

mod3mod5Or0 :: Integer -> Integer
mod3mod5Or0 x | isMod3Or5 x = x
              | otherwise = 0

prob1FilterImplementation :: Integer
prob1FilterImplementation = sum (filter isMod3Or5 [1..999])

recursiveSum :: Integer -> Integer
recursiveSum 0 = 0
recursiveSum x = mod3mod5Or0 x + recursiveSum (x - 1)

tailRecursiveSum :: Integer -> Integer -> Integer
tailRecursiveSum 0 acc = acc
tailRecursiveSum x acc = tailRecursiveSum (x - 1) (acc + mod3mod5Or0 x)

prob1RecursiveImplementation :: Integer
prob1RecursiveImplementation = recursiveSum 999

prob1TailRecursiveImplementation :: Integer
prob1TailRecursiveImplementation = tailRecursiveSum 999 0

prob1ListComprehensionImplementation :: Integer
prob1ListComprehensionImplementation = sum [x | x <- [1..999], isMod3Or5 x]

prob1MapImplementation :: Integer
prob1MapImplementation = sum (map mod3mod5Or0 [1..999])

prob1InfinitiveListImplementation :: Integer
prob1InfinitiveListImplementation = sum (map mod3mod5Or0 (take 999 (iterate (+1) 1)))

-- The sum of all the multiples of 3 or 5 below 1000 is 233168
