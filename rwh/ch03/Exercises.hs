{-# LANGUAGE TemplateHaskell #-}
import Test.QuickCheck
import Test.QuickCheck.All
import Data.List

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


-- ex.05
isPalindrome xs = check [] xs xs
	where check rev (x:xs') (_:_:ys') = check (x:rev) xs' ys'
	      check rev (x:xs') [_]       = rev == xs'
	      check rev xs'     []        = rev == xs'

prop_isPalindrome xs = let isPal = xs == reverse xs
                       in isPalindrome xs == isPal


-- ex.06
sortListOfLists xss = groupBy (\a b -> length a == length b) xss


-- ex.07, ex.08
intersperse' :: a -> [[a]] -> [a]
intersperse' _ [] = []
intersperse' _ [x]= x
intersperse' sep (x:xs) = x ++ [sep] ++ intersperse' sep xs

-- ex.09
data Tree a = Node a (Tree a) (Tree a)
            | Empty
            deriving Show

treeHeight :: Tree a -> Int
treeHeight Empty = 0
treeHeight (Node _ Empty Empty) = 1
treeHeight (Node _ left  Empty) = 1 + treeHeight left
treeHeight (Node _ Empty right) = 1 + treeHeight right
treeHeight (Node _ left  right) = 1 + max (treeHeight left) (treeHeight right)

-- ex.10
data Point = Point2D Double Double

data Direction = AngleRight | AngleLeft | StraightLine

-- ex.11
calculateTurn :: Point -> Point -> Point -> Direction
calculateTurn p1 p2 p3 | ccw p1 p2 p3 > 0.0 = AngleLeft
calculateTurn p1 p2 p3 | ccw p1 p2 p3 < 0.0 = AngleRight
calculateTurn p1 p2 p3 | otherwise          = StraightLine

ccw :: Point -> Point -> Point -> Double
ccw (Point2D x1 y1) (Point2D x2 y2) (Point2D x3 y3) = (x2 - x1) * (y3 - y1) - (y2 - y1) * (x3 - x1)

-- ex.12
directions :: [Point] -> [Direction]
directions [p1, p2, p3] = [calculateTurn p1 p2 p3]
directions (p1:p2:p3:ps)= calculateTurn p1 p2 p3 : directions ps

main = $(quickCheckAll)

