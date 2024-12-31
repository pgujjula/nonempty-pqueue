-- SPDX-FileCopyrightText: Copyright Preetham Gujjula
-- SPDX-License-Identifier: BSD-3-Clause

module Main (main) where

import Data.List (genericTake)
import Test.Tasty.Bench

f :: Word -> Word
f n =
  let m :: Word
      m = 30 + n `quot` maxBound
   in sum (genericTake n (replicate 10 m))

main :: IO ()
main = defaultMain $
  flip map [(1 :: Int) .. 6] $ \i ->
    bench ("10^" ++ show i) (nf f (10 ^ i))
