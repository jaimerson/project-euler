-- A palindromic number reads the same both ways.
-- The largest palindrome made from the product of
-- two 2-digit numbers is 9009 = 91 × 99.
-- Find the largest palindrome made from the product of two 3-digit numbers.

module Main where
import Data.List (sortBy)

palindrome :: (Show a) => a -> Bool
palindrome a = reverse(show a) == show a

numbers = [100..999]
sorting (a, b) (x, y)
  | a * b > x * y  = LT
  | a * b == x * y = EQ
  | otherwise      = GT

tuples = sortBy sorting [(x, y) | x <- numbers, y <- numbers, palindrome (x * y)]

tuple = head tuples
answer = (fst tuple) * (snd tuple)

main = print answer
