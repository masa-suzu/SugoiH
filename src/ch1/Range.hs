xToTen :: Int -> [Int]
xToTen x = [x..10]
infiniteOne :: () -> [Int]
infiniteOne () = cycle [1]
infiniteA :: () -> [[Char]]
infiniteA () = repeat "A"
