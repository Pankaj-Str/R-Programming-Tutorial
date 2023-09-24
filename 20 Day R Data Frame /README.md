# R Data Frame

In R, a data frame is a two-dimensional data structure that resembles a table or a spreadsheet. It is one of the most commonly used data structures for handling and analyzing data because it can store data of different types (numeric, character, logical) in columns and rows. Data frames are particularly useful for representing structured data, such as datasets from spreadsheets or databases. Here are some key points and examples related to data frames in R:

**1. Creating Data Frames:**

You can create data frames in R using the `data.frame()` function. You provide vectors of data for each column, and each vector becomes a column in the data frame. Here's an example:

```R
# Creating a data frame
student_data <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David"),
  Age = c(25, 22, 24, 23),
  Grade = c("A", "B", "A", "C"),
  Passed = c(TRUE, TRUE, TRUE, FALSE)
)
```

**2. Accessing Data Frame Elements:**

You can access elements of a data frame using column names and row indices. Here are examples:

```R
# Accessing elements of a data frame
name1 <- student_data$Name[1]  # Accessing the first student's name
age3 <- student_data$Age[3]    # Accessing the age of the third student
```

**3. Modifying Data Frames:**

You can add, modify, or remove columns and rows in a data frame. Here are examples:

```R
# Adding a new column
student_data$City <- c("New York", "Los Angeles", "Chicago", "Houston")

# Modifying an existing column
student_data$Grade[4] <- "B"

# Removing a column
student_data$City <- NULL
```

**4. Data Frame Functions:**

R provides functions for working with data frames, such as `nrow()`, `ncol()`, `names()`, and `summary()`, which provides a summary of the data in the data frame.

```R
# Data frame functions
num_rows <- nrow(student_data)
num_cols <- ncol(student_data)
column_names <- names(student_data)
data_summary <- summary(student_data)
```

**5. Data Frame Type:**

Data frames in R can contain columns of different types, including numeric, character, and logical columns.

```R
# Creating a data frame with mixed data types
mixed_data <- data.frame(
  Name = c("Alice", "Bob"),
  Age = c(25, 30),
  Passed = c(TRUE, FALSE)
)
```

Data frames are widely used in R for data manipulation, exploration, and analysis. They provide a convenient and structured way to work with data, making them an essential part of data analysis in R.