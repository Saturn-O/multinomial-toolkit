#' Covariance Matrix of a Multinomial Distribution
#'
#' Computes the covariance matrix for the outcome counts of a multinomial distribution.
#'
#' @param n Integer. Number of trials.
#' @param p Numeric vector. Probabilities for each category (must sum to 1).
#' @return Matrix. Covariance matrix of the outcome counts.
#' @examples
#' multinomial_covariance(10, c(0.2, 0.3, 0.5))
#' @export

multinomial_covariance <- function(n, p) {
  validate_n(n)
  validate_p(p)

  k <- length(p)
  cov_matrix <- matrix(0, nrow = k, ncol = k)

  for (i in seq_len(k)) {
    for (j in seq_len(k)) {
      if (i == j) {
        cov_matrix[i, j] <- n * p[i] * (1 - p[i])
      } else {
        cov_matrix[i, j] <- -n * p[i] * p[j]
      }
    }
  }

  return(cov_matrix)
}
