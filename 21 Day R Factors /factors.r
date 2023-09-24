# Creating a factor for car colors
car_colors <- c("Red", "Blue", "Green", "Red", "Blue")
factor_colors <- factor(car_colors)

# Viewing levels of the factor
color_levels <- levels(factor_colors)

# Displaying the levels
cat("Levels of the factor_colors:\n")
print(color_levels)

# Creating an ordered factor for education levels
education_levels <- c("High School", "Bachelor's", "Master's", "Ph.D.")
ordered_education <- factor(education_levels,
                            levels = c("High School", "Bachelor's", "Master's", "Ph.D."),
                            ordered = TRUE)

# Displaying the ordered factor
cat("\nOrdered Education Levels:\n")
print(ordered_education)

# Changing levels of a factor
new_levels <- c("Low", "Medium", "High")
levels(factor_colors) <- new_levels

# Displaying the factor with new levels
cat("\nFactor with New Levels:\n")
print(factor_colors)

# Creating a factor for survey responses
responses <- c("Agree", "Disagree", "Neutral", "Agree", "Strongly Disagree")
factor_responses <- factor(responses)

# Displaying a table of frequencies
cat("\nFrequency Table for Factor Responses:\n")
print(table(factor_responses))

# Summary statistics for the factor
cat("\nSummary of Factor Responses:\n")
print(summary(factor_responses))
