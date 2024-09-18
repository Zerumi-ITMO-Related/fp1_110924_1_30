{-
 - Project Euler Problem 30. Digit Fifth Powers.

 - Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:
 - 1634 = 1^4 + 6^4 + 3^4 + 4^4
 - 8208 = 8^4 + 2^4 + 0^4 + 8^4
 - 9474 = 9^4 + 4^4 + 7^4 + 4^4

 - As 1 = 1^4 is not a sum it is not included.
 - The sum of these numbers is 1634 + 8208 + 9474 = 19316.

 - Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.
 -}

module Prob30
  ( prob30RecursiveImplementation,
    prob30TailRecursiveImplementation,
    prob30FilterImplementation,
    prob30MapImplementation,
    prob30ListComprehensionImplementation,
    prob30InfinitiveListImplementation,
  )
where

allNumbers :: [Integer]
allNumbers = [2 .. 999999] -- f(999999) = 354294, which is the upper limit

toDigits :: Integer -> [Integer]
toDigits 0 = []
toDigits x = toDigits (x `div` 10) ++ [x `mod` 10]

fifthPower :: Integer -> Integer
fifthPower x = x ^ (5 :: Integer)

sumOfDigitsFifthPower :: Integer -> Integer
sumOfDigitsFifthPower x = sum (map fifthPower (toDigits x))

xEqualsSumOfDigitsFifthPower :: Integer -> Bool
xEqualsSumOfDigitsFifthPower x = x == sumOfDigitsFifthPower x

sumOfDigitsFifthPowerOrZero :: Integer -> Integer
sumOfDigitsFifthPowerOrZero x
  | xEqualsSumOfDigitsFifthPower x = x
  | otherwise = 0

prob30RecursiveSum :: Integer -> Integer
prob30RecursiveSum 2 = 0
prob30RecursiveSum x
  | x == sumOfDigitsFifthPower x = x + prob30RecursiveSum (x - 1)
  | otherwise = prob30RecursiveSum (x - 1)

prob30TailRecursiveSum :: Integer -> Integer -> Integer
prob30TailRecursiveSum 2 acc = acc
prob30TailRecursiveSum x acc = prob30TailRecursiveSum (x - 1) (acc + if x == sum (map fifthPower (toDigits x)) then x else 0)

prob30RecursiveImplementation :: Integer
prob30RecursiveImplementation = prob30RecursiveSum 999999

prob30TailRecursiveImplementation :: Integer
prob30TailRecursiveImplementation = prob30TailRecursiveSum 999999 0

prob30FilterImplementation :: Integer
prob30FilterImplementation = sum (filter xEqualsSumOfDigitsFifthPower allNumbers)

prob30ListComprehensionImplementation :: Integer
prob30ListComprehensionImplementation = sum [x | x <- allNumbers, xEqualsSumOfDigitsFifthPower x]

prob30MapImplementation :: Integer
prob30MapImplementation = sum (map sumOfDigitsFifthPowerOrZero allNumbers)

prob30InfinitiveListImplementation :: Integer
prob30InfinitiveListImplementation = sum (map sumOfDigitsFifthPowerOrZero (take 999999 (iterate (+ 1) 2)))

-- The sum of all the numbers that can be written as the sum of fifth powers of their digits is 443839
