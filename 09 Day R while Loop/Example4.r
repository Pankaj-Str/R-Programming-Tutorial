# Example 4: User input validation using a while loop
user_input <- -1

while (user_input < 0) {
  user_input <- as.numeric(readline("Enter a positive number: "))
  if (user_input < 0) {
    cat("Invalid input. Please enter a positive number.\n")
  }
}

cat("You entered:", user_input, "\n")
