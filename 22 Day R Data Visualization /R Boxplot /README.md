# R Boxplot
```
Dataset to Create Boxplot
Create boxplot in R
Add Title, Label, New Color to a Boxplot in R
Boxplot Formula in R
Add Notch to Boxplot in R
example of all topic
```
Example that covers all the topics you mentioned: creating a boxplot, adding a title, labels, new colors, using a formula, and adding notches to a boxplot in R. We'll use the built-in "mtcars" dataset for this example:

```R
# Load the dataset
data(mtcars)

# Create a boxplot
boxplot(mpg ~ gear, data = mtcars, 
        main = "Boxplot of MPG by Gear",
        xlab = "Gear",
        ylab = "Miles per Gallon",
        col = "skyblue",   # Change boxplot color
        border = "purple", # Change border color
        notch = TRUE)      # Add notches

# Add a legend
legend("topright", legend = c("Gear 3", "Gear 4", "Gear 5"),
       fill = c("skyblue", "purple", "white"))
```

In this example:

1. We load the "mtcars" dataset, which contains information about various car models, including miles per gallon (mpg) and gear.
2. We create a boxplot of "mpg" grouped by "gear."
3. We add a title, labels for the x and y-axes, change the boxplot and border colors, and add notches to the boxes.
4. Finally, we add a legend to indicate the gear values.

You can run this code in an R environment to create and customize a boxplot based on your specific dataset and preferences.
![image](https://github.com/Pankaj-Str/R-Programming-Tutorial/assets/36913690/bb27f37e-f8e9-484e-87e5-740a35699708)
