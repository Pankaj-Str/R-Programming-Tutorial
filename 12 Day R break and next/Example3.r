# Example 3: Using break in a while loop to exit when a condition is met
x <- 1

while (TRUE) {
  cat("Value:", x, "\n")
  if (x >= 5) {
    break  # Exit the loop when x is greater than or equal to 5
  }
  x <- x + 1
}
