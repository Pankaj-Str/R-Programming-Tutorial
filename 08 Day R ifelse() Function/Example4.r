# Example 4: Calculating Discounts
product_prices <- c(25, 50, 75, 100)
discounted_prices <- ifelse(product_prices >= 50, product_prices * 0.9, product_prices)

# Print the result
cat("Discounted Prices:", discounted_prices, "\n")
