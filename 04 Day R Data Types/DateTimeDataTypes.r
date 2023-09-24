# Date Variable
birthdate <- as.Date("1995-03-15")

# Current Date
current_date <- Sys.Date()

# Time Variable (POSIXct)
current_time <- Sys.time()

# Formatting Dates
formatted_date <- format(birthdate, "%Y-%m-%d")
formatted_time <- format(current_time, "%Y-%m-%d %H:%M:%S")

# Date Arithmetic
age_years <- as.numeric(difftime(current_date, birthdate, units = "days") / 365)

# Print the results
cat("Date Variable (birthdate):", birthdate, "\n")
cat("Current Date:", current_date, "\n")
cat("Current Time (POSIXct):", current_time, "\n")
cat("Formatted Date:", formatted_date, "\n")
cat("Formatted Time:", formatted_time, "\n")
cat("Age in Years:", age_years, "\n")
