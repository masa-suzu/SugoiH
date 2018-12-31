doubleMe x = x + x

doubleUs x y = (x + y) * 2

doubleSmallNumber x =
  if x > 100
    then x
    else x * 2

doubleSmallNumber' x = (doubleSmallNumber x) + 1
