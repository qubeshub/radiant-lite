context("Installed")

test_that("radiant.data", {
  expect_true("radiant.data" %in% installed.packages())
})
