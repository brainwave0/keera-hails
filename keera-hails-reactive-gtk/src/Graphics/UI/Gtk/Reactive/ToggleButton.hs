-- | Publishes the main elements of a toggle button
--
-- Copyright   : (C) Keera Studios Ltd, 2013
-- License     : BSD3
-- Maintainer  : support@keera.co.uk
module Graphics.UI.Gtk.Reactive.ToggleButton where

import Control.Monad
import Graphics.UI.Gtk
import Data.ReactiveValue

toggleButtonActiveReactive :: ToggleButtonClass t => t -> ReactiveFieldReadWrite IO Bool
toggleButtonActiveReactive e = ReactiveFieldReadWrite setter getter notifier
 where getter   = toggleButtonGetActive e
       setter   = toggleButtonSetActive e
       notifier = void . (on e toggled)
