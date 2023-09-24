# Example of mapping and reducing functions
library(purrr)

# Square each element in a list
numbers <- list(1, 2, 3, 4, 5)
squared_numbers <- map(numbers, ~ .x^2)
cat("Squared numbers:", unlist(squared_numbers), "\n")

# Calculate the product of all elements in a vector
product_result <- reduce(c(1, 2, 3, 4, 5), `*`)
cat("Product of numbers:", product_result, "\n")
