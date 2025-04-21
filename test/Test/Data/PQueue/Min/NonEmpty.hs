-- SPDX-FileCopyrightText: Copyright Preetham Gujjula
-- SPDX-License-Identifier: BSD-3-Clause

module Test.Data.PQueue.Min.NonEmpty (tests) where

import Data.PQueue.Min.NonEmpty ()
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

tests :: TestTree
tests = testGroup "Data.PQueue.Min.NonEmpty" [placeholderTest]

placeholderTest :: TestTree
placeholderTest = testCase "placeholder" ((1 :: Int) @?= 1)
