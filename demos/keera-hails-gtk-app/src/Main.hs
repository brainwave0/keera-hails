-- |
--
-- Copyright   : (C) Keera Studios Ltd, 2013-2020
-- License     : BSD3
-- Maintainer  : support@keera.co.uk
--
-- This is the main program with which the graphical app is launched.
module Main where

-- Internal imports
import Controller

-- |The app starts here. Here we simply call the controller, which
-- takes control from now on.
main :: IO ()
main = startController
