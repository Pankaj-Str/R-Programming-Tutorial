# **Tutorial on R Operators**

**Website Name**: [www.codeswithpankaj.com](http://www.codeswithpankaj.com)  
**Tutorial Name**: Codes With Pankaj

---

## **Introduction to R Operators**

Operators in R are symbols or keywords that tell the compiler to perform specific mathematical, logical, or relational operations on operands. Operators form the basis of any programming language, and R is no exception.

In this tutorial, we will cover the following types of operators in R:
1. Arithmetic Operators
2. Relational Operators
3. Logical Operators
4. Assignment Operators
5. Miscellaneous Operators

Each section will include detailed explanations and examples that are simple and easy to understand for university students.

---

### **1. Arithmetic Operators**

Arithmetic operators are used to perform basic mathematical operations such as addition, subtraction, multiplication, and division.

| Operator | Description               | Example               | Result |
|----------|---------------------------|-----------------------|--------|
| `+`      | Addition                  | `3 + 4`               | `7`    |
| `-`      | Subtraction               | `8 - 2`               | `6`    |
| `*`      | Multiplication            | `6 * 7`               | `42`   |
| `/`      | Division                  | `10 / 2`              | `5`    |
| `%%`     | Modulus                   | `11 %% 3`             | `2`    |
| `%/%`    | Integer Division          | `10 %/% 3`            | `3`    |
| `^`      | Exponentiation            | `2 ^ 3`               | `8`    |

#### **Example:**
```r
# Performing arithmetic operations in R
a <- 15
b <- 4

# Addition
result_add <- a + b
print(paste("Addition:", result_add))  # Output: Addition: 19

# Subtraction
result_sub <- a - b
print(paste("Subtraction:", result_sub))  # Output: Subtraction: 11

# Multiplication
result_mul <- a * b
print(paste("Multiplication:", result_mul))  # Output: Multiplication: 60

# Division
result_div <- a / b
print(paste("Division:", result_div))  # Output: Division: 3.75

# Modulus
result_mod <- a %% b
print(paste("Modulus:", result_mod))  # Output: Modulus: 3

# Exponentiation
result_exp <- a ^ b
print(paste("Exponentiation:", result_exp))  # Output: Exponentiation: 50625
```

### **2. Relational Operators**

Relational operators are used to compare two values. They return a logical value (`TRUE` or `FALSE`).

| Operator | Description           | Example      | Result  |
|----------|-----------------------|--------------|---------|
| `==`     | Equal to              | `5 == 5`     | `TRUE`  |
| `!=`     | Not equal to          | `5 != 3`     | `TRUE`  |
| `>`      | Greater than          | `7 > 3`      | `TRUE`  |
| `<`      | Less than             | `4 < 9`      | `TRUE`  |
| `>=`     | Greater than or equal | `5 >= 5`     | `TRUE`  |
| `<=`     | Less than or equal    | `3 <= 2`     | `FALSE` |

#### **Example:**
```r
# Using relational operators in R
x <- 10
y <- 15

# Greater than
result_gt <- x > y
print(paste("Is x greater than y?", result_gt))  # Output: Is x greater than y? FALSE

# Less than
result_lt <- x < y
print(paste("Is x less than y?", result_lt))  # Output: Is x less than y? TRUE

# Equal to
result_eq <- x == y
print(paste("Is x equal to y?", result_eq))  # Output: Is x equal to y? FALSE
```

### **3. Logical Operators**

Logical operators are used to combine or invert logical statements. The result is always a logical value (`TRUE` or `FALSE`).

| Operator | Description | Example          | Result |
|----------|-------------|------------------|--------|
| `&`      | AND         | `TRUE & FALSE`   | `FALSE`|
| `|`      | OR          | `TRUE | FALSE`   | `TRUE` |
| `!`      | NOT         | `!TRUE`          | `FALSE`|

#### **Example:**
```r
# Using logical operators in R
p <- TRUE
q <- FALSE

# Logical AND
result_and <- p & q
print(paste("p AND q:", result_and))  # Output: p AND q: FALSE

# Logical OR
result_or <- p | q
print(paste("p OR q:", result_or))  # Output: p OR q: TRUE

# Logical NOT
result_not <- !p
print(paste("NOT p:", result_not))  # Output: NOT p: FALSE
```

### **4. Assignment Operators**

Assignment operators are used to assign values to variables.

| Operator | Description          | Example      | Equivalent |
|----------|----------------------|--------------|------------|
| `<-`     | Assign left          | `x <- 5`     | `x = 5`    |
| `->`     | Assign right         | `5 -> x`     | `x = 5`    |
| `<<-`    | Global assignment    | `x <<- 10`   | -          |
| `=`      | Assign left          | `x = 20`     | -          |

#### **Example:**
```r
# Assigning values using assignment operators in R
x <- 25  # Assign 25 to x
y = 30  # Assign 30 to y

# Print values
print(paste("Value of x:", x))  # Output: Value of x: 25
print(paste("Value of y:", y))  # Output: Value of y: 30
```

### **5. Miscellaneous Operators**

R also provides some miscellaneous operators that are used in specific scenarios.

| Operator | Description                          | Example                  | Result |
|----------|--------------------------------------|--------------------------|--------|
| `:`      | Sequence operator                    | `1:5`                    | `1 2 3 4 5` |
| `%in%`   | Element in vector                    | `3 %in% c(1, 2, 3, 4)`   | `TRUE` |
| `%*%`    | Matrix multiplication                | `matrix(1:4, 2, 2) %*% matrix(1:4, 2, 2)` | - |

#### **Example:**
```r
# Using miscellaneous operators in R

# Sequence operator
sequence <- 1:5
print(paste("Sequence from 1 to 5:", toString(sequence)))  # Output: Sequence from 1 to 5: 1, 2, 3, 4, 5

# Element in vector
is_in_vector <- 3 %in% c(1, 2, 3, 4)
print(paste("Is 3 in the vector?", is_in_vector))  # Output: Is 3 in the vector? TRUE

# Matrix multiplication
matrix1 <- matrix(1:4, nrow=2, ncol=2)
matrix2 <- matrix(1:4, nrow=2, ncol=2)
result_matrix <- matrix1 %*% matrix2
print("Matrix multiplication result:")
print(result_matrix)
```

---

### **Conclusion**

This tutorial covered the fundamental R operators with simple examples, ensuring that university students can grasp the concepts with ease. The `Codes With Pankaj` tutorial on [www.codeswithpankaj.com](http://www.codeswithpankaj.com) aims to provide clear and concise explanations that aid in understanding the basics of R programming. 

