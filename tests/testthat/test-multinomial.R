test_that("multinomial returns correct probability", {
  expect_equal(multinomial(c(2, 3, 5), c(0.2, 0.3, 0.5)),
               choose(10, 2) * choose(8, 3) * choose(5, 5) *
                 0.2^2 * 0.3^3 * 0.5^5)
})

test_that("multinomial handles invalid input", {
  expect_error(multinomial(c(2, 3), c(0.5, 0.5, 0)),
               "k and p must have the same length.")
  expect_error(multinomial(c(2, 3, 5), c(0.2, 0.3, 0.6)),
               "The sum of p must be equal to 1.")
})
