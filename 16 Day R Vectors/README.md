# R Vectors in Detail

**Introduction:**  
Vectors are one of the basic data structures in R and are fundamental to handling and processing data. A vector is a sequence of data elements of the same type, such as numbers, characters, or logical values. This tutorial explores creating, manipulating, and applying operations on vectors in R.

### 1. **Creating Vectors in R**

Vectors in R can be created using the `c()` function, which combines values into a vector.

```r
# Numeric vector
numeric_vector <- c(1, 2, 3, 4, 5)
print(numeric_vector)

# Character vector
character_vector <- c("apple", "banana", "cherry")
print(character_vector)

# Logical vector
logical_vector <- c(TRUE, FALSE, TRUE)
print(logical_vector)
```

### 2. **Types of Vectors**

R vectors can be of different types:
- **Numeric**: Contains decimal or integer values.
- **Character**: Holds text or string data.
- **Logical**: Contains TRUE or FALSE values.
- **Integer**: Stores whole numbers, created with `L` suffix.
- **Complex**: Holds complex numbers.

```r
integer_vector <- c(1L, 2L, 3L)         # Integer vector
complex_vector <- c(1+2i, 3-4i)         # Complex vector
print(integer_vector)
print(complex_vector)
```

### 3. **Accessing Vector Elements**

You can access elements in a vector by their index using square brackets `[]`. R uses 1-based indexing.

```r
vector <- c("a", "b", "c", "d", "e")
vector[1]      # Access first element
vector[2:4]    # Access elements from index 2 to 4
vector[c(1, 3, 5)]  # Access elements at specified positions
```

### 4. **Modifying Vectors**

Vectors in R are mutable, meaning you can change elements in a vector by accessing their indices.

```r
numeric_vector <- c(1, 2, 3, 4, 5)
numeric_vector[2] <- 10   # Change second element
print(numeric_vector)     # Output: 1 10 3 4 5
```

### 5. **Vector Operations**

#### Arithmetic Operations
R supports arithmetic operations on vectors, and operations are performed element-wise.

```r
a <- c(1, 2, 3)
b <- c(4, 5, 6)
a + b    # Addition: Output: 5 7 9
a * b    # Multiplication: Output: 4 10 18
a - b    # Subtraction: Output: -3 -3 -3
```

#### Logical Operations
Logical operations return a logical vector with comparisons done element-wise.

```r
a <- c(1, 2, 3)
b <- c(3, 2, 1)
a > b    # Output: FALSE FALSE TRUE
a == b   # Output: FALSE TRUE FALSE
```

### 6. **Common Vector Functions**

#### `length()`: Get Vector Length
Returns the number of elements in a vector.

```r
vector <- c("apple", "banana", "cherry")
length(vector)   # Output: 3
```

#### `sum()`, `mean()`, `min()`, `max()`: Summary Functions
These functions provide common summary statistics.

```r
numeric_vector <- c(1, 2, 3, 4, 5)
sum(numeric_vector)    # Output: 15
mean(numeric_vector)   # Output: 3
min(numeric_vector)    # Output: 1
max(numeric_vector)    # Output: 5
```

#### `sort()`: Sort Vector
Sorts elements in ascending or descending order.

```r
vector <- c(5, 2, 8, 1)
sort(vector)            # Output: 1 2 5 8
sort(vector, decreasing = TRUE)  # Output: 8 5 2 1
```

### 7. **Vector Recycling**

If vectors of different lengths are used in an operation, R "recycles" the shorter vector to match the length of the longer one.

```r
a <- c(1, 2, 3)
b <- c(4, 5)
a + b    # Output: 5 7 7 (b is recycled as c(4, 5, 4))
```

### 8. **Filtering Vectors**

Use logical conditions to filter elements within a vector.

```r
numeric_vector <- c(1, 2, 3, 4, 5)
numeric_vector[numeric_vector > 3]  # Output: 4 5
```

### Summary Table of R Vector Functions

| Function      | Description                            | Example                        |
|---------------|----------------------------------------|--------------------------------|
| `c()`         | Combine elements into a vector        | `c(1, 2, 3)`                   |
| `length()`    | Get number of elements in vector      | `length(vector)`               |
| `sum()`       | Sum of vector elements                | `sum(c(1, 2, 3))`              |
| `mean()`      | Mean of vector elements               | `mean(c(1, 2, 3))`             |
| `min()`       | Minimum value in vector               | `min(c(1, 2, 3))`              |
| `max()`       | Maximum value in vector               | `max(c(1, 2, 3))`              |
| `sort()`      | Sort elements in vector               | `sort(c(3, 1, 2))`             |
| `vector[i]`   | Access ith element                    | `vector[1]`                    |
| `vector[cond]`| Filter elements by condition          | `vector[vector > 2]`           |

This guide provides a comprehensive overview of vectors in R, from creation and access to various operations and functions. Use these concepts to work efficiently with vector data in R.
