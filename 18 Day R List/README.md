
# R Lists

Lists in R are flexible data structures that can hold elements of different types, including vectors, matrices, data frames, or even other lists. This tutorial explains how to create, manipulate, and work with lists in R, with detailed examples.

## Step 1: Understanding Lists
- A list is a collection of objects (elements) that can have different data types (e.g., numeric, character, logical, or other lists).
- Unlike vectors, lists are not restricted to a single data type.
- Lists are useful for storing heterogeneous data, such as a dataset with mixed types.

**Example**: A list containing different types of data.
```R
my_list <- list(name = "Alice", age = 25, scores = c(90, 85, 88))
print(my_list)
# Output:
# $name
# [1] "Alice"
#
# $age
# [1] 25
#
# $scores
# [1] 90 85 88
```

## Step 2: Creating Lists
Lists are created using the `list()` function.

### Basic List Creation
```R
# Create a list with mixed types
student <- list(name = "Bob", age = 20, grades = c(85, 90, 95), is_active = TRUE)
print(student)
# Output:
# $name
# [1] "Bob"
#
# $age
# [1] 20
#
# $grades
# [1] 85 90 95
#
# $is_active
# [1] TRUE
```

### Nested Lists
Lists can contain other lists.
```R
nested_list <- list(
  person = list(name = "Charlie", age = 30),
  scores = list(midterm = 80, final = 85)
)
print(nested_list)
# Output:
# $person
# $person$name
# [1] "Charlie"
#
# $person$age
# [1] 30
#
# $scores
# $scores$midterm
# [1] 80
#
# $scores$final
# [1] 85
```

## Step 3: Accessing List Elements
List elements can be accessed using names, indices, or the `$` operator.

### Using Names with `$`
```R
# Access by name
print(student$name)
# Output: [1] "Bob"

print(student$grades)
# Output: [1] 85 90 95
```

### Using Single Brackets `[ ]`
- Returns a sublist.
```R
sublist <- student[1]
print(sublist)
# Output:
# $name
# [1] "Bob"
```

### Using Double Brackets `[[ ]]`
- Returns the element itself.
```R
name <- student[[1]]
print(name)
# Output: [1] "Bob"
```

### Accessing by Index and Name Combination
```R
# Access nested list element
print(nested_list$person$name)
# Output: [1] "Charlie"

# Using index
print(nested_list[[1]][[1]])
# Output: [1] "Charlie"
```

## Step 4: Modifying Lists
You can modify list elements by assigning new values.

### Modify an Element
```R
# Change the name
student$name <- "Alice"
print(student$name)
# Output: [1] "Alice"

# Modify grades
student$grades[1] <- 88
print(student$grades)
# Output: [1] 88 90 95
```

### Add a New Element
```R
# Add a new element
student$city <- "New York"
print(student)
# Output:
# $name
# [1] "Alice"
#
# $age
# [1] 20
#
# $grades
# [1] 88 90 95
#
# $is_active
# [1] TRUE
#
# $city
# [1] "New York"
```

### Remove an Element
- Use `NULL` to remove an element.
```R
student$city <- NULL
print(student)
# Output: (city is removed)
# $name
# [1] "Alice"
#
# $age
# [1] 20
#
# $grades
# [1] 88 90 95
#
# $is_active
# [1] TRUE
```

## Step 5: List Length
- Use `length()` to get the number of top-level elements in a list.
```R
print(length(student))
# Output: [1] 4
```

## Step 6: Combining Lists
- Use `c()` or `list()` to combine lists.
```R
list1 <- list(a = 1, b = 2)
list2 <- list(c = 3, d = 4)
combined <- c(list1, list2)
print(combined)
# Output:
# $a
# [1] 1
#
# $b
# [1] 2
#
# $c
# [1] 3
#
# $d
# [1] 4
```

## Step 7: Applying Functions to Lists
- Use `lapply()` or `sapply()` to apply functions to list elements.
  - `lapply()` returns a list.
  - `sapply()` attempts to simplify the result to a vector or matrix.

**Example**: Apply a function to list elements.
```R
num_list <- list(a = c(1, 2, 3), b = c(4, 5, 6))
# Calculate mean of each element
means <- lapply(num_list, mean)
print(means)
# Output:
# $a
# [1] 2
#
# $b
# [1] 5

# Simplify to vector
means_vec <- sapply(num_list, mean)
print(means_vec)
# Output:
#   a   b
#   2   5
```

## Step 8: Checking and Converting Lists
- Use `is.list()` to check if an object is a list.
- Use `as.list()` to convert an object to a list.
```R
# Check if it's a list
print(is.list(student))
# Output: [1] TRUE

# Convert vector to list
vec <- c(1, 2, 3)
vec_list <- as.list(vec)
print(vec_list)
# Output:
# [[1]]
# [1] 1
#
# [[2]]
# [1] 2
#
# [[3]]
# [1] 3
```

## Step 9: Handling Missing Values
- Lists can contain `NULL` or `NA` values.
- Use `is.null()` or `is.na()` to check.
```R
list_with_null <- list(a = 1, b = NULL, c = NA)
print(is.null(list_with_null$b))
# Output: [1] TRUE
print(is.na(list_with_null$c))
# Output: [1] TRUE
```

## Step 10: Practical Example
Create a list to store information about a project, modify it, and extract specific data.

```R
# Create a project list
project <- list(
  title = "Data Analysis",
  team = c("Alice", "Bob", "Charlie"),
  budget = 5000,
  details = list(start_date = "2025-01-01", end_date = "2025-06-30")
)

# Print the list
print(project)
# Output:
# $title
# [1] "Data Analysis"
#
# $team
# [1] "Alice"   "Bob"     "Charlie"
#
# $budget
# [1] 5000
#
# $details
# $details$start_date
# [1] "2025-01-01"
#
# $details$end_date
# [1] "2025-06-30"

# Modify budget
project$budget <- 6000

# Add a new element
project$status <- "In Progress"

# Extract team members
team <- project$team
print(team)
# Output: [1] "Alice"   "Bob"     "Charlie"

# Extract start date
start_date <- project$details$start_date
print(start_date)
# Output: [1] "2025-01-01"

# Apply function to team (e.g., length of names)
name_lengths <- sapply(project$team, nchar)
print(name_lengths)
# Output:
#   Alice   Bob Charlie
#       5     3       7
```

## Conclusion
Lists in R are powerful for handling heterogeneous data. Practice creating, accessing, and manipulating lists to master their use. For advanced tasks, explore combining lists with data frames or using `purrr` package functions for more flexible list operations.

