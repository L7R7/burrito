module Burrito.Type.Character
  ( Character(..)
  ) where

import qualified Data.Word as Word


-- | Represents a character in a literal. Although encoded characters are
-- allowed to have any value, typically they will not include most ASCII
-- printable characters. In other words @A@ is more likely than @%41@.
data Character
  = Encoded Word.Word8
  | Unencoded Char
  deriving (Eq, Show)
