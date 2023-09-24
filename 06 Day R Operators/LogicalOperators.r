# Logical Operators Example

# Logical Variables
is_true <- TRUE
is_false <- FALSE

# Logical NOT
logical_not <- !is_true

# Logical AND
logical_and <- is_true & is_false

# Logical OR
logical_or <- is_true | is_false

# Short-circuit AND
short_circuit_and <- is_true && is_false

# Short-circuit OR
short_circuit_or <- is_true || is_false

# Print the results
cat("Logical NOT (!is_true):", logical_not, "\n")
cat("Logical AND (is_true & is_false):", logical_and, "\n")
cat("Logical OR (is_true | is_false):", logical_or, "\n")
cat("Short-circuit AND (is_true && is_false):", short_circuit_and, "\n")
cat("Short-circuit OR (is_true || is_false):", short_circuit_or, "\n")
