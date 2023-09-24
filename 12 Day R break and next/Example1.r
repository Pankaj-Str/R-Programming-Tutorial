# Example 1: Using break in a for loop to exit when a condition is met
for (i in 1:10) {
  if (i == 5) {
    break  # Exit the loop when i equals 5
  }
  cat("Value:", i, "\n")
}
