# Task 1: Create a data frame with 10 employees' details
employees <- data.frame(
  Name = c("John", "Emma", "Liam", "Olivia", "Sophia", "Noah", "Ava", "James", "Isabella", "Lucas"),
  Salary = c(45000, 60000, 52000, 48000, 75000, 47000, 82000, 58000, 68000, 73000),
  Department = c("IT", "HR", "Finance", "IT", "Marketing", "Finance", "HR", "Marketing", "IT", "Finance")
)

# Display employees with a salary greater than 50,000
high_salary_employees <- employees[employees$Salary > 50000, ]
print("Employees with salary greater than 50,000:")
print(high_salary_employees)

# Task 2: Add a new column for performance ratings
employees$Performance_Rating <- c(3, 4, 5, 2, 5, 3, 4, 5, 4, 5)
print("Updated data frame with performance ratings:")
print(employees)

# Task 3: Merge two data frames based on product IDs
# Creating two data frames for products and sales
products <- data.frame(
  Product_ID = c(101, 102, 103, 104, 105),
  Product_Name = c("Laptop", "Mouse", "Keyboard", "Monitor", "Printer")
)

sales <- data.frame(
  Product_ID = c(103, 101, 105, 102, 104),
  Units_Sold = c(15, 10, 5, 20, 8)
)

merged_data <- merge(products, sales, by = "Product_ID")
print("Merged data frame:")
print(merged_data)

# Task 4: Sort a data frame containing weather data by temperature in ascending order
weather <- data.frame(
  City = c("New York", "Los Angeles", "Chicago", "Houston", "Phoenix"),
  Temperature = c(55, 75, 48, 68, 85)
)

sorted_weather <- weather[order(weather$Temperature), ]
print("Weather data sorted by temperature:")
print(sorted_weather)
