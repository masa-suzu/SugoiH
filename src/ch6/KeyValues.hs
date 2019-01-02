import Data.Char
import qualified Data.Map as Map

findKey :: (Eq k) => k -> [(k, v)] -> Maybe v
findKey key xs =
  foldr
    (\(k, v) acc ->
       if key == k
         then Just v
         else acc)
    Nothing
    xs

phoneBook =
  [("a", "111-2222"), ("a", "111-3333"), ("b", "333-4444"), ("c", "555-6666")]

phoneBookToMap :: (Ord k) => [(k, a)] -> Map.Map k [a]
phoneBookToMap xs = Map.fromListWith (++) $ map (\(k, v) -> (k, [v])) xs
