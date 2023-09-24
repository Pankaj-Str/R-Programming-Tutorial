# Factor Variable
gender <- factor(c("Male", "Female", "Male", "Female"))

# Levels of the Factor
levels(gender)

# Summary of the Factor
summary(gender)

# Frequency of Each Level
table(gender)

# Accessing Levels
first_gender <- gender[1]
second_gender <- gender[2]

# Reordering Levels
gender <- factor(gender, levels = c("Female", "Male"))

# Summary After Reordering
summary(gender)
