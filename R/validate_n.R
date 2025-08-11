#Validates the n independent trials value

validate_n <- function(n) {
  if (!is.numeric(n)) stop("n must be numeric.")
  if (length(n) != 1) stop("n must be a single value.")
  if (is.na(n) || is.infinite(n)) stop("n must be a finite, non-missing value.")
  if (n <= 0) stop("n must be a positive value.")
  if (n != floor(n)) stop("n must be an integer.")
  return(TRUE)
}
