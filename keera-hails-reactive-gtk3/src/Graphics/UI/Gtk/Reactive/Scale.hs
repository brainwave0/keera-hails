-- | Publishes the main elements of a scale as reactive fields
--
-- Copyright   : (C) Keera Studios Ltd, 2013
-- License     : BSD3
-- Maintainer  : support@keera.co.uk
module Graphics.UI.Gtk.Reactive.Scale where

import Control.Monad (void)
import GHC.Float
import Graphics.UI.Gtk
import Data.ReactiveValue

scaleValueReactive :: RangeClass a => a -> ReactiveFieldReadWrite IO Float
scaleValueReactive e = ReactiveFieldReadWrite setter getter notifier
 where getter     = fmap double2Float $ get e rangeValue
       setter v   = set e [ rangeValue := float2Double v ]
       notifier p = void (on e valueChanged p)
