# R Vectors 
In R, a vector is a fundamental data structure that allows you to store and manipulate a collection of values of the same data type. Vectors can be used to store numbers, characters, logical values, and other data types. Here are some key points and examples related to vectors in R:

**1. Creating Vectors:**

You can create vectors in R using the `c()` function or by specifying a sequence of values within `c()`. Here are examples:

```R
# Creating numeric vectors
numeric_vector <- c(1, 2, 3, 4, 5)

# Creating character vectors
character_vector <- c("apple", "banana", "cherry")

# Creating logical vectors
logical_vector <- c(TRUE, FALSE, TRUE, FALSE)
```

**2. Vector Operations:**

You can perform various operations on vectors, such as arithmetic operations, element-wise comparisons, and logical operations. Here are examples:

```R
# Arithmetic operations on numeric vectors
vector1 <- c(1, 2, 3)
vector2 <- c(4, 5, 6)
result_addition <- vector1 + vector2
result_multiplication <- vector1 * vector2

# Element-wise comparisons on numeric vectors
comparison_result <- vector1 > vector2

# Logical operations on logical vectors
logical_result <- vector1 < 3 & vector2 >= 5
```

**3. Accessing Elements:**

You can access individual elements of a vector using indexing. In R, indexing starts from 1. Here are examples:

```R
# Accessing elements of a vector
numeric_vector <- c(10, 20, 30, 40, 50)
first_element <- numeric_vector[1]
third_element <- numeric_vector[3]
```

**4. Vector Functions:**

R provides functions for performing operations on vectors, such as finding the length, sum, mean, and other summary statistics. Here are examples:

```R
# Vector functions
numeric_vector <- c(10, 20, 30, 40, 50)
vector_length <- length(numeric_vector)
vector_sum <- sum(numeric_vector)
vector_mean <- mean(numeric_vector)
```

**5. Vectorized Operations:**

One of the strengths of R is its ability to perform vectorized operations, which means that many functions and operations can be applied to entire vectors at once without the need for explicit loops. This makes R efficient for data manipulation and analysis.

```R
# Vectorized operations
numeric_vector <- c(1, 2, 3, 4, 5)
square_vector <- numeric_vector^2
```

**6. Vector Attributes:**

Vectors can have attributes, such as names and data types. You can assign names to vector elements using the `names()` function:

```R
# Assigning names to vector elements
vector <- c(a = 10, b = 20, c = 30)
```

**7. Vector Types:**

In R, there are different types of vectors, including numeric vectors, character vectors, logical vectors, and factors (categorical vectors). Factors are used to represent categorical data.

```R
# Creating a factor
gender <- c("Male", "Female", "Male", "Female")
gender_factor <- factor(gender)
```

Vectors are a fundamental data structure in R, and they are widely used for data storage, manipulation, and analysis. Understanding how to create, manipulate, and work with vectors is essential for working with data in R.