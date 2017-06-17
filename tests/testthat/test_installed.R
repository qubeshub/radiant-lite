context("Installed")

test_that("serenity.data", {
  expect_true("serenity.data" %in% installed.packages())
})
