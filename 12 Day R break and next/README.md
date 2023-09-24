# R break and next

In R, `break` and `next` are control flow statements used within loops to control the flow of execution.

1. **`break` Statement:**
   - The `break` statement is used to exit (terminate) a loop prematurely when a certain condition is met.
   - When `break` is encountered inside a loop, the loop is immediately terminated, and the program continues with the code following the loop.
   - `break` is often used to exit loops when a specific condition is satisfied.

   **Example: Using `break` in a `for` loop**
   ```R
   for (i in 1:10) {
     if (i == 5) {
       break  # Exit the loop when i equals 5
     }
     cat("Value:", i, "\n")
   }
   ```

2. **`next` Statement:**
   - The `next` statement is used to skip the current iteration of a loop and move on to the next iteration.
   - When `next` is encountered inside a loop, the current iteration is immediately terminated, and the loop proceeds to the next iteration.
   - `next` is often used to skip specific iterations based on a condition.

   **Example: Using `next` in a `for` loop**
   ```R
   for (i in 1:5) {
     if (i %% 2 == 0) {
       next  # Skip even numbers
     }
     cat("Value:", i, "\n")
   }
   ```

In the first example, the `break` statement is used to exit the loop when `i` equals 5. In the second example, the `next` statement is used to skip even numbers and continue with the next iteration of the loop.

Both `break` and `next` are essential control flow statements for managing the execution of loops in R, allowing you to control which iterations are executed and when to exit a loop prematurely.