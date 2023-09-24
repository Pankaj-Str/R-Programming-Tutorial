# Example 2: Using next in a for loop to skip even numbers
for (i in 1:5) {
  if (i %% 2 == 0) {
    next  # Skip even numbers
  }
  cat("Value:", i, "\n")
}
