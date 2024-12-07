# Create a pie chart  

---

## **Step 1: Install and Load Necessary Packages**
R has built-in functions for creating pie charts, so no extra package is required. However, for customization, you might use `ggplot2`. For this tutorial, we will use base R.

---

## **Step 2: Create the Data**
We need a vector with numerical values representing the pie chart's segments and optionally labels for those segments.  

```R
# Example data
values <- c(40, 25, 20, 15) # Percentages
labels <- c("Category A", "Category B", "Category C", "Category D")
```

---

## **Step 3: Create a Basic Pie Chart**
The `pie()` function is used to create a pie chart in R.  

```R
# Basic pie chart
pie(values, labels)
```

---

## **Step 4: Add Labels and Colors**
You can make your pie chart more informative by adding colors and labels.  

```R
# Add colors and labels
colors <- c("red", "blue", "green", "yellow")

pie(values, 
    labels = paste(labels, "-", values, "%"), 
    col = colors, 
    main = "Distribution of Categories")
```

---

## **Step 5: Explode a Slice (Optional)**
You can "explode" a specific slice to emphasize it using the `pie()` function's `explode` parameter.  

```R
# Exploding Category A slice
pie(values, 
    labels = labels, 
    col = colors, 
    main = "Exploded Pie Chart", 
    radius = 1)
```

---

## **Step 6: Save the Pie Chart**
To save your chart as an image file, use `png()`, `jpeg()`, or similar functions.  

```R
# Save pie chart as a PNG file
png("pie_chart.png")
pie(values, 
    labels = paste(labels, "-", values, "%"), 
    col = colors, 
    main = "Saved Pie Chart")
dev.off()
```

---

## **Full Example Code**

```R
# Data
values <- c(40, 25, 20, 15)
labels <- c("Category A", "Category B", "Category C", "Category D")
colors <- c("red", "blue", "green", "yellow")

# Basic pie chart
pie(values, labels)

# Enhanced pie chart with labels, colors, and title
pie(values, 
    labels = paste(labels, "-", values, "%"), 
    col = colors, 
    main = "Distribution of Categories")
```

---

