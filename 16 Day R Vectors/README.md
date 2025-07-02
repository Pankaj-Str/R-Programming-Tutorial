
# R Vectors

Vectors are fundamental data structures in R, used to store elements of the same data type. This tutorial explains vectors in detail, including creation, manipulation, and common operations, with examples.

## Step 1: Understanding Vectors
- A vector is a one-dimensional array that holds elements of the same type (numeric, character, logical, etc.).
- Vectors are the building blocks of data in R, used in data frames, matrices, and more.
- R supports six types of atomic vectors: numeric (double), integer, character, logical, complex, and raw.

**Example**: A numeric vector storing ages.
```R
ages <- c(25, 30, 35, 40)
print(ages)
# Output: [1] 25 30 35 40
```

## Step 2: Creating Vectors
Vectors are created using the `c()` function (combine) or other specialized functions.

### Using `c()` Function
- Combines elements into a vector.
```R
# Numeric vector
numbers <- c(1, 2, 3, 4, 5)
print(numbers)
# Output: [1] 1 2 3 4 5

# Character vector
fruits <- c("apple", "banana", "orange")
print(fruits)
# Output: [1] "apple"  "banana" "orange"

# Logical vector
bools <- c(TRUE, FALSE, TRUE)
print(bools)
# Output: [1]  TRUE FALSE  TRUE
```

### Using Sequence Functions
- `seq()`: Creates a sequence with specified increments.
- `:` operator: Creates a sequence with an increment of 1.
```R
# Using :
seq1 <- 1:5
print(seq1)
# Output: [1] 1 2 3 4 5

# Using seq()
seq2 <- seq(from = 1, to = 10, by = 2)
print(seq2)
# Output: [1] 1 3 5 7 9
```

### Using `rep()` Function
- Repeats elements or vectors.
```R
# Repeat a single value
rep1 <- rep(5, times = 3)
print(rep1)
# Output: [1] 5 5 5

# Repeat a vector
rep2 <- rep(c(1, 2), times = 2)
print(rep2)
# Output: [1] 1 2 1 2
```

## Step 3: Vector Types and Coercion
- Vectors must contain elements of the same type. If mixed types are provided, R coerces them to a common type (e.g., numeric to character).
- Use `typeof()` or `class()` to check the vector type.

**Example**: Coercion in action.
```R
mixed <- c(1, "two", 3)
print(mixed)
# Output: [1] "1"   "two" "3"
typeof(mixed)
# Output: [1] "character"
```

- Explicit coercion using `as.*()` functions:
```R
# Convert numeric to character
num <- c(1, 2, 3)
char <- as.character(num)
print(char)
# Output: [1] "1" "2" "3"

# Convert character to numeric
char_nums <- c("1", "2", "3")
nums <- as.numeric(char_nums)
print(nums)
# Output: [1] 1 2 3
```

## Step 4: Accessing and Modifying Vectors
- Use indexing to access or modify elements.
- Indexing in R starts at 1 (not 0).

### Accessing Elements
```R
vec <- c(10, 20, 30, 40, 50)

# Access single element
print(vec[2])
# Output: [1] 20

# Access multiple elements
print(vec[c(1, 3, 5)])
# Output: [1] 10 30 50

# Access using negative indices (excludes those positions)
print(vec[-2])
# Output: [1] 10 30 40 50
```

### Modifying Elements
```R
# Modify a single element
vec[2] <- 25
print(vec)
# Output: [1] 10 25 30 40 50

# Modify multiple elements
vec[c(1, 3)] <- c(100, 300)
print(vec)
# Output: [1] 100  25 300  40  50
```

## Step 5: Vector Operations
R supports vectorized operations, meaning operations are applied element-wise without explicit loops.

### Arithmetic Operations
```R
vec1 <- c(1, 2, 3)
vec2 <- c(4, 5, 6)

# Addition
print(vec1 + vec2)
# Output: [1] 5 7 9

# Multiplication
print(vec1 * 2)
# Output: [1] 2 4 6
```

### Logical Operations
```R
# Logical comparison
print(vec1 > 2)
# Output: [1] FALSE FALSE  TRUE

# Element-wise logical AND
print(vec1 > 1 & vec2 < 6)
# Output: [1]  TRUE  TRUE FALSE
```

### Statistical Operations
```R
nums <- c(10, 20, 30, 40, 50)

# Sum, mean, min, max
print(sum(nums))
# Output: [1] 150
print(mean(nums))
# Output: [1] 30
print(min(nums))
# Output: [1] 10
print(max(nums))
# Output: [1] 50
```

## Step 6: Named Vectors
- Assign names to vector elements for better readability.
```R
scores <- c(85, 90, 95)
names(scores) <- c("Alice", "Bob", "Charlie")
print(scores)
# Output: Alice    Bob Charlie 
#         85      90      95 

# Access by name
print(scores["Bob"])
# Output: Bob 
#         90
```

## Step 7: Vector Length and Combining
- Use `length()` to get the number of elements.
- Combine vectors using `c()`.

```R
vec <- c(1, 2, 3)
print(length(vec))
# Output: [1] 3

# Combine vectors
vec3 <- c(vec, c(4, 5))
print(vec3)
# Output: [1] 1 2 3 4 5
```

## Step 8: Subsetting with Logical Vectors
- Use logical vectors to filter elements.
```R
nums <- c(10, 20, 30, 40, 50)
filter <- nums > 25
print(nums[filter])
# Output: [1] 30 40 50
```

## Step 9: Handling Missing Values
- Missing values are represented by `NA`.
- Use `is.na()` to detect them.
```R
vec <- c(1, NA, 3, NA, 5)
print(is.na(vec))
# Output: [1] FALSE  TRUE FALSE  TRUE FALSE

# Remove NA values
print(na.omit(vec))
# Output: [1] 1 3 5
```

## Step 10: Practical Example
Create a vector of student grades, calculate the average, and filter students who passed (grade >= 60).

```R
# Create named vector
grades <- c(Alice = 85, Bob = 55, Charlie = 90, Diana = 60)
print(grades)
# Output: Alice    Bob Charlie  Diana 
#         85      55      90      60 

# Calculate average
avg <- mean(grades)
print(avg)
# Output: [1] 72.5

# Filter passing grades
passing <- grades[grades >= 60]
print(passing)
# Output: Alice Charlie  Diana 
#         85      90      60 
```

## Conclusion
Vectors are essential for data manipulation in R. Practice creating, indexing, and performing operations on vectors to master their use. For further exploration, try combining vectors with other R data structures like lists or data frames.

