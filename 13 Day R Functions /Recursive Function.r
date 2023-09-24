# Example of a recursive function to calculate factorial
calculate_factorial <- function(n) {
  if (n == 0 || n == 1) {
    return(1)
  } else {
    return(n * calculate_factorial(n - 1))
  }
}

# Calculate factorial of 5
factorial_of_5 <- calculate_factorial(5)
cat("Factorial of 5:", factorial_of_5, "\n")
