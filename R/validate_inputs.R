# Validates that k and p vectors have the same length

validate_inputs <- function(k, p){
  validate_k(k)
  validate_p(p)
  if (length(k) != length(p)) stop("k and p must have the same length.")
  return(TRUE)
}