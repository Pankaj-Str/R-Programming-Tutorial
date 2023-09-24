# Creating a 3-dimensional array
data_array <- array(1:24, dim = c(3, 4, 2),
                    dimnames = list(c("A", "B", "C"), c("X", "Y", "Z"), c("M", "N")))

# Accessing elements of the array
element1 <- data_array[1, 2, 1]  # Accessing element at (1, 2, 1)
element2 <- data_array["A", "Y", "M"]  # Accessing element by dimension names

# Displaying the original array
cat("Original Array:\n")
print(data_array)

# Transposing the array (changing the order of dimensions)
transposed_array <- aperm(data_array, c(3, 2, 1))

# Displaying the transposed array
cat("\nTransposed Array:\n")
print(transposed_array)

# Accessing elements of the transposed array
transposed_element1 <- transposed_array[1, 2, 1]
transposed_element2 <- transposed_array["M", "Y", "A"]

# Output
cat("\nElement 1 in Original Array:", element1, "\n")
cat("Element 2 in Original Array:", element2, "\n")
cat("\nElement 1 in Transposed Array:", transposed_element1, "\n")
cat("Element 2 in Transposed Array:", transposed_element2, "\n")
