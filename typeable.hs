{-# LANGUAGE DeriveDataTypeable #-}

import Data.Typeable

data Animal = Cat | Dog deriving Typeable
data Zoo a = Zoo [a] deriving Typeable

example1 :: TypeRep
example1 = typeOf Cat
-- Animal

example2 :: TypeRep
example2 = typeOf (Zoo [Cat, Dog])
-- Zoo Animal

example3 :: TypeRep
example3 = typeOf ((1, 3.14, "foo") :: (Int, Double, String))
-- (Int,Double,[Char])