-- |
--
-- Copyright   : (C) Keera Studios Ltd, 2013-2020
-- License     : BSD3
-- Maintainer  : support@keera.co.uk
--
-- Contains basic operations related to the GUI.
--
module View (module Exported) where

-- External libraries
import Hails.MVC.View.DefaultViewGtk as Exported
import Hails.MVC.View.GtkView        (GtkGUI (..))
import Hails.MVC.View.GtkView        as Exported

-- Internal libraries
import View.Objects

-- | Add all initialisers to the initialise operation and store
-- everything we'll need in the view. We need this operation here
-- because the URL to the glade file depends on the application
-- name.
instance GtkGUI View where
  initialise = fmap View loadInterface
