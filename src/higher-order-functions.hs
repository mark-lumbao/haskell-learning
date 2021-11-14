-- Curried Functions
-- results in compare 100 {given-number}
-- compareWithHundred 50 would result to GT
compareWithHundred = compare 100

-- results in {given-number} `compare` 100
-- compareWithHundred' 50 would result to LT
compareWithHundred' = (`compare` 100) -- Infix

-- Higher-orderism
-- Functions can take functions as parameters and also return functions.
applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

-- Mapping
sampleMap = map (+ 3) [1 .. 3]

-- Filterring
sampleFilter = filter odd [1 .. 100]

chain :: (Integral a) => a -> [a]
chain 1 = [1]
chain n
  | even n = n : chain (n `div` 2)
  | odd n = n : chain (n * 3 + 1)

-- Lambdas
numLongChains :: Int
numLongChains = length (filter (\xs -> length xs > 15) (map chain [1 .. 100]))

-- Folding
-- A fold takes a binary function, a starting value (I like to call it the accumulator) and a list to fold up.
-- The binary function itself takes two parameters. The binary function is called with the accumulator and the first (or last) element and produces a new accumulator.
-- Then, the binary function is called again with the new accumulator and the now new first (or last) element, and so on.
-- Once we've walked over the whole list, only the accumulator remains, which is what we've reduced the list to.
sum' :: (Num a) => [a] -> a
sum' xs = foldl (\acc x -> acc + x) 0 xs

-- Better format
sum'' :: (Num a) => [a] -> a
sum'' = foldl (+) 0

-- The right fold, foldr works in a similar way to the left fold, only the accumulator eats up the values from the right.
-- Also, the left fold's binary function has the accumulator as the first parameter and the current value as the second one (so \acc x -> ...),
-- the right fold's binary function has the current value as the first parameter and the accumulator as the second one (so \x acc -> ...).
-- It kind of makes sense that the right fold has the accumulator on the right, because it folds from the right side.
map' :: (a -> b) -> [a] -> [b]
map' f xs = foldr (\x acc -> f x : acc) [] xs

sum''' :: (Num a) => [a] -> a
sum''' xs = foldr (\x acc -> acc + x) 0 xs
