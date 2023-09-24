# R Functions 

In R, functions are blocks of code that can be defined and reused to perform specific tasks or operations. Functions encapsulate a series of statements, accept input (arguments), and often return output values. Functions are a fundamental concept in R programming and are essential for modularizing code and making it more organized and reusable.

Here's the basic structure of defining and using a function in R:

```R
# Function definition
function_name <- function(arg1, arg2, ...) {
  # Function body: code to perform a specific task
  # You can use the arguments (arg1, arg2, ...) within the function
  
  # Return a value (optional)
  return(result)
}

# Function call
output <- function_name(arg1_value, arg2_value, ...)
```

Key components of a function:

- `function_name`: The name of the function you define.
- `arg1`, `arg2`, ...: Arguments or parameters that the function accepts. You can have zero or more arguments.
- `result`: The value the function returns (optional).
- `arg1_value`, `arg2_value`, ...: Actual values or expressions provided when calling the function.

Here's a simple example of a function that adds two numbers and returns the result:

```R
# Define a function to add two numbers
add_numbers <- function(x, y) {
  result <- x + y
  return(result)
}

# Call the function
sum_result <- add_numbers(5, 3)
cat("Sum:", sum_result, "\n")
```

In this example:

- `add_numbers` is the function name.
- `x` and `y` are the function's arguments.
- Inside the function, `result` is calculated as the sum of `x` and `y`.
- The `return(result)` statement returns the result.
- We call the function with values 5 and 3 and store the result in `sum_result`.

Functions can be much more complex and perform various operations, including data analysis, data manipulation, and generating outputs. They are a fundamental building block in writing structured and maintainable R code.

## Examples of different types of functions in R:

**1. Built-in Functions:**

```R
# Example of built-in functions
# Calculate the sum of a vector
numbers <- c(5, 10, 15, 20)
sum_result <- sum(numbers)
cat("Sum of numbers:", sum_result, "\n")

# Calculate the mean of a vector
mean_result <- mean(numbers)
cat("Mean of numbers:", mean_result, "\n")

# Find the length of a vector
length_result <- length(numbers)
cat("Length of vector:", length_result, "\n")
```

In this example, we use built-in functions `sum()`, `mean()`, and `length()` to perform basic operations on a numeric vector.

**2. User-Defined Function:**

```R
# Example of a user-defined function
# Define a function to calculate the area of a rectangle
calculate_rectangle_area <- function(length, width) {
  area <- length * width
  return(area)
}

# Call the user-defined function
rectangle_area <- calculate_rectangle_area(4, 6)
cat("Area of rectangle:", rectangle_area, "\n")
```

Here, we define a user-defined function `calculate_rectangle_area()` to calculate the area of a rectangle based on its length and width.

**3. Anonymous Function (Lambda Function):**

```R
# Example of an anonymous function
# Use lapply to square each element in a vector
numbers <- c(1, 2, 3, 4, 5)
squared_numbers <- lapply(numbers, function(x) x^2)
cat("Squared numbers:", unlist(squared_numbers), "\n")
```

In this example, we use an anonymous function within the `lapply()` function to square each element in a vector.

**4. Higher-Order Function:**

```R
# Example of a higher-order function
# Use sapply to apply a function to each element in a list
fruits_list <- list("apple", "banana", "cherry")
lengths <- sapply(fruits_list, length)
cat("Lengths of fruits:", lengths, "\n")
```

Here, we use the higher-order function `sapply()` to apply the `length()` function to each element in a list of fruits.

**5. Special-Purpose Function:**

```R
# Example of a special-purpose function
# Using dplyr's filter function to filter data
library(dplyr)

# Sample data frame
data <- data.frame(Name = c("Alice", "Bob", "Charlie", "David"),
                   Age = c(25, 30, 22, 35))

# Filter rows where Age is greater than 30
filtered_data <- filter(data, Age > 30)
print(filtered_data)
```

Here, we use the `filter()` function from the `dplyr` package to filter rows based on a condition in a data frame.

These examples illustrate different types of functions in R, including built-in functions, user-defined functions, anonymous functions, higher-order functions, and special-purpose functions.