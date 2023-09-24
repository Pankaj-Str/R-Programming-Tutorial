# Example 3: Categorizing Ages
ages <- c(25, 35, 42, 18, 60)
age_category <- ifelse(ages < 18, "Child", ifelse(ages < 65, "Adult", "Senior"))

# Print the result
cat("Age Categories:", age_category, "\n")
