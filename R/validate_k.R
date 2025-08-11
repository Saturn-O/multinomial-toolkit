#Validates the k number of successes vector

validate_k <- function(k){
  if (!is.numeric(k)) stop("k must be numeric.")
  if (any(is.na(k))) stop("k must not contain NA values.")
  if (any(k<0)) stop("k must not contain negative values.")
  if (any(k != floor(k))) stop("k must contain only integer values.")
  return(TRUE)
}