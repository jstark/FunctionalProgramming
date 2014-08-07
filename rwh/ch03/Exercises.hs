{-# LANGUAGE TemplateHaskell #-}
import Test.QuickCheck
import Test.QuickCheck.All

-- file: ch03/Exercises.hs

-- ex.01, ex.02
length' :: [a] -> Int
length' [] = 0
length' (x:xs) = 1 + length' xs

-- specify that length' should return exactly the same result
--as length for any given input
prop_length xs = length' xs == length xs

-- ex.03
mean ::  [Double] -> Double
mean [] = 0.0
mean xs = sum xs / fromIntegral (length xs)

-- ex.04
makePalindrome xs = xs ++ (reverse xs)

prop_makePalindrome xs = makePalindrome xs == (reverse $ makePalindrome xs)

main = $(quickCheckAll)

