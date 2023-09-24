# R Data types

In R, data types are essential for categorizing and processing different types of data. R has a variety of built-in data types to handle various data structures and values. Here are some of the primary data types in R:

1. **Numeric**: Numeric data types represent real numbers, including integers and floating-point numbers (decimals). Numeric values can be positive, negative, or zero.

   ```R
   x <- 42      # Integer
   y <- 3.1415  # Double (floating-point)
   ```

2. **Character**: Character data types store text and are enclosed in single or double quotation marks.

   ```R
   name <- "Alice"
   message <- 'Hello, World!'
   ```

3. **Logical**: Logical data types can have one of two values: `TRUE` or `FALSE`. They are often used for Boolean operations and conditions.

   ```R
   is_student <- TRUE
   is_adult <- FALSE
   ```

4. **Integer**: In addition to general numeric data types, R has a specific integer data type that represents whole numbers.

   ```R
   count <- as.integer(10)
   ```

5. **Complex**: Complex data types represent complex numbers with real and imaginary parts.

   ```R
   complex_num <- 3 + 2i
   ```

6. **Factor**: Factor data types are used to represent categorical data with predefined levels. They are particularly useful in statistical modeling.

   ```R
   gender <- factor(c("Male", "Female", "Male", "Female"))
   ```

7. **Date and Time**: R provides various date and time data types and classes, such as `Date`, `POSIXct`, and `POSIXlt`, for handling date and time information.

   ```R
   birthdate <- as.Date("1995-03-15")
   current_time <- Sys.time()
   ```

8. **Vector**: Vectors are one-dimensional arrays that can hold multiple values of the same data type. They are one of the fundamental data structures in R.

   ```R
   numbers <- c(1, 2, 3, 4, 5)
   ```

9. **List**: Lists are versatile data structures that can hold elements of different data types, including other lists. Lists are useful for creating complex data structures.

   ```R
   person <- list(Name = "Alice", Age = 28, isStudent = TRUE)
   ```

10. **Data Frame**: Data frames are two-dimensional data structures that resemble tables or spreadsheets. They consist of rows and columns and are often used to store structured data.

    ```R
    data <- data.frame(Name = c("Alice", "Bob", "Charlie"),
                       Age = c(28, 35, 22))
    ```

These are some of the primary data types in R. Understanding and working with these data types is fundamental for data analysis, statistical modeling, and programming in R. Each data type has specific functions and operations associated with it, allowing you to perform a wide range of data manipulation and analysis tasks.