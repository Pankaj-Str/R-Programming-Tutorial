# Numeric Variable
age <- 25

# Character Variable
name <- "John"

# Logical Variable
is_student <- TRUE

# Vector Variable
scores <- c(85, 90, 78, 92, 88)

# Data Frame Variable
data <- data.frame(Name = c("Alice", "Bob", "Charlie"),
                   Age = c(28, 35, 22))

# Matrix Variable
mat <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)

# List Variable
person <- list(Name = "Alice", Age = 28, isStudent = TRUE)

# Factor Variable (Categorical Data)
gender <- factor(c("Male", "Female", "Male", "Female"))

# Date Variable
birthdate <- as.Date("1995-03-15")

# Complex Number Variable
complex_num <- 3 + 2i

# Printing the variables
cat("Numeric Variable (age):", age, "\n")
cat("Character Variable (name):", name, "\n")
cat("Logical Variable (is_student):", is_student, "\n")
cat("Vector Variable (scores):", scores, "\n")
cat("Data Frame Variable (data):\n")
print(data)
cat("Matrix Variable (mat):\n")
print(mat)
cat("List Variable (person):\n")
print(person)
cat("Factor Variable (gender):", gender, "\n")
cat("Date Variable (birthdate):", birthdate, "\n")
cat("Complex Number Variable (complex_num):", complex_num, "\n")
