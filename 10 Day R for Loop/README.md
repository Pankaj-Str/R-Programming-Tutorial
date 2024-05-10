# R for Loop
In R, a `for` loop is used to repeatedly execute a block of code a specified number of times or iterate through elements in a sequence (such as a vector or a list). It provides a way to create iterative processes in your program. The basic syntax of a `for` loop in R is as follows:

```R
for (variable in sequence) {
  # Code to be executed for each element in the sequence
}
```

Here's an example of a `for` loop that iterates through a sequence of numbers:

```R
# Example: Using a for loop to iterate through numbers from 1 to 5
for (i in 1:5) {
  cat("Count:", i, "\n")
}
```

In this example, the `for` loop iterates through the numbers from 1 to 5, and in each iteration, it prints the current value of `i`.

You can also use `for` loops to iterate through elements in a vector or a list. Here's an example of iterating through elements in a vector:

```R
# Example: Using a for loop to iterate through elements in a vector
fruits <- c("apple", "banana", "cherry", "date")

for (fruit in fruits) {
  cat("Fruit:", fruit, "\n")
}
```

In this example, the `for` loop iterates through the elements in the `fruits` vector and prints each fruit.

You can use the `length()` function to determine the length of a vector or the `seq_along()` function to iterate through indices when working with vectors.

Here's an example of using `seq_along()`:

```R
# Example: Using seq_along() in a for loop
fruits <- c("apple", "banana", "cherry", "date")

for (i in seq_along(fruits)) {
  cat("Index:", i, "Fruit:", fruits[i], "\n")
}
```

In this example, we use `seq_along(fruits)` to generate a sequence of indices corresponding to the elements in the `fruits` vector, and then we use those indices to access and print the elements.

`for` loops are commonly used for iterating through data structures, performing calculations, and conducting repetitive tasks in R.



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


