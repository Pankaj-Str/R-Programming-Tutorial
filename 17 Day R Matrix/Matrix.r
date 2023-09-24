# Creating a numeric matrix
numeric_matrix <- matrix(data = 1:12, nrow = 3, ncol = 4)

# Creating a character matrix with row and column names
char_matrix <- matrix(data = c("A", "B", "C", "D"), nrow = 2, ncol = 2,
                      dimnames = list(c("Row1", "Row2"), c("Col1", "Col2")))

# Accessing elements of a matrix
element1 <- numeric_matrix[2, 3]  # Row 2, Column 3
element2 <- char_matrix[1, 2]     # Row 1, Column 2

# Transpose a matrix
transposed_matrix <- t(numeric_matrix)

# Element-wise operations
addition_matrix <- numeric_matrix + 10

# Combining matrices vertically
matrix3 <- matrix(13:16, nrow = 2)
combined_matrix <- rbind(numeric_matrix, matrix3)

# Output
cat("Numeric Matrix:\n")
print(numeric_matrix)
cat("\nCharacter Matrix:\n")
print(char_matrix)
cat("\nAccessed Element 1:", element1, "\n")
cat("Accessed Element 2:", element2, "\n")
cat("\nTransposed Matrix:\n")
print(transposed_matrix)
cat("\nMatrix After Addition:\n")
print(addition_matrix)
cat("\nCombined Matrix:\n")
print(combined_matrix)
