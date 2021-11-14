doubleMe :: (Num x) => x -> x
doubleMe x = x + x

doubleUs :: (Num x) => x -> x -> x
doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber :: (Ord x, Num x) => x -> x
doubleSmallNumber x =
  if x > 100
    then x
    else x * 2

getEven :: (Integral x) => [x] -> [x]
getEven list = [x | x <- list, even x]

multiplicationTable :: (Enum x, Num x) => x -> Int -> [x]
multiplicationTable factor limit = take limit [factor,factor * 2 ..]

type Triangles = [(Integer, Integer, Integer)]

triangles :: Triangles
triangles = [(a, b, c) | c <- [1 .. 10], b <- [1 .. 10], a <- [1 .. 10]]

rightTriangles :: Triangles
rightTriangles =
  [ (a, b, c)
  | c <- [1 .. 10]
  , b <- [1 .. c]
  , a <- [1 .. b]
  , a ^ 2 + b ^ 2 == c ^ 2
  ]

-- True if guess is correct, otherwiser False
guessHead :: (Eq a) => [a] -> a -> Bool
guessHead a b = head a == b

-- Only allow whole numbers
sumInt :: (Integral a) => [a] -> a
sumInt = sum
