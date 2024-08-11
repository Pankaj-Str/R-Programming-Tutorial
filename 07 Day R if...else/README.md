
# **Tutorial on R if...else Statement**

**Website Name**: [www.codeswithpankaj.com](http://www.codeswithpankaj.com)  
**Tutorial Name**: Codes With Pankaj

---

## **Table of Contents**

1. [Introduction to `if...else` Statements](#1-introduction-to-ifelse-statements)
2. [Basic `if` Statement](#2-basic-if-statement)
   - [Syntax](#syntax-1)
   - [Example](#example-1)
3. [`if...else` Statement](#3-ifelse-statement)
   - [Syntax](#syntax-2)
   - [Example](#example-2)
4. [`if...else if...else` Ladder](#4-ifelse-ifelse-ladder)
   - [Syntax](#syntax-3)
   - [Example](#example-3)
5. [Nested `if...else` Statements](#5-nested-ifelse-statements)
   - [Syntax](#syntax-4)
   - [Example](#example-4)
6. [Using `ifelse()` Function for Vectorized Operations](#6-using-ifelse-function-for-vectorized-operations)
   - [Syntax](#syntax-5)
   - [Example](#example-5)
7. [Common Mistakes and Best Practices](#7-common-mistakes-and-best-practices)
   - [Misusing `else` without `if`](#misusing-else-without-if)
   - [Best Practices](#best-practices)
8. [Summary and Conclusion](#8-summary-and-conclusion)

---

## **1. Introduction to `if...else` Statements**

The `if...else` statement is a fundamental control structure in R that allows you to execute different blocks of code based on certain conditions. This decision-making capability is essential in many programming scenarios, such as data analysis, automation, and algorithm development.

### **Why Use `if...else` Statements?**

- **Decision Making:** The `if...else` structure enables you to make decisions in your code, such as choosing which block of code to execute based on whether a condition is true or false.
- **Code Control:** It helps in controlling the flow of your code, allowing for more complex and flexible programming.
- **Flexibility:** You can handle different cases or inputs within your programs, making your code more dynamic and adaptable to different situations.

---

## **2. Basic `if` Statement**

The `if` statement is the simplest form of conditional statement. It checks a condition, and if the condition evaluates to `TRUE`, it executes the block of code inside the `if` statement.

### **Syntax**

The basic syntax of an `if` statement in R is as follows:

```r
if (condition) {
  # Code to execute if the condition is TRUE
}
```

Here:
- `condition` is a logical expression that returns `TRUE` or `FALSE`.
- The code block inside the braces `{}` is executed only if the condition evaluates to `TRUE`.

### **Example**

```r
x <- 5

if (x > 3) {
  print("x is greater than 3")
}
```

**Explanation:**  
In this example:
- The variable `x` is assigned the value `5`.
- The condition `x > 3` is checked. Since `5` is indeed greater than `3`, the condition evaluates to `TRUE`.
- As a result, the code block inside the `if` statement is executed, printing the message "x is greater than 3".

---

## **3. `if...else` Statement**

The `if...else` statement extends the functionality of the basic `if` statement by providing an alternative block of code to execute if the condition is false. This allows for a more robust decision-making process in your code.

### **Syntax**

The syntax for an `if...else` statement in R is as follows:

```r
if (condition) {
  # Code to execute if the condition is TRUE
} else {
  # Code to execute if the condition is FALSE
}
```

Here:
- The `else` block is executed only if the condition in the `if` statement evaluates to `FALSE`.

### **Example**

```r
x <- 2

if (x > 3) {
  print("x is greater than 3")
} else {
  print("x is not greater than 3")
}
```

**Explanation:**  
In this example:
- The variable `x` is assigned the value `2`.
- The condition `x > 3` is checked. Since `2` is not greater than `3`, the condition evaluates to `FALSE`.
- As a result, the code block inside the `else` statement is executed, printing the message "x is not greater than 3".

---

## **4. `if...else if...else` Ladder**

The `if...else if...else` ladder allows you to check multiple conditions in sequence. It evaluates each condition in order and executes the corresponding code block for the first condition that evaluates to `TRUE`. If none of the conditions are true, the code block in the `else` statement is executed.

### **Syntax**

The syntax for an `if...else if...else` ladder in R is as follows:

```r
if (condition1) {
  # Code to execute if condition1 is TRUE
} else if (condition2) {
  # Code to execute if condition2 is TRUE
} else {
  # Code to execute if all the above conditions are FALSE
}
```

Here:
- You can have multiple `else if` statements between the `if` and `else` blocks.
- The `else` block is optional but can be included to handle cases where none of the conditions are met.

### **Example**

```r
x <- 10

if (x > 15) {
  print("x is greater than 15")
} else if (x > 5) {
  print("x is greater than 5 but less than or equal to 15")
} else {
  print("x is less than or equal to 5")
}
```

**Explanation:**  
In this example:
- The variable `x` is assigned the value `10`.
- The first condition `x > 15` is checked. Since `10` is not greater than `15`, this condition evaluates to `FALSE`.
- The second condition `x > 5` is then checked. Since `10` is greater than `5`, this condition evaluates to `TRUE`.
- As a result, the corresponding code block is executed, printing the message "x is greater than 5 but less than or equal to 15".
- The subsequent conditions and the `else` block are not evaluated because one condition has already been met.

---

## **5. Nested `if...else` Statements**

Nested `if...else` statements occur when you place one `if...else` statement inside another. This allows you to evaluate multiple levels of conditions, providing a more detailed decision-making process.

### **Syntax**

The syntax for nested `if...else` statements in R is as follows:

```r
if (condition1) {
  if (condition2) {
    # Code to execute if both condition1 and condition2 are TRUE
  } else {
    # Code to execute if condition1 is TRUE but condition2 is FALSE
  }
} else {
  # Code to execute if condition1 is FALSE
}
```

Here:
- You can nest as many `if...else` statements as needed to evaluate multiple conditions.
- Ensure that each `if` statement is properly paired with an `else` block, if required.

### **Example**

```r
x <- 8
y <- 12

if (x > 5) {
  if (y > 10) {
    print("x is greater than 5 and y is greater than 10")
  } else {
    print("x is greater than 5 but y is not greater than 10")
  }
} else {
  print("x is not greater than 5")
}
```

**Explanation:**  
In this example:
- The variable `x` is assigned the value `8` and `y` is assigned the value `12`.
- The first condition `x > 5` is checked. Since `8` is greater than `5`, this condition evaluates to `TRUE`.
- The code then enters the nested `if` statement where the condition `y > 10` is checked. Since `12` is greater than `10`, this condition also evaluates to `TRUE`.
- As a result, the innermost code block is executed, printing the message "x is greater than 5 and y is greater than 10".

---

## **6. Using `ifelse()` Function for Vectorized Operations**

The `ifelse()` function in R is a vectorized version of the `if...else` statement. It is used to evaluate a condition over each element in a vector or other data structures and return a corresponding result for each element.

### **Syntax**

The syntax for the `ifelse()` function in R is as follows:

```r
ifelse(test_expression, value_if_true, value_if_false)
```

Here:
- `test_expression` is the condition to evaluate for each element in the vector.
- `value_if_true` is the value to return if the condition is `TRUE`.
- `value_if_false` is the value to return if the condition is `FALSE`.

### **Example**

```r
# Example with a vector


scores <- c(85, 90, 45, 78, 92)

grades <- ifelse(scores >= 50, "Pass", "Fail")
print(grades)
```

**Explanation:**  
In this example:
- The `scores` vector contains five numeric values representing student scores.
- The `ifelse()` function checks each element in the `scores` vector. If the score is greater than or equal to `50`, it assigns "Pass"; otherwise, it assigns "Fail".
- The resulting `grades` vector will be `["Pass", "Pass", "Fail", "Pass", "Pass"]`, indicating whether each student passed or failed based on their score.

---

## **7. Common Mistakes and Best Practices**

Understanding common mistakes and best practices when using `if...else` statements in R is essential for writing clean and efficient code.

### **Misusing `else` without `if`**

One common mistake is trying to use `else` without an accompanying `if` statement. This will result in a syntax error.

**Mistake Example:**

```r
else {
  print("This will cause an error")
}
```

**Explanation:**
- The `else` statement must always be paired with an `if` or `else if` statement.
- Using `else` on its own, as shown in the example, will cause an error because R does not know what condition the `else` block corresponds to.

### **Best Practices**

Here are some best practices to follow when using `if...else` statements in R:

- **Always Use Braces `{}`:** Even if you have a single statement in your `if` or `else` block, it's good practice to use braces for clarity and to avoid errors.
  
  **Example:**
  ```r
  if (x > 5) {
    print("x is greater than 5")
  }
  ```

- **Indentation:** Properly indenting your code makes it easier to read and understand the structure of your `if...else` statements.

- **Check for Edge Cases:** Ensure that your conditions handle edge cases, such as checking for `NA` or `NULL` values.
  
  **Example:**
  ```r
  if (!is.na(x) && x > 5) {
    print("x is greater than 5 and not NA")
  }
  ```

- **Use `ifelse()` for Vectorized Operations:** When working with vectors or data frames, consider using the `ifelse()` function for more efficient and concise code.

  **Example:**
  ```r
  result <- ifelse(x > 5, "Greater", "Lesser or Equal")
  ```

---

## **8. Summary and Conclusion**

This tutorial covered the essential aspects of the `if...else` statement in R, which is crucial for decision-making in your code. We explored the basic `if` statement, the `if...else` structure, the `if...else if...else` ladder, nested `if...else` statements, and the `ifelse()` function for vectorized operations.

### **Key Takeaways:**
- **Conditional Execution:** Use `if...else` to control the flow of your program based on conditions.
- **Vectorized Operations:** The `ifelse()` function is powerful for operations on vectors.
- **Best Practices:** Following best practices ensures that your code is clean, readable, and error-free.

The `Codes With Pankaj` tutorial on [www.codeswithpankaj.com](http://www.codeswithpankaj.com) aims to provide clear and concise explanations for university students. Practice these examples, try different conditions, and build confidence in using `if...else` statements in your R programming journey.
