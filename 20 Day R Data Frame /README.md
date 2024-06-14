# Data frames
### Data frames is a fundamental part of data manipulation and analysis in R. This tutorial will guide you through the basics of creating, inspecting, and manipulating data frames in R.

### What is a Data Frame?

A data frame is a table-like structure in R, where each column can contain different types of data (numeric, character, factor, etc.). It is similar to a spreadsheet or SQL table.

### Creating a Data Frame

#### Method 1: Using `data.frame()`

```r
# Create vectors
names <- c("Alice", "Bob", "Charlie")
ages <- c(25, 30, 35)
genders <- c("Female", "Male", "Male")

# Create a data frame
df <- data.frame(Name = names, Age = ages, Gender = genders)

# Print the data frame
print(df)
```

#### Method 2: Using `tibble` from the `tibble` package

```r
# Install tibble package if not already installed
install.packages("tibble")

# Load the tibble package
library(tibble)

# Create a tibble
df_tibble <- tibble(Name = names, Age = ages, Gender = genders)

# Print the tibble
print(df_tibble)
```

### Inspecting a Data Frame

#### View the Structure

```r
# View the structure of the data frame
str(df)
```

#### Summary Statistics

```r
# Get summary statistics
summary(df)
```

#### View the First and Last Few Rows

```r
# View the first few rows
head(df)

# View the last few rows
tail(df)
```

### Accessing Data Frame Elements

#### By Column Name

```r
# Access a single column
df$Name

# Access multiple columns
df[, c("Name", "Age")]
```

#### By Row and Column Indices

```r
# Access a single element
df[1, 2]

# Access a single row
df[1, ]

# Access a single column
df[, 2]
```

### Adding and Removing Columns

#### Adding a New Column

```r
# Add a new column
df$Height <- c(160, 175, 180)

# Print the updated data frame
print(df)
```

#### Removing a Column

```r
# Remove a column
df$Height <- NULL

# Print the updated data frame
print(df)
```

### Filtering Data

#### Using Logical Conditions

```r
# Filter rows where Age is greater than 28
df_filtered <- df[df$Age > 28, ]

# Print the filtered data frame
print(df_filtered)
```

### Sorting Data

```r
# Sort the data frame by Age
df_sorted <- df[order(df$Age), ]

# Print the sorted data frame
print(df_sorted)
```

### Merging Data Frames

#### Using `merge()`

```r
# Create another data frame
df2 <- data.frame(Name = c("Alice", "Bob", "David"), Salary = c(50000, 55000, 60000))

# Merge data frames
df_merged <- merge(df, df2, by = "Name", all = TRUE)

# Print the merged data frame
print(df_merged)
```

### Handling Missing Values

#### Identify Missing Values

```r
# Check for missing values
is.na(df)
```

#### Remove Rows with Missing Values

```r
# Remove rows with any missing values
df_no_na <- na.omit(df)

# Print the data frame without missing values
print(df_no_na)
```

#### Replace Missing Values

```r
# Replace NA with a specific value
df[is.na(df)] <- 0

# Print the data frame with replaced values
print(df)
```

### Conclusion

In this tutorial, we covered the basics of creating, inspecting, and manipulating data frames in R. This includes creating data frames using `data.frame()` and `tibble`, accessing and modifying data frame elements, filtering and sorting data, merging data frames, and handling missing values. Data frames are a powerful tool in R, allowing for flexible and efficient data manipulation, making them essential for data analysis and statistical modeling.
