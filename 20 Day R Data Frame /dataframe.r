# Creating a data frame
student_data <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David"),
  Age = c(25, 22, 24, 23),
  Grade = c("A", "B", "A", "C"),
  Passed = c(TRUE, TRUE, TRUE, FALSE)
)

# Accessing elements of the data frame
first_name <- student_data$Name[1]  # Accessing the first student's name
third_age <- student_data$Age[3]    # Accessing the age of the third student

# Displaying the original data frame
cat("Original Data Frame:\n")
print(student_data)

# Modifying the data frame
student_data$Grade[4] <- "B"  # Modifying the grade of the fourth student

# Adding a new column
student_data$City <- c("New York", "Los Angeles", "Chicago", "Houston")

# Displaying the modified data frame
cat("\nModified Data Frame:\n")
print(student_data)

# Data frame functions
num_rows <- nrow(student_data)
num_cols <- ncol(student_data)
column_names <- names(student_data)
data_summary <- summary(student_data)

# Output
cat("\nNumber of Rows:", num_rows, "\n")
cat("Number of Columns:", num_cols, "\n")
cat("Column Names:", column_names, "\n")
cat("\nData Summary:\n")
print(data_summary)
