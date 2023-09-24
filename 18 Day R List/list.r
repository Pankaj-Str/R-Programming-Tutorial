# Creating a list with various data types
my_list <- list(name = "Alice", age = 30, scores = c(85, 92, 78), has_pet = TRUE)

# Accessing list elements by name
name <- my_list$name
age <- my_list$age

# Accessing list elements by position
first_score <- my_list[[3]][1]

# Modifying the list
my_list$city <- "New York"
my_list$age <- 31

# Removing an element from the list
my_list$city <- NULL

# Creating a nested list
nested_list <- list(person1 = list(name = "Bob", age = 25),
                    person2 = list(name = "Alice", age = 30))

# Accessing elements of the nested list
person1_name <- nested_list$person1$name
person2_age <- nested_list$person2$age

# Output
cat("Name:", name, "\n")
cat("Age:", age, "\n")
cat("First Score:", first_score, "\n")
cat("Modified List:\n")
print(my_list)
cat("Nested List:\n")
print(nested_list)
cat("Person1 Name:", person1_name, "\n")
cat("Person2 Age:", person2_age, "\n")
