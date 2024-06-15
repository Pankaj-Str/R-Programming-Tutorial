# R ifelse() Function Tutorial

Welcome to www.codeswithpankaj.com! In this tutorial, we will explore the `ifelse()` function in R. The `ifelse()` function is used for vectorized conditional evaluation, making it efficient for applying conditions to entire vectors or arrays.

## What is the ifelse() Function?

The `ifelse()` function evaluates a condition for each element in a vector or array and returns a value based on whether the condition is `TRUE` or `FALSE`. It provides a concise way to perform conditional operations on data structures.

### Syntax of ifelse() Function

The basic syntax of the `ifelse()` function is:

```R
ifelse(test, yes, no)
```

- `test`: A logical vector or scalar indicating whether the condition is true or false.
- `yes`: Value to be returned if `test` is `TRUE`.
- `no`: Value to be returned if `test` is `FALSE`.

### Example: Using ifelse() Function

Let's see a simple example to understand how `ifelse()` works:

```R
# Example of ifelse() function
x <- c(1, 5, -3, 7, -2)

result <- ifelse(x > 0, "Positive", "Negative or Zero")
print(result)
```

In this example:
- `x` is a numeric vector containing values `1, 5, -3, 7, -2`.
- `ifelse(x > 0, "Positive", "Negative or Zero")` checks each element of `x`.
- If an element of `x` is greater than `0`, `"Positive"` is returned; otherwise, `"Negative or Zero"` is returned.

### Nested ifelse() Statements

You can nest `ifelse()` statements to handle more complex conditions:

```R
# Nested ifelse() example
marks <- c(85, 70, 60, 95, 80)

result <- ifelse(marks >= 90, "A",
         ifelse(marks >= 80, "B",
         ifelse(marks >= 70, "C", "D")))

print(result)
```

In this example:
- `marks` is a vector of numeric values.
- The nested `ifelse()` statements check the value of `marks` against multiple conditions (`>= 90`, `>= 80`, `>= 70`) to assign grades `"A"`, `"B"`, `"C"`, or `"D"`.

### Using ifelse() with Functions

You can integrate `ifelse()` within functions to perform conditional operations based on function parameters or data:

```R
# Using ifelse() in a function
grade <- function(score) {
  return(ifelse(score >= 90, "A",
         ifelse(score >= 80, "B",
         ifelse(score >= 70, "C", "D"))))
}

# Test the function
print(grade(85))   # Output: "B"
print(grade(55))   # Output: "D"
```

### Handling Missing Values with ifelse()

The `ifelse()` function can handle missing values (`NA`) by specifying how to treat them in the `yes` or `no` arguments:

```R
# Handling NA values with ifelse()
values <- c(10, NA, 20, 30, NA)

result <- ifelse(is.na(values), "Missing", values * 2)
print(result)
```

In this example:
- `values` is a vector containing numeric values and `NA`.
- `ifelse(is.na(values), "Missing", values * 2)` doubles each non-NA value and replaces NA values with `"Missing"`.

## Conclusion

In this tutorial, we explored the `ifelse()` function in R, a powerful tool for performing vectorized conditional operations. We covered its syntax, usage in simple and nested conditions, integration within functions, and handling of missing values (`NA`). Mastering `ifelse()` allows for efficient and concise data manipulation based on dynamic conditions.

For more tutorials and guides, visit [www.codeswithpankaj.com](http://www.codeswithpankaj.com).

---

Happy coding!
