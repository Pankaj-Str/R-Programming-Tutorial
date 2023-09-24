# R if..else

In R, the `if...else` statement is used for conditional execution of code. It allows you to specify a condition, and based on whether that condition is `TRUE` or `FALSE`, different blocks of code will be executed. The basic syntax of the `if...else` statement in R is as follows:

```R
if (condition) {
  # Code to execute if the condition is TRUE
} else {
  # Code to execute if the condition is FALSE
}
```

Here's an example of how to use `if...else` in R:

```R
# Example 1: Simple if...else
x <- 10

if (x > 5) {
  cat("x is greater than 5.\n")
} else {
  cat("x is not greater than 5.\n")
}

# Example 2: Nested if...else
y <- 3

if (y > 5) {
  cat("y is greater than 5.\n")
} else if (y == 5) {
  cat("y is equal to 5.\n")
} else {
  cat("y is less than 5.\n")
}
```

In the first example, we check if the value of `x` is greater than 5. If it is, we print a message indicating that `x` is greater than 5. Otherwise, we print a message indicating that it's not.

In the second example, we use a nested `if...else` structure to check different conditions for the value of `y`. We first check if `y` is greater than 5, then if it's equal to 5, and finally, if neither of these conditions is met, we print a message indicating that `y` is less than 5.

You can also use `if...else` statements to control the flow of your program and make decisions based on conditions.