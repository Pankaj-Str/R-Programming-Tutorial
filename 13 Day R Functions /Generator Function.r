# Example of a generator function
library(generator)

fibonacci_generator <- function() {
  a <- 0
  b <- 1
  while (TRUE) {
    yield(a)
    c <- a + b
    a <- b
    b <- c
  }
}

fibonacci_sequence <- generator(fibonacci_generator)

# Generate the first 10 Fibonacci numbers
first_10_fibonacci <- head(fibonacci_sequence, 10)
cat("First 10 Fibonacci numbers:", first_10_fibonacci, "\n")
