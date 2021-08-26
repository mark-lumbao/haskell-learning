-- Pattern Matching
birthmonth :: Integral x => x -> String
birthmonth 1   = "Melanie"
birthmonth 3   = "Mark"
birthmonth 5   = "Marielle"
birthmonth 6   = "Cyres"
birthmonth 7   = "Amando, Dextre, Alfred"
birthmonth 8   = "Michael"
birthmonth 10  = "Amando Sr"
birthmonth 11  = "Amyl"
birthmonth x   = "Nobody"

length' :: Integral x => [x] -> x
length' [] = 0
length' (_:x) = 1 + length' x

-- Guards
bmiTell :: (RealFloat a) => a -> String
bmiTell bmi
    | bmi <= 18.5 = "You're underweight, you emo, you!"
    | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
    | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
    | otherwise   = "You're a whale, congratulations!"

-- Where
greeting = "Hello there " ++ a ++ "!"
           where a = "Mark"

-- Let In
greeting' = let a = "Mark"
            in "Hello there " ++ a ++ "!"

-- Case
-- case expression of pattern -> result
                   -- pattern -> result
                   -- pattern -> result
                   -- ...
birthmonth' :: Integral x => x -> String
birthmonth' x = case x of 1   -> "Melanie"
                          3   -> "Mark"
                          5   -> "Marielle"
                          6   -> "Cyres"
                          7   -> "Amando, Dextre, Alfred"
                          8   -> "Michael"
                          10  -> "Amando Sr"
                          11  -> "Amyl"
                          x   -> "Nobody"
