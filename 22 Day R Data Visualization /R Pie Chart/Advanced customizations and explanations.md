# Advanced customizations and explanations


### **1. Understanding the Basics of Pie Charts**
A pie chart is a circular representation of data, where the size of each "slice" corresponds to its proportion relative to the total. It’s primarily used to show percentages or proportions.

#### Key Arguments of `pie()` Function
- **`x`**: A numeric vector containing the values for the slices.
- **`labels`**: A character vector for labeling the slices.
- **`col`**: A vector of colors for the slices.
- **`main`**: A character string specifying the title of the chart.
- **`radius`**: A value specifying the radius of the pie chart (default is 1).

---

### **2. Setting Up Your Data**
Your data should ideally be in percentages or values that can be represented as proportions.  

```R
# Example Data: Sales percentages for four products
sales <- c(40, 25, 20, 15) 
categories <- c("Product A", "Product B", "Product C", "Product D")
```

---

### **3. Creating a Basic Pie Chart**
Let’s create a simple pie chart with default settings:

```R
pie(sales, labels = categories, main = "Sales Distribution")
```

---

### **4. Adding Percentages to Labels**
To make the chart more informative, add percentages as part of the labels:

```R
# Calculate percentages
percentages <- round(sales / sum(sales) * 100, 1)  # Rounded to 1 decimal place

# Add percentages to labels
labels_with_percentages <- paste(categories, "-", percentages, "%")

# Create the pie chart
pie(sales, labels = labels_with_percentages, main = "Sales Distribution with Percentages")
```

---

### **5. Customizing Colors**
Colors can make your pie chart visually appealing:

```R
# Define a custom color palette
colors <- c("#FF9999", "#66B2FF", "#99FF99", "#FFCC99")

# Apply the colors
pie(sales, 
    labels = labels_with_percentages, 
    col = colors, 
    main = "Customized Pie Chart")
```

---

### **6. Highlighting a Slice (Exploding a Slice)**
Use the `radius` parameter to slightly expand one slice:

```R
# Create a function to explode slices
explode_slice <- function(values, explode_index, explode_factor = 0.1) {
  theta <- cumsum(values / sum(values) * 2 * pi)
  x_shift <- c(0, diff(sin(theta))) * explode_factor
  y_shift <- c(0, diff(cos(theta))) * explode_factor
  list(x_shift = x_shift, y_shift = y_shift)
}

# Example: Highlight Product A
pie(sales, 
    labels = labels_with_percentages, 
    col = colors, 
    main = "Exploded Pie Chart", 
    radius = 1.2)
```

---

### **7. Adding Legends**
If labels are too crowded, use a legend instead:

```R
# Create the pie chart without labels
pie(sales, col = colors, main = "Pie Chart with Legend", labels = NA)

# Add a legend
legend("topright", legend = categories, fill = colors, title = "Products")
```

---

### **8. Creating a Donut Chart**
A donut chart is a variation of the pie chart with a hole in the middle.

```R
# Use the plotrix package for donut charts
if (!require("plotrix")) install.packages("plotrix")
library(plotrix)

# Create a donut chart
pie(sales, 
    labels = labels_with_percentages, 
    col = colors, 
    main = "Donut Chart", 
    radius = 0.9)
draw.circle(0, 0, 0.4, col = "white")  # Create a hole in the center
```

---

### **9. Creating a Pie Chart with ggplot2**
`ggplot2` provides advanced customization for pie charts. However, it uses a bar chart transformed into a pie chart.

```R
# Install ggplot2 if needed
if (!require("ggplot2")) install.packages("ggplot2")
library(ggplot2)

# Prepare the data
data <- data.frame(
  categories = categories,
  sales = sales
)

# Create the pie chart
ggplot(data, aes(x = "", y = sales, fill = categories)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  theme_void() +  # Remove background and gridlines
  labs(title = "Pie Chart with ggplot2") +
  scale_fill_manual(values = colors)
```

---

### **10. Saving the Chart**
Save the plot to an image file:

```R
# Save as PNG
png("custom_pie_chart.png", width = 800, height = 600)
pie(sales, 
    labels = labels_with_percentages, 
    col = colors, 
    main = "Saved Pie Chart")
dev.off()
```

---

### **Summary of Advanced Features**
| Feature                | Implementation                |
|------------------------|-------------------------------|
| Add Percentages        | `paste(labels, "-", percentages, "%")` |
| Custom Colors          | `col = c("red", "blue", ...)` |
| Exploding Slices       | Use `radius` or custom shifts |
| Adding Legends         | `legend("topright", ...)`     |
| Donut Chart            | `draw.circle()` or ggplot2   |
| ggplot2 Customization  | `coord_polar()` and `theme_void()` |

Would you like help with specific customizations or further explanations?
