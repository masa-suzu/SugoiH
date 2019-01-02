import Data.List hiding (nub)
import Data.List (nub)

numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub
