module Prob30Spec (prob30Spec) where

import Prob30
import Test.Hspec

expectedResult :: Integer
expectedResult = 443839

prob30Spec :: Spec
prob30Spec = do
  describe "Test Project Euler Problem 30 solution" $ do
    it "Recursive Implementation should return correct answer" $ do
      prob30RecursiveImplementation `shouldBe` expectedResult
    it "Tail Recursive Implementation should return correct answer" $ do
      prob30TailRecursiveImplementation `shouldBe` expectedResult
    it "Filter Implementation should return correct answer" $ do
      prob30FilterImplementation `shouldBe` expectedResult
    it "Map Implementation should return correct answer" $ do
      prob30MapImplementation `shouldBe` expectedResult
    it "List Comprehension Implementation should return correct answer" $ do
      prob30ListComprehensionImplementation `shouldBe` expectedResult
    it "Infinitive List Implementation should return correct answer" $ do
      prob30InfinitiveListImplementation `shouldBe` expectedResult

-- You can run the test suite by executing the following command:
-- stack test
