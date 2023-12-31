# R Operator

In R, operators are symbols or special functions that are used to perform operations on data. Operators are an essential part of programming in R, allowing you to perform mathematical, logical, and other operations. Here are some common types of operators in R:

1. **Arithmetic Operators**:
   - `+` (Addition): Adds two values.
   - `-` (Subtraction): Subtracts the second value from the first.
   - `*` (Multiplication): Multiplies two values.
   - `/` (Division): Divides the first value by the second.
   - `^` (Exponentiation): Raises the first value to the power of the second.
   - `%%` (Modulus): Returns the remainder when the first value is divided by the second.
   - `%/%` (Integer Division): Returns the quotient of the division, discarding the remainder.

   Example:
   ```R
   # Add two numbers
   print(1 + 2)
   
   # Subtract one number from another
   print(5 - 3)
   
   # Multiply two numbers
   print(2 * 3)
   
   # Divide one number by another
   print(10 / 2)
   
   # Raise one number to the power of another
   print(2 ^ 3)
   
   # Find the remainder when one number is divided by another
   print(10 %% 3)
   
   # Find the quotient of the division, discarding the remainder
   print(10 %/% 3)
   ```

2. **Comparison Operators**:
   - `==` (Equal to): Checks if two values are equal.
   - `!=` or `<>` (Not equal to): Checks if two values are not equal.
   - `<` (Less than): Checks if the first value is less than the second.
   - `>` (Greater than): Checks if the first value is greater than the second.
   - `<=` (Less than or equal to): Checks if the first value is less than or equal to the second.
   - `>=` (Greater than or equal to): Checks if the first value is greater than or equal to the second.

   Example:
   ```R
   # Check if two numbers are equal
   print(1 == 2)
   
   # Check if two numbers are not equal
   print(1 != 2)
   
   # Check if one number is less than another
   print(1 < 2)
   
   # Check if one number is greater than another
   print(1 > 2)
   
   # Check if one number is less than or equal to another
   print(1 <= 2)
   
   # Check if one number is greater than or equal to another
   print(1 >= 2)
   ```

3. **Logical Operators**:
   - `!` (Logical NOT): Negates a logical value.
   - `&` (Logical AND): Returns `TRUE` if both values are `TRUE`.
   - `|` (Logical OR): Returns `TRUE` if at least one value is `TRUE`.
   - `&&` (Short-circuit AND): Evaluates the second condition only if the first is `TRUE`.
   - `||` (Short-circuit OR): Evaluates the second condition only if the first is `FALSE`.

   Example:
   ```R
   # Check if a number is not equal to zero
   print(34 != 56)
   
   # Check if two numbers are both greater than zero
   print(1 > 0 & 2 > 0)
   
   # Check if at least one number is greater than zero
   print(1 > 0 | 2 < 0)
   
   # && (Short-circuit AND): Evaluates the second condition only if the first is TRUE.
   
   # left side | right side  | Result
   #     TRUE  |   TRUE      | TRUE
   #     TRUE  |   FALSE     | FALSE
   #     FALSE |   TRUE      | FALSE
   #     FALSE |   FALSE     | FALSE
   
   print(45 < 88 && 34 <= 23)
   
   # || (Short-circuit OR): Evaluates the second condition only if the first is FALSE.
   # left side | right side  | Result
   #     TRUE  |   TRUE      | TRUE
   #     TRUE  |   FALSE     | TRUE
   #     FALSE |   TRUE      | TRUE
   #     FALSE |   FALSE     | FALSE
   
   print(45 < 88 || 34 <= 23)
   
   # Example : --->
   print(34 < 90 && 56==56 || 23 <= 23 && 23 != 23 || 230 < 45)
   #       t           t         f           f           f
   #             t
   #                       t
   #                               f
   #                                           f
   
   # Example : <---
   print(34 < 90 && 56==56 || 23 <= 23 && 23 != 23 || 230 < 45)
   #       t           t         f           f           f
   #                                               f
   #                                   f
   #                         t
   #             t        

   ```

4. **Assignment Operators**:
   - `<-` or `=`: Assigns a value to a variable.
   - `<<-` or `->>`: Assigns a value to a variable in the parent environment (used in functions).

   Example:
   ```R
   x <- 10
   y <- 3
   ```

5. **Miscellaneous Operators**:
   - `%in%`: Checks if an element belongs to a vector or list.
   - `:`: Creates a sequence of numbers.
   - `%*%`: Matrix multiplication.
   - `%/%`: Integer division (alternative to `//`).
   - `%%`: Modulus (alternative to `%`).

   Example:
   ```R
   is_present <- 5 %in% c(1, 2, 3, 4, 5)  # TRUE
   seq_numbers <- 1:5  # Creates a sequence 1, 2, 3, 4, 5
   ```

These are some of the common operators in R, and they are used extensively in R programming to manipulate data, perform calculations, and make logical decisions.
