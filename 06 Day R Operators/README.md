# Tutorial on R Operators

**Website:** www.codeswithpankaj.com  
**Tutorial Name:** Codes With Pankaj

## Introduction

In R, operators are used to perform various operations on variables and values. These operations include arithmetic operations, comparisons, logical decisions, and assignment of values. This tutorial will cover the different types of operators available in R and provide examples to make the concepts clear and easy to understand.

## 01. Arithmetic Operators

Arithmetic operators are used to perform basic mathematical operations such as addition, subtraction, multiplication, and division.

### List of Arithmetic Operators

| Operator | Description       | Example      |
|----------|-------------------|--------------|
| `+`      | Addition          | `x + y`      |
| `-`      | Subtraction       | `x - y`      |
| `*`      | Multiplication    | `x * y`      |
| `/`      | Division          | `x / y`      |
| `^`      | Exponentiation    | `x ^ y`      |
| `%%`     | Modulus (remainder) | `x %% y`    |
| `%/%`    | Integer Division  | `x %/% y`    |

### Example:

```r
# Define two variables
x <- 10
y <- 3

# Perform arithmetic operations
add <- x + y  # Addition
subtract <- x - y  # Subtraction
multiply <- x * y  # Multiplication
divide <- x / y  # Division
exponent <- x ^ y  # Exponentiation
modulus <- x %% y  # Modulus
int_divide <- x %/% y  # Integer Division

# Print the results
add
subtract
multiply
divide
exponent
modulus
int_divide
```

### Explanation:

- `x + y` adds the values of `x` and `y`.
- `x - y` subtracts `y` from `x`.
- `x * y` multiplies `x` and `y`.
- `x / y` divides `x` by `y`.
- `x ^ y` raises `x` to the power of `y`.
- `x %% y` gives the remainder of the division of `x` by `y`.
- `x %/% y` gives the integer division result of `x` by `y`.

## 02. Relational Operators

Relational operators are used to compare two values. The result of a comparison is a logical value: either `TRUE` or `FALSE`.

### List of Relational Operators

| Operator | Description          | Example    |
|----------|----------------------|------------|
| `==`     | Equal to             | `x == y`   |
| `!=`     | Not equal to         | `x != y`   |
| `>`      | Greater than         | `x > y`    |
| `<`      | Less than            | `x < y`    |
| `>=`     | Greater than or equal to | `x >= y`|
| `<=`     | Less than or equal to | `x <= y`  |

### Example:

```r
# Define two variables
x <- 15
y <- 10

# Perform relational operations
equal <- x == y  # Check if x is equal to y
not_equal <- x != y  # Check if x is not equal to y
greater <- x > y  # Check if x is greater than y
less <- x < y  # Check if x is less than y
greater_equal <- x >= y  # Check if x is greater than or equal to y
less_equal <- x <= y  # Check if x is less than or equal to y

# Print the results
equal
not_equal
greater
less
greater_equal
less_equal
```

### Explanation:

- `x == y` checks if `x` is equal to `y`.
- `x != y` checks if `x` is not equal to `y`.
- `x > y` checks if `x` is greater than `y`.
- `x < y` checks if `x` is less than `y`.
- `x >= y` checks if `x` is greater than or equal to `y`.
- `x <= y` checks if `x` is less than or equal to `y`.

## 03. Logical Operators

Logical operators are used to perform logical operations, returning either `TRUE` or `FALSE`.

### List of Logical Operators

| Operator | Description          | Example    |
|----------|----------------------|------------|
| `&`      | Logical AND          | `x & y`    |
| `|`      | Logical OR           | `x | y`    |
| `!`      | Logical NOT          | `!x`       |
| `&&`     | Logical AND (short-circuit) | `x && y`|
| `||`     | Logical OR (short-circuit)  | `x || y`|

### Example:

```r
# Define two logical variables
x <- TRUE
y <- FALSE

# Perform logical operations
and_op <- x & y  # Logical AND
or_op <- x | y  # Logical OR
not_op <- !x  # Logical NOT

# Print the results
and_op
or_op
not_op
```

### Explanation:

- `x & y` returns `TRUE` if both `x` and `y` are `TRUE`.
- `x | y` returns `TRUE` if either `x` or `y` is `TRUE`.
- `!x` returns `TRUE` if `x` is `FALSE` and vice versa.

## 04. Assignment Operators

Assignment operators are used to assign values to variables in R.

### List of Assignment Operators

| Operator | Description          | Example    |
|----------|----------------------|------------|
| `<-`     | Assigns right side value to left side variable | `x <- 10` |
| `->`     | Assigns left side value to right side variable | `10 -> x` |
| `<<-`    | Assigns value in a parent environment (Global Assignment) | `x <<- 20`|
| `=`      | Another way to assign value | `x = 30` |

### Example:

```r
# Assign value to a variable
x <- 25  # Using <-
y = 15  # Using =

# Global assignment
z <<- 35

# Print the values
x
y
z
```

### Explanation:

- `x <- 25` assigns the value `25` to the variable `x`.
- `y = 15` assigns the value `15` to the variable `y`.
- `z <<- 35` assigns the value `35` to `z` in the global environment.

## 05. Miscellaneous Operators

R provides additional operators that perform various special operations.

### List of Miscellaneous Operators

| Operator | Description           | Example    |
|----------|-----------------------|------------|
| `:`      | Sequence operator     | `x <- 1:5` |
| `%in%`   | Membership operator   | `x %in% c(1, 2, 3)` |
| `%*%`    | Matrix multiplication | `A %*% B`  |

### Example:

```r
# Sequence operator
seq_op <- 1:10  # Generates a sequence from 1 to 10

# Membership operator
x <- 5
members <- x %in% c(1, 2, 3, 4, 5)  # Checks if x is in the list

# Matrix multiplication
A <- matrix(c(1, 2, 3, 4), nrow = 2)
B <- matrix(c(5, 6, 7, 8), nrow = 2)
matrix_mult <- A %*% B  # Multiplies matrix A and B

# Print the results
seq_op
members
matrix_mult
```

### Explanation:

- `1:10` creates a sequence from 1 to 10.
- `x %in% c(1, 2, 3, 4, 5)` checks if `x` is a member of the list `c(1, 2, 3, 4, 5)`.
- `A %*% B` performs matrix multiplication of matrices `A` and `B`.

## Conclusion

R operators are essential for performing a wide range of operations in R programming. Understanding how to use these operators effectively is crucial for solving complex problems and building robust data analysis pipelines. Practice with the examples provided, and soon you'll be comfortable using operators in your own R scripts.

For more tutorials and examples, visit www.codeswithpankaj.com.


