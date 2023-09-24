# Example 1: Using a repeat loop to reverse a string
input_string <- "Hello, World!"
output_string <- ""
index <- nchar(input_string)

repeat {
  if (index == 0) {
    break  # Terminate the loop when the entire string is reversed
  }
  output_string <- paste(output_string, substr(input_string, index, index), sep = "")
  index <- index - 1
}

cat("Reversed String:", output_string, "\n")
