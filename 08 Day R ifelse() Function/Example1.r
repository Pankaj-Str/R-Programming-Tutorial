# Example 1: Categorizing Exam Scores
scores <- c(78, 92, 64, 88, 75)
grades <- ifelse(scores >= 90, "A", ifelse(scores >= 80, "B", ifelse(scores >= 70, "C", "D")))

# Print the result
cat("Grades:", grades, "\n")
