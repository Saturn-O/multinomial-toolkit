#' Expected Value of a Multinomial Distribution
#'
#' Calculates the expected number of occurrences for each category
#' in a multinomial distribution.
#'
#' @param n Integer. Number of trials.
#' @param p Numeric vector. Probabilities for each category (must sum to 1).
#' @return Numeric vector. Expected counts for each category.
#' @examples
#' multinomial_mean(10, c(0.2, 0.3, 0.5))
#' @export

multinomial_mean <- function(n, p) {
  validate_n(n)
  validate_p(p)
  mean_vector <- n * p
  return(mean_vector)
}
