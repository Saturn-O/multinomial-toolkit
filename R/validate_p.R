#Validates the p probabilities of successes vector

validate_p <- function(p){
  if (!is.numeric(p)) stop("p must be numeric.")
  if (any(is.na(p))) stop("p must not contain NA values.")
  if (any(p < 0 | p > 1)) stop("All values in p must be between 0 and 1.")
  if (abs(sum(p) - 1) > .Machine$double.eps^0.5) stop("The sum of p must be equal to 1.")
  return(TRUE)
}