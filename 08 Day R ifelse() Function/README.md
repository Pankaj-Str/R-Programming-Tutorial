# R ifelse() Function

In R, the `ifelse()` function is a vectorized way to perform conditional operations. It allows you to apply a specified condition to each element of a vector or data frame and return a new vector or data frame based on the condition. The basic syntax of the `ifelse()` function is as follows:

```R
ifelse(test_expression, yes_expression, no_expression)
```

- `test_expression`: The condition to be tested. It can be a logical vector or expression.
- `yes_expression`: The value to be returned when the condition is `TRUE`.
- `no_expression`: The value to be returned when the condition is `FALSE`.

Here's an example of how to use the `ifelse()` function:

```R
# Example: Using ifelse() to categorize exam scores
scores <- c(78, 92, 64, 88, 75)
grades <- ifelse(scores >= 90, "A", ifelse(scores >= 80, "B", ifelse(scores >= 70, "C", "D")))

# Print the result
cat("Grades:", grades, "\n")
```

In this example, we have a vector `scores` representing exam scores. We use the `ifelse()` function to categorize the scores into grades ("A," "B," "C," or "D") based on the specified conditions. The result is stored in the `grades` vector, and we print the grades to the console.

The `ifelse()` function is particularly useful when you need to perform conditional operations on entire vectors or data frames, making it an efficient way to handle data based on conditions.