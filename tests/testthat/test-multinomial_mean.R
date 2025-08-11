test_that("multinomial_mean returns expected values", {
  expect_equal(multinomial_mean(10, c(0.2, 0.3, 0.5)), c(2, 3, 5))
})

test_that("multinomial_mean handles invalid input", {
  expect_error(multinomial_mean("ten", c(0.2, 0.3, 0.5)),
               "n must be numeric.")
  expect_error(multinomial_mean(10, c(0.2, 0.3)),
               "The sum of p must be equal to 1.")
})
