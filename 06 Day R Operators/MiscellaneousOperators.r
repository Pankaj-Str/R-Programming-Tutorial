# Miscellaneous Operators Example

# Numeric Vector
numbers <- c(1, 2, 3, 4, 5)

# %in% Operator
is_present <- 5 %in% numbers

# : Operator
sequence <- 1:5

# %*% Operator (Matrix Multiplication)
matrix1 <- matrix(c(1, 2, 3, 4), nrow = 2)
matrix2 <- matrix(c(5, 6, 7, 8), nrow = 2)
matrix_product <- matrix1 %*% matrix2

# %% Operator (Modulus)
remainder <- 10 %% 3

# %/% Operator (Integer Division)
integer_quotient <- 10 %/% 3

# Print the results
cat("Using %in% Operator:\n")
cat("Is 5 present in numbers?", is_present, "\n")

cat("\nUsing : Operator:\n")
cat("Sequence 1:5:", sequence, "\n")

cat("\nUsing %*% Operator (Matrix Multiplication):\n")
cat("Matrix 1:\n", matrix1, "\n")
cat("Matrix 2:\n", matrix2, "\n")
cat("Matrix Product:\n", matrix_product, "\n")

cat("\nUsing %% Operator (Modulus):\n")
cat("Remainder of 10 divided by 3:", remainder, "\n")

cat("\nUsing %/% Operator (Integer Division):\n")
cat("Integer quotient of 10 divided by 3:", integer_quotient, "\n")
