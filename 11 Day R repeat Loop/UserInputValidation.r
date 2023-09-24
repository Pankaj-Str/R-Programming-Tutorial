# Example 2: Using a repeat loop for user input validation
while (TRUE) {
  user_input <- as.numeric(readline("Enter a positive number: "))
  
  if (!is.na(user_input) && user_input > 0) {
    cat("You entered a valid positive number:", user_input, "\n")
    break  # Terminate the loop when valid input is provided
  } else {
    cat("Invalid input. Please enter a positive number.\n")
  }
}
