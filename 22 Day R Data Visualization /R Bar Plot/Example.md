# Step-by-Step Tutorial: Reading Excel File and Creating Bar Plot in R

# Prerequisites:
# 1. Install required packages if not already installed
install.packages(c("readxl", "ggplot2"))

# Step 1: Load the necessary libraries
library(readxl)  # For reading Excel files
library(ggplot2) # For creating advanced plots

# Step 2: Read the Excel File
# Assume we have a file named "sales_data.xlsx" in the working directory
# The file contains columns: Product, Sales, Region

# Method 1: Basic read with readxl
sales_data <- read_excel("sales_data.xlsx")

# Method 2: If you want to specify a specific sheet
# sales_data <- read_excel("sales_data.xlsx", sheet = "Sheet1")

# Step 3: Basic Verification of Data
# View the first few rows of the data
print(head(sales_data))

# Check the structure of the dataframe
str(sales_data)

# Step 4: Create a Basic Bar Plot using ggplot2
# Bar plot of total sales by product
basic_bar_plot <- ggplot(sales_data, aes(x = Product, y = Sales)) +
  geom_bar(stat = "identity", fill = "blue") +
  labs(title = "Sales by Product",
       x = "Product",
       y = "Total Sales") +
  theme_minimal()

# Display the plot
print(basic_bar_plot)

# Step 5: Create a More Advanced Bar Plot
# Grouped bar plot by region
grouped_bar_plot <- ggplot(sales_data, aes(x = Product, y = Sales, fill = Region)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Sales by Product and Region",
       x = "Product",
       y = "Total Sales",
       fill = "Region") +
  theme_minimal() +
  scale_fill_brewer(palette = "Set1")

# Display the grouped plot
print(grouped_bar_plot)

# Step 6: Saving the Plots
# Save basic bar plot
ggsave("basic_sales_barplot.png", basic_bar_plot, width = 10, height = 6)

# Save grouped bar plot
ggsave("grouped_sales_barplot.png", grouped_bar_plot, width = 10, height = 6)

# Example Excel File Structure (for reference)
# Columns: Product | Sales | Region
# Row 1: Laptop    | 5000  | North
# Row 2: Phone     | 3000  | South
# Row 3: Tablet    | 4000  | East
# Row 4: Laptop    | 6000  | West

# Troubleshooting Tips:
# 1. Ensure readxl package is installed
# 2. Check working directory with getwd()
# 3. Use full file path if needed
# 4. Verify column names match exactly
