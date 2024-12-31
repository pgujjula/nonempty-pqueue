-- SPDX-FileCopyrightText: Copyright Preetham Gujjula
-- SPDX-License-Identifier: BSD-3-Clause
module FibsMod (fibsMod) where

fibsMod :: Word -> [Word]
fibsMod n = xs
  where
    xs = 0 : (1 `rem` n) : zipWith (\a b -> (a + b) `rem` n) xs (tail xs)
