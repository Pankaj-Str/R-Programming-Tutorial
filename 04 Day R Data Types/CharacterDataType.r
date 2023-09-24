# Character Variables
name <- "p4n"
greeting <- 'codeswithpankaj'

# Concatenation
full_greeting <- paste(greeting, "My name is", name)

# Subsetting characters
first_letter <- substr(name, 1, 1)
last_name <- substr(name, 3, 5)

# String manipulation
uppercase_name <- toupper(name)
lowercase_greeting <- tolower(greeting)

# Print the results
cat("Character Variable (name):", name, "\n")
cat("Character Variable (greeting):", greeting, "\n")
cat("Full Greeting:", full_greeting, "\n")
cat("First Letter:", first_letter, "\n")
cat("Last Name:", last_name, "\n")
cat("Uppercase Name:", uppercase_name, "\n")
cat("Lowercase Greeting:", lowercase_greeting, "\n")
