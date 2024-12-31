-- SPDX-FileCopyrightText: Copyright Preetham Gujjula
-- SPDX-License-Identifier: BSD-3-Clause

module Test.FibsMod (tests) where

import FibsMod (fibsMod)
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
        take 10 (fibsMod 1) @?= [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      testCase "mod 2" $
        take 10 (fibsMod 2) @?= [0, 1, 1, 0, 1, 1, 0, 1, 1, 0],
      testCase "mod 5" $
        take 10 (fibsMod 5) @?= [0, 1, 1, 2, 3, 0, 3, 3, 1, 4],
      testCase "mod 30" $
        take 10 (fibsMod 30) @?= [0, 1, 1, 2, 3, 5, 8, 13, 21, 4]
    ]
