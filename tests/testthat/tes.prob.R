
context("Correct output")

test_that("max prob is always higher than min prob",{
  expect_gt(churn.prob(,15653251), churn.prob(,15662641))
})



