# R Bar Plot
In R, you can create a bar plot to visualize the distribution or comparison of categorical data. Bar plots are commonly used to represent counts or frequencies of categories within a dataset. Here's how you can create a simple bar plot using the `barplot()` function:

Creating a bar plot in R is a straightforward process, and you can customize it according to your needs. Below, I'll provide examples for each of the tasks you mentioned:

```
Create Bar Plot in R
Add Title to a Bar Plot in R
Provide Labels to Axes in R
Provide Names for Each Bar of Bar Plot in R
Change Bar Color in R
Bar Texture in R
Make Bar Plot Horizontal in R
Stacked Bar Plot in R

```


**1. Create a Bar Plot in R:**

Here's how to create a basic bar plot in R:

```R
# Sample data for a bar plot
categories <- c("Category A", "Category B", "Category C", "Category D")
counts <- c(10, 25, 15, 30)

# Create a bar plot
barplot(counts, names.arg = categories, col = "red",
        main = "Bar Plot Example", xlab = "Categories", ylab = "Counts")
```
![image](https://github.com/Pankaj-Str/R-Programming-Tutorial/assets/36913690/438a32b2-d759-4832-9ed4-ca5c40303059)


**2. Add a Title to a Bar Plot:**

You can add a title to your bar plot using the `main` parameter, as shown in the previous example.

**3. Provide Labels to Axes:**

To add labels to the x and y axes, you can use the `xlab` and `ylab` parameters, respectively, as shown in the previous example.

**4. Provide Names for Each Bar:**

The names for each bar are added using the `names.arg` parameter, as shown in the previous example.

**5. Change Bar Color:**

You can change the color of the bars by specifying the `col` parameter. Here's an example with a different bar color:

```R
barplot(counts, names.arg = categories, col = "lightgreen",
        main = "Bar Plot Example", xlab = "Categories", ylab = "Counts")
```
![image](https://github.com/Pankaj-Str/R-Programming-Tutorial/assets/36913690/1c929f2e-8623-423a-9043-69ae4a412719)


**6. Bar Texture:**

To add texture to the bars, you can use the `density` parameter:

```R
barplot(counts, names.arg = categories, col = "black",
        main = "Bar Plot with Texture", xlab = "Categories", ylab = "Counts",
        density = c(10, 20, 30, 40))
```
![image](https://github.com/Pankaj-Str/R-Programming-Tutorial/assets/36913690/313622db-25ab-4c03-be41-6c8eb12c2b49)

**7. Make Bar Plot Horizontal:**

To create a horizontal bar plot, you can use the `horiz` parameter:

```R
barplot(counts, names.arg = categories, col = "lightcoral",
        main = "Horizontal Bar Plot", xlab = "Counts", ylab = "Categories",
        horiz = TRUE)
```

**8. Stacked Bar Plot:**

A stacked bar plot can be created using the `beside` parameter. Here's an example:

```R
# Data for stacked bar plot
data <- matrix(c(10, 5, 15, 10, 25, 10, 30, 15), nrow = 4, ncol = 4, byrow = TRUE)
colnames(data) <- categories

# Create a stacked bar plot
barplot(data, beside = TRUE, col = c("red", "blue", "green", "purple"),
        main = "Stacked Bar Plot Example", xlab = "Categories", ylab = "Counts",
        legend.text = TRUE)
```

These examples cover various aspects of creating and customizing bar plots in R. You can adjust the parameters to meet your specific needs and preferences.
