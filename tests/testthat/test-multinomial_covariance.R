test_that("multinomial_covariance returns correct matrix", {
  result <- multinomial_covariance(10, c(0.2, 0.3, 0.5))
  expected <- matrix(c(
    1.6, -0.6, -1.0,
    -0.6,  2.1, -1.5,
    -1.0, -1.5,  2.5
  ), nrow = 3, byrow = TRUE)
  expect_equal(result, expected)
})

test_that("multinomial_covariance handles invalid input", {
  expect_error(multinomial_covariance(10, c(0.2, 0.3)),
               "The sum of p must be equal to 1.")
  expect_error(multinomial_covariance("ten", c(0.2, 0.3, 0.5)),
               "n must be numeric.")
})
