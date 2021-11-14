count limit
  | limit == final = 0
  | otherwise = count (limit - 1)
  where
    final = 0

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum of empty list"
maximum' [x] = x
maximum' (x:xs)
  | x > maxTail = x
  | otherwise = maxTail
  where
    maxTail = maximum' xs

-- Better format
maximum'' :: (Ord a) => [a] -> a
maximum'' []     = error "maximum of empty list"
maximum'' [x]    = x
maximum'' (x:xs) = max x (maximum'' xs)

-- If n is less than or equal to 0, return an empty list.
-- Otherwise return a list that has x as the first element
-- and then x replicated n-1 times as the tail.
-- Eventually, the (n-1) part will cause our function to
-- reach the edge condition.
replicate' :: (Num i, Ord i) => i -> a -> [a]
replicate' n x
  | n <= 0 = []
  | otherwise = x : replicate' (n - 1) x

take' :: (Num i, Ord i) => i -> [a] -> [a]
take' x _
  | x <= 0 = []
take' _ [] = []
take' n (x:xs) = x : take' (n - 1) xs

reverse' :: (Ord a) => [a] -> [a]
reverse' []     = []
reverse' (x:xs) = reverse' xs ++ [x]

repeat' :: a -> [a]
repeat' a = a : repeat' a
