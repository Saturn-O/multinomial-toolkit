# Binomial Probability Toolkit

#### Video Demo: <https://youtu.be/2gnTaWyo_SE>

---

## Overview

This R package provides reusable tools for working with multinomial distributions, including probability mass calculations, expected value, and covariance matrix. It was developed as part of a computational statistics training project and follows best practices in modular design, validation, and documentation.

---

## Functions Included

- `multinomial(k, p)` Calculates the probability of observing a specific outcome vector $k$ given the probability vector $p$: P(X = x) = n! / (x₁! * x₂! * ... * x_k!) * p₁^x₁ * p₂^x₂ * ... * p_k^x_k

- `multinomial_mean(n, p)` Returns the expected value vector for a multinomial distribution: E[X_i] = n * p_i

- `multinomial_covariance(n, p)` Computes the covariance matrix of the distribution:
  - If i == j: Cov(X_i, X_j) = n * p_i * (1 - p_i)
  - If i != j: Cov(X_i, X_j) = -n * p_i * p_j

---

## Usage Examples

`multinomial()`

```r
# Compute the probability of observing 2, 3, and 5 outcomes
multinomial(c(2, 3, 5), c(0.2, 0.3, 0.5))
# Output: 0.08505
```

`multinomial_mean()`

```r
# Expected counts for each category in 10 trials
multinomial_mean(10, c(0.2, 0.3, 0.5))
# Output: [1] 2 3 5
```

`multinomial_covariance()`

```r
# Covariance matrix for 10 trials with given probabilities
multinomial_covariance(10, c(0.2, 0.3, 0.5))
# Output:
#      [,1] [,2] [,3]
# [1,]  1.6 -0.6 -1.0
# [2,] -0.6  2.1 -1.5
# [3,] -1.0 -1.5  2.5
```

---

## Unit Testing

All core functions are tested using the testthat framework. Tests include:

Tests include:
- Correctness of probability outputs
- Validation error handling
- Matrix structure and symmetry
- Edge cases (e.g., zero probabilities, mismatched dimensions)

---

## Project Structure

<pre>
multinomial-toolkit/
├── R/                  # Core functions
├── man/                # Auto-generated documentation
├── tests/              # Unit tests using testthat
├── DESCRIPTION         # Package metadata
├── NAMESPACE           # Exported functions
├── README.md           # This file
</pre>

---

## Documentation
Function-level documentation is written using roxygen2 and includes:

- Parameter descriptions
- Return types
- Mathematical formulas
- Usage examples

---

## Author

**José Guillermo Hernández Armendáriz**
* Location: Chihuahua, Mexico
* Final Submission – CS50R, 2025
* GitHub: Saturn-O
* EdX: Memo_Hernandez
