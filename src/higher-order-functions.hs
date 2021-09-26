-- Curried Functions
compareWithHundred = compare 100
-- results in compare 100 {given-number}
-- compareWithHundred 50 would result to GT

compareWithHundred' = (`compare` 100) -- Infix
-- results in {given-number} `compare` 100
-- compareWithHundred' 50 would result to LT

-- Higher-orderism
-- Functions can take functions as parameters and also return functions.
applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

-- Mapping
sampleMap = map (+3) [1..3]

-- Filterring
sampleFilter = filter odd [1..100]

chain :: (Integral a) => a -> [a]
chain 1 = [1]
chain n
    | even n =  n:chain (n `div` 2)
    | odd n  =  n:chain (n*3 + 1)

-- Lambdas
numLongChains :: Int
numLongChains = length (filter (\xs -> length xs > 15) (map chain [1..100]))
