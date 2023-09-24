# Example 2: Checking for Missing Values
data <- c(15, NA, 42, NA, 58)
is_missing <- ifelse(is.na(data), "Missing", "Not Missing")

# Print the result
cat("Missing Status:", is_missing, "\n")
