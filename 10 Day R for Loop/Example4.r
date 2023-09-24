# Example 4: Generating the Fibonacci series using a for loop
n <- 10
fibonacci <- numeric(n)
fibonacci[1] <- 0
fibonacci[2] <- 1

for (i in 3:n) {
  fibonacci[i] <- fibonacci[i - 1] + fibonacci[i - 2]
}

cat("Fibonacci Series:", fibonacci, "\n")
