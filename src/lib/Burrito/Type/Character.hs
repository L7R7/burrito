{-# LANGUAGE DeriveLift #-}

-- | Warning: This module is not considered part of Burrito's public API. As
-- such, it may change at any time. Use it with caution!
module Burrito.Type.Character
  ( Character(..)
  ) where

import qualified Data.Word as Word
import qualified Language.Haskell.TH.Syntax as TH


-- | Represents a character in a literal. Although encoded characters are
-- allowed to have any value, typically they will not include most ASCII
-- printable characters. In other words @A@ is more likely than @%41@.
data Character
  = Encoded Word.Word8
  | Unencoded Char
  deriving (Eq, TH.Lift, Show)
