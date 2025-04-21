-- SPDX-FileCopyrightText: Copyright Preetham Gujjula
-- SPDX-License-Identifier: BSD-3-Clause

import qualified Test.Data.PQueue.Min.NonEmpty (tests)
import Test.Tasty (TestTree, defaultMain, testGroup)

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests =
  testGroup
    "nonempty-pqueue"
    [ Test.Data.PQueue.Min.NonEmpty.tests
    ]
