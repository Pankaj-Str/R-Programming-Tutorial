# Creating numeric, character, and logical vectors
numeric_vector <- c(1, 2, 3, 4, 5)
character_vector <- c("apple", "banana", "cherry")
logical_vector <- c(TRUE, FALSE, TRUE, FALSE)

# Performing operations on numeric vectors
vector1 <- c(1, 2, 3)
vector2 <- c(4, 5, 6)
result_addition <- vector1 + vector2
result_multiplication <- vector1 * vector2

# Accessing elements of a vector
fruit <- character_vector[2]

# Finding the length, sum, and mean of a numeric vector
vector_length <- length(numeric_vector)
vector_sum <- sum(numeric_vector)
vector_mean <- mean(numeric_vector)

# Element-wise comparisons on logical vectors
comparison_result <- logical_vector & c(TRUE, TRUE, FALSE, FALSE)

# Vectorized operations
numeric_vector <- c(1, 2, 3, 4, 5)
square_vector <- numeric_vector^2

# Assigning names to vector elements
named_vector <- c(a = 10, b = 20, c = 30)

# Creating a factor
gender <- c("Male", "Female", "Male", "Female")
gender_factor <- factor(gender)

# Output
cat("Numeric Vector:", numeric_vector, "\n")
cat("Character Vector:", character_vector, "\n")
cat("Logical Vector:", logical_vector, "\n")
cat("Result of Addition:", result_addition, "\n")
cat("Result of Multiplication:", result_multiplication, "\n")
cat("Accessed Element:", fruit, "\n")
cat("Length of Numeric Vector:", vector_length, "\n")
cat("Sum of Numeric Vector:", vector_sum, "\n")
cat("Mean of Numeric Vector:", vector_mean, "\n")
cat("Logical Comparison Result:", comparison_result, "\n")
cat("Vectorized Square:", square_vector, "\n")
cat("Named Vector:", named_vector, "\n")
cat("Gender Factor:", gender_factor, "\n")
