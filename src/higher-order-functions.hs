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
