module Main where

import Graphics.Vty

import Data.Default

main = do
    vty <- mkVty def
    let line0 = string (def `withForeColor` green) "first line"
        line1 = string (def `withBackColor` blue) "second line"
        img = line0 <-> line1
        pic = picForImage img
    update vty pic
    e <- nextEvent vty
    shutdown vty
    print $ "Last event was: " ++ show e
