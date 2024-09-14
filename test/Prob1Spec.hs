module Prob1Spec (spec) where

import Prob1
import Test.Hspec

expectedResult :: Integer
expectedResult = 233168

spec :: Spec
spec = do
  describe "Test Project Euler Problem 1 solution" $ do
    it "Recursive Implementation should return correct answer" $ do
      recursiveImplementation `shouldBe` expectedResult
    it "Tail Recursive Implementation should return correct answer" $ do
      tailRecursiveImplementation `shouldBe` expectedResult
    it "Filter Implementation should return correct answer" $ do
      filterImplementation `shouldBe` expectedResult
    it "Map Implementation should return correct answer" $ do
      mapImplementation `shouldBe` expectedResult
    it "List Comprehension Implementation should return correct answer" $ do
      listComprehensionImplementation `shouldBe` expectedResult
    it "Infinitive List Implementation should return correct answer" $ do
      infinitiveListImplementation `shouldBe` expectedResult

-- You can run the test suite by executing the following command:
-- stack test
