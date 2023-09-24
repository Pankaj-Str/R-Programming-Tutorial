# Example 2: Calculating the sum of numbers from 1 to 100 using a while loop
n <- 1
sum_numbers <- 0

while (n <= 100) {
  sum_numbers <- sum_numbers + n
  n <- n + 1
}

cat("Sum of numbers from 1 to 100:", sum_numbers, "\n")
