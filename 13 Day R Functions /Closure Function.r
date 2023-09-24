# Example of a closure function
make_multiplier <- function(factor) {
  function(x) {
    return(x * factor)
  }
}

multiply_by_2 <- make_multiplier(2)
multiply_by_3 <- make_multiplier(3)

result1 <- multiply_by_2(5)
result2 <- multiply_by_3(4)

cat("Result1:", result1, "\n")
cat("Result2:", result2, "\n")
