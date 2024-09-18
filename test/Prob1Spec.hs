module Prob1Spec (prob1Spec) where

import Prob1
import Test.Hspec

expectedResult :: Integer
expectedResult = 233168

prob1Spec :: Spec
prob1Spec = do
  describe "Test Project Euler Problem 1 solution" $ do
    it "Recursive Implementation should return correct answer" $ do
      prob1RecursiveImplementation `shouldBe` expectedResult
    it "Tail Recursive Implementation should return correct answer" $ do
      prob1TailRecursiveImplementation `shouldBe` expectedResult
    it "Filter Implementation should return correct answer" $ do
      prob1FilterImplementation `shouldBe` expectedResult
    it "Map Implementation should return correct answer" $ do
      prob1MapImplementation `shouldBe` expectedResult
    it "List Comprehension Implementation should return correct answer" $ do
      prob1ListComprehensionImplementation `shouldBe` expectedResult
    it "Infinitive List Implementation should return correct answer" $ do
      prob1InfinitiveListImplementation `shouldBe` expectedResult

-- You can run the test suite by executing the following command:
-- stack test
