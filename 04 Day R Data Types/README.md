# R Data Types Tutorial

Welcome to www.codeswithpankaj.com! In this tutorial, we will explore the different data types in R, an essential aspect of programming in this language. Understanding R's data types will enable you to manage and manipulate data efficiently.

## What are Data Types in R?

Data types in R define the kind of data that can be stored and manipulated within a variable. They determine the operations that can be performed on the data and how it is stored in memory.

### Primary Data Types in R

1. **Numeric**
2. **Integer**
3. **Complex**
4. **Character**
5. **Logical**
6. **Raw**

Let's examine each data type with examples.

### 1. Numeric

Numeric data type is used for numbers, which can be either integers or floating-point numbers.

**Example:**
```R
# Numeric (double)
num1 <- 42.5
print(num1)

# Integer
num2 <- 42L
print(num2)
```

### 2. Integer

Integer data type stores whole numbers. To explicitly declare an integer, append `L` to the number.

**Example:**
```R
# Integer
int_num <- 10L
print(int_num)
```

### 3. Complex

Complex data type is used for complex numbers, which have real and imaginary parts.

**Example:**
```R
# Complex number
comp_num <- 3 + 4i
print(comp_num)
```

### 4. Character

Character data type is used to store text (strings).

**Example:**
```R
# Single character
char1 <- "R"
print(char1)

# String
char2 <- "Welcome to www.codeswithpankaj.com"
print(char2)
```

### 5. Logical

Logical data type is used for Boolean values: `TRUE` or `FALSE`.

**Example:**
```R
# Logical value
is_true <- TRUE
print(is_true)

is_false <- FALSE
print(is_false)
```

### 6. Raw

Raw data type is used to store raw bytes.

**Example:**
```R
# Raw data
raw_data <- charToRaw("R")
print(raw_data)
```

## Compound Data Types in R

R also supports compound data types, which can store multiple values of the same or different types.

### 1. Vectors

Vectors are sequences of data elements of the same type. They can be numeric, character, or logical.

**Example:**
```R
# Numeric vector
num_vector <- c(1, 2, 3, 4, 5)
print(num_vector)

# Character vector
char_vector <- c("apple", "banana", "cherry")
print(char_vector)

# Logical vector
log_vector <- c(TRUE, FALSE, TRUE)
print(log_vector)
```

### 2. Lists

Lists can store different types of elements, including numbers, strings, vectors, and other lists.

**Example:**
```R
# List with different types of elements
my_list <- list(name = "Pankaj", age = 28, scores = c(85, 90, 95))
print(my_list)
```

### 3. Matrices

Matrices are two-dimensional arrays where each element has the same data type.

**Example:**
```R
# Numeric matrix
matrix_data <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)
print(matrix_data)
```

### 4. Data Frames

Data frames are tables or 2D arrays where each column can contain different types of data.

**Example:**
```R
# Data frame
data <- data.frame(
  name = c("John", "Jane", "Doe"),
  age = c(28, 34, 23),
  score = c(85, 90, 88)
)
print(data)
```

### 5. Factors

Factors are used to represent categorical data and store it as levels.

**Example:**
```R
# Factor
gender <- factor(c("male", "female", "male", "female"))
print(gender)
```

### 6. Arrays

Arrays can store data in more than two dimensions.

**Example:**
```R
# 3D Array
array_data <- array(1:24, dim = c(3, 4, 2))
print(array_data)
```

## Conclusion

In this tutorial, we explored the various data types available in R, including primary and compound data types. Understanding these data types is crucial for efficient data management and manipulation in R. Keep practicing to become proficient in handling different data types in your R programs.

For more tutorials and guides, visit [www.codeswithpankaj.com](http://www.codeswithpankaj.com).

---

Happy coding!
