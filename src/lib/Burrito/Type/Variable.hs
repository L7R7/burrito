{-# LANGUAGE DeriveLift #-}

-- | Warning: This module is not considered part of Burrito's public API. As
-- such, it may change at any time. Use it with caution!.
module Burrito.Type.Variable
  ( Variable(..)
  )
where

import qualified Burrito.Type.Modifier as Modifier
import qualified Burrito.Type.Name as Name
import qualified Language.Haskell.TH.Syntax as TH


-- | Represents a variable in an expression.
data Variable = Variable
  { modifier :: Modifier.Modifier
  , name :: Name.Name
  } deriving (Eq, TH.Lift, Show)
