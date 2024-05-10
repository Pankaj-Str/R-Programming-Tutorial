# R ifelse() Function

In R, the `ifelse()` function is a vectorized way to perform conditional operations. It allows you to apply a specified condition to each element of a vector or data frame and return a new vector or data frame based on the condition. The basic syntax of the `ifelse()` function is as follows:

```R
ifelse(test_expression, yes_expression, no_expression)
```

- `test_expression`: The condition to be tested. It can be a logical vector or expression.
- `yes_expression`: The value to be returned when the condition is `TRUE`.
- `no_expression`: The value to be returned when the condition is `FALSE`.

Here's an example of how to use the `ifelse()` function:

```R
# Example: Using ifelse() to categorize exam scores
scores <- c(78, 92, 64, 88, 75)
grades <- ifelse(scores >= 90, "A", ifelse(scores >= 80, "B", ifelse(scores >= 70, "C", "D")))

# Print the result
cat("Grades:", grades, "\n")
```

In this example, we have a vector `scores` representing exam scores. We use the `ifelse()` function to categorize the scores into grades ("A," "B," "C," or "D") based on the specified conditions. The result is stored in the `grades` vector, and we print the grades to the console.

The `ifelse()` function is particularly useful when you need to perform conditional operations on entire vectors or data frames, making it an efficient way to handle data based on conditions.


### Assignment 5: For Loops

1. Write a  Program to Calculate the Sum of Natural Numbers ?
   
   ```

   Example : 
   Enter Start Number : 1
   Enter End Number : 10
   
   -----------------
   total sum of 1 to 10 = 55
   ----------------- 

   ```
2. Write a  Program to Generate Multiplication Table ?

    ```

    Enter print Table Number : 2
    
    2 x 1  = 2
    2 x 2  = 4
    .
    .
    2 x 10 = 20

    ```
3. Write a  Program to Display count of Alphabets in to String 
   
   ```
      Enter Word : p4n.in

      total = count of Alphabets : 6

   ```
4. Write a  Program to Count Number of Digits in an Integer

   ```
      Enter Number : 4567
      Count Number : total Digits : 4 

   ```
5. Write a  Program to Reverse a Number

   ```
      Enter Number : 4569
      Reverse Number : 9654 

   ```
   
6. **List Iteration:**
   - Create a list of your favorite fruits.
   - Use a `for` loop to iterate through the list and print each fruit.

7. **Counting Characters:**
   - Write a program that takes a string as input.
   - Use a `for` loop to count and print the number of characters in the string.

### Assignment 6: While Loops

1. **Countdown Timer:**
   - Write a program that takes an integer as input and prints a countdown from that number to 1 using a `while` loop.

2. **Password Guessing Game:**
   - Choose a secret password and ask the user to guess it.
   - Use a `while` loop to continue prompting the user until they correctly guess the password.

3. **Even Number Generator:**
   - Write a program that generates and prints the first 5 even numbers starting from 1 using a `while` loop.

4. **Factorial Calculator:**
   - Write a program that takes an integer as input and calculates its factorial starting from 1 using a `while` loop.
   - Print the result.

### Instructions:

- Encourage students to use meaningful variable names and provide comments explaining their code.
- Remind students to initialize loop variables properly and to use the appropriate loop control statements (`break` or `continue`) when necessary.
- Emphasize the importance of proper indentation in Python.
- Encourage experimentation with different values to verify the correctness of the code.
- Provide feedback on code readability and efficiency.
- Remind students to test their programs with various scenarios to ensure robustness.



