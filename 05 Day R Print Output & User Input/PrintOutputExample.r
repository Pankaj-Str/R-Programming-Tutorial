# Numeric Variable
x <- 42

# Character Variable
name <- "Alice"

# Logical Variable
is_student <- TRUE

# Vector Variable
numbers <- c(1, 2, 3, 4, 5)

# Printing using 'print()' function
print("Printing using 'print()' function:")
print(x)
print(name)
print(is_student)
print(numbers)

# Printing using 'cat()' function
cat("\nPrinting using 'cat()' function:\n")
cat("x:", x, "\n")
cat("Name:", name, "\n")
cat("Is Student:", is_student, "\n")
cat("Numbers:", numbers, "\n")

# Printing using 'paste()' function
cat("\nPrinting using 'paste()' function:\n")
paste_output <- paste("Name:", name, ", Age:", x)
cat(paste_output, "\n")

# Printing using 'sprintf()' function
cat("\nPrinting using 'sprintf()' function:\n")
sprintf_output <- sprintf("Name: %s, Age: %d", name, x)
cat(sprintf_output, "\n")
