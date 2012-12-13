import Test.QuickCheck

tlast :: [a] -> a
tlast []     = error "No element"
tlast [x]    = x
tlast (x:xs) = tlast xs

prop_last :: [Int] -> Property
prop_last list = length list > 0 ==> 
                 tlast list == last list

main = do
  quickCheck prop_last
