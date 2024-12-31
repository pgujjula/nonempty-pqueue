-- SPDX-FileCopyrightText: Copyright Preetham Gujjula
-- SPDX-License-Identifier: BSD-3-Clause

module Test.FibsMod (tests) where

import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

tests :: TestTree
tests =
  testGroup
    "FibsMod"
    [ fibsModTests
    ]

fibsModTests :: TestTree
fibsModTests =
  testGroup
    "fibsMod"
    [ testCase "mod 1" $
        replicate 10 (1 :: Int) @?= [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      testCase "mod 2" $
        replicate 10 (2 :: Int) @?= [0, 1, 1, 0, 1, 1, 0, 1, 1, 0],
      testCase "mod 5" $
        replicate 10 (5 :: Int) @?= [0, 1, 1, 2, 3, 0, 3, 3, 1, 4],
      testCase "mod 30" $
        replicate 10 (30 :: Int) @?= [0, 1, 1, 2, 3, 5, 8, 13, 21, 4]
    ]
