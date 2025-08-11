#' Multinomial Probability Mass Function
#'
#' Computes the probability of observing a specific outcome vector
#' in a multinomial distribution given the number of trials and category probabilities.
#'
#' @param k Integer vector. Counts of outcomes for each category.
#' @param p Numeric vector. Probabilities for each category (must sum to 1).
#' @return Numeric. The probability of observing the outcome vector.
#' @examples
#' multinomial(c(2, 3, 5), c(0.2, 0.3, 0.5))
#' @export

multinomial <- function(k, p) {
  validate_inputs(k, p)
  n <- sum(k)
  result <- (factorial(n) / prod(factorial(k))) * prod(p^k)
  return(result)
}
