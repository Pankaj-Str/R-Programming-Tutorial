# R pie chart

A pie chart is a circular statistical graphic, which is divided into slices to illustrate numerical proportion.

Pie charts represents data visually as a fractional part of a whole, which can be an effective communication tool.


1. **Create a Pie Chart in R:**

```R
# Sample data
data <- data.frame(
  category = c("Category A", "Category B", "Category C"),
  value = c(30, 45, 25)
)

# Create the pie chart
pie_chart <- pie(data$value, labels = data$category, col = c("red", "green", "blue"))
```

2. **Add a Title to a Pie Chart in R:**

```R
# Add a title to the pie chart
title("My Pie Chart")
```

3. **Add Labels to Each Pie Chart Slice in R:**

```R
# Add labels to the pie chart slices
pie_chart <- pie(data$value, labels = paste(data$category, data$value), col = c("red", "green", "blue"))
```

4. **Change the Color of Pie Slices in R:**

```R
# Change the colors of the pie chart slices
pie_chart <- pie(data$value, labels = data$category, col = c("orange", "purple", "pink"))
```

5. **Create a 3D Pie Chart in R:**

```R
# Create a 3D pie chart (requires the 'plotrix' package)
install.packages("plotrix")
library(plotrix)

# Sample data
data <- c(30, 45, 25)
labels <- c("Category A", "Category B", "Category C")
colors <- c("red", "green", "blue")

# Create the 3D pie chart
pie3D(data, labels = labels, explode = 0.1, col = colors)
```

You can run each of these code snippets separately in your R environment to achieve the desired tasks without having them all in a single file.


Example 

```R
# Load required libraries
library(ggplot2)
library(plotly)

# Sample data
data <- data.frame(
  category = c("Category A", "Category B", "Category C"),
  value = c(30, 45, 25)
)

# Basic Pie Chart
basic_pie_chart <- ggplot(data, aes(x = "", y = value, fill = category)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  ggtitle("Basic Pie Chart") +
  scale_fill_manual(values = c("Category A" = "red", "Category B" = "green", "Category C" = "blue")) +
  theme_void()

# Add Labels to Slices
labels_pie_chart <- basic_pie_chart +
  geom_text(aes(label = paste(category, value, "%"), x = 0.5, y = 0.5), position = position_stack(vjust = 0.5)) +
  theme_void()

# 3D Pie Chart
pie_3d <- plot_ly(data, labels = ~category, values = ~value, type = "pie", pull = c(0.1, 0, 0), marker = list(colors = c("red", "green", "blue"))) %>%
  layout(title = "3D Pie Chart")

# Display the pie charts
print(labels_pie_chart)
pie_3d

```