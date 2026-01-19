# Case Study: Analyzing Stock Market Data Using R for Beginners

This case study introduces beginners to the basics of stock market (share market) analysis using R, a powerful open-source programming language for statistical computing and data visualization. We'll focus on a simple example: analyzing historical stock data for Apple Inc. (AAPL). The goal is to fetch data, visualize trends, calculate basic metrics like returns, and apply a simple moving average for trend analysis.

We'll assume you have no prior experience with R, so I'll explain each step in detail. This is not financial advice—stock market analysis involves risks, and this is for educational purposes only.

## Prerequisites
- **Install R**: Download and install R from the official CRAN website (cran.r-project.org). Choose the version for your operating system (Windows, macOS, or Linux).
- **Install RStudio**: This is a user-friendly IDE for R. Download it from posit.co/products/open-source/rstudio/.
- Once installed, open RStudio and use the console or a new script file to run the code.

All code will be provided in snippets you can copy-paste into RStudio. Run them line by line or as a script.

## Step 1: Install Required Packages
R uses packages (libraries) for specific tasks. We'll need:
- `quantmod` for fetching and manipulating financial data.
- `ggplot2` for advanced plotting (though base R plotting works too).

In RStudio, run this in the console to install them (you only need to do this once):

```R
install.packages("quantmod")
install.packages("ggplot2")
```

Then, load them into your session (do this every time you start a new R session):

```R
library(quantmod)
library(ggplot2)
```

If you get errors, ensure your internet connection is active, as packages download from CRAN.

## Step 2: Fetch Historical Stock Data
We'll download daily stock data for AAPL from Yahoo Finance (a common free source). `quantmod` makes this easy with the `getSymbols()` function.

Run this code:

```R
# Fetch data for AAPL from January 1, 2020, to the current date
getSymbols("AAPL", from = "2020-01-01", to = Sys.Date(), auto.assign = TRUE)

# View the first few rows of the data
head(AAPL)
```

Explanation:
- `getSymbols("AAPL")`: Downloads adjusted closing prices, opens, highs, lows, volumes, etc., into an object called `AAPL`.
- `from` and `to`: Specify the date range. `Sys.Date()` gets today's date.
- `head(AAPL)`: Shows the top 6 rows. The data is in an xts (time-series) format, with dates as row names and columns like AAPL.Open, AAPL.High, etc.

Sample output might look like:
```
           AAPL.Open AAPL.High AAPL.Low AAPL.Close AAPL.Volume AAPL.Adjusted
2020-01-02    74.06     75.15    73.80      75.09   135480400         73.35
2020-01-03    74.29     75.14    74.13      74.36   146322800         72.63
...
```

This gives you time-series data ready for analysis.

## Step 3: Basic Data Exploration
Before analyzing, understand the data. Let's calculate summary statistics and check for missing values.

```R
# Summary of the closing prices
summary(Cl(AAPL))  # Cl() extracts the closing price column

# Check for NA (missing) values
sum(is.na(AAPL))  # Should be 0 if data is complete
```

Explanation:
- `Cl(AAPL)`: Extracts the closing prices (AAPL.Close).
- `summary()`: Gives min, max, mean, median, etc.
- `is.na()` and `sum()`: Counts missing values—stock data is usually clean, but it's good practice.

For beginners, this step helps verify data quality. If there are gaps (e.g., due to holidays), R handles time-series well.

## Step 4: Visualize the Stock Prices
Visualization is key in stock analysis to spot trends. We'll plot the closing prices over time.

First, a basic line plot using base R:

```R
# Base R plot
plot(Cl(AAPL), main = "AAPL Closing Prices", ylab = "Price (USD)", xlab = "Date", col = "blue")
```

For a fancier plot with ggplot2:

```R
# Convert to data frame for ggplot
aapl_df <- data.frame(Date = index(AAPL), Close = as.numeric(Cl(AAPL)))

# ggplot line chart
ggplot(aapl_df, aes(x = Date, y = Close)) +
  geom_line(color = "blue") +
  labs(title = "AAPL Closing Prices Over Time", x = "Date", y = "Price (USD)") +
  theme_minimal()
```

Explanation:
- `plot()`: Simple base R function. `main`, `ylab`, etc., add labels.
- For ggplot: Convert xts to a data frame with `index(AAPL)` for dates and `as.numeric(Cl(AAPL))` for prices.
- `geom_line()`: Draws the line. Customize with colors and themes.

This plot will show AAPL's price trend, like rises during tech booms or dips in corrections.

## Step 5: Calculate Daily Returns
Returns measure price changes, essential for risk assessment.

```R
# Calculate daily returns (percentage change)
daily_returns <- dailyReturn(Cl(AAPL), type = "log") * 100  # Log returns in percent

# View first few
head(daily_returns)

# Plot the returns
plot(daily_returns, main = "AAPL Daily Log Returns", ylab = "Return (%)", col = "red")
```

Explanation:
- `dailyReturn()`: From quantmod, computes returns. `type = "log"` is common for financial analysis (handles compounding better).
- Multiply by 100 for percentage.
- Plot shows volatility—spikes indicate big price swings.

Mean return: `mean(daily_returns)` (e.g., around 0.1% daily for growth stocks like AAPL).
Standard deviation: `sd(daily_returns)` (measures risk/volatility).

## Step 6: Apply a Simple Moving Average (SMA)
Moving averages smooth data to identify trends. A 50-day SMA is common.

```R
# Add 50-day SMA to the data
AAPL$SMA50 <- SMA(Cl(AAPL), n = 50)

# Plot prices with SMA overlay
chartSeries(AAPL, theme = "white", TA = "addSMA(n=50, col='red')")
```

Explanation:
- `SMA(Cl(AAPL), n=50)`: Calculates the average of the last 50 closing prices.
- `chartSeries()`: From quantmod, plots candlesticks or lines with technical indicators.
- `TA = "addSMA..."`: Overlays the red SMA line.

Interpretation: When price crosses above SMA, it might signal a buy; below, a sell. This is a basic strategy—real trading needs more.

## Step 7: Basic Risk Analysis
Let's compute annualized volatility and Sharpe ratio (risk-adjusted return).

First, install `PerformanceAnalytics` if needed:

```R
install.packages("PerformanceAnalytics")
library(PerformanceAnalytics)
```

Then:

```R
# Annualized volatility (standard deviation * sqrt(252) for trading days in a year)
annual_vol <- StdDev.annualized(daily_returns / 100)  # Convert back to decimal

# Sharpe ratio (mean return / volatility, assuming risk-free rate = 0 for simplicity)
sharpe <- SharpeRatio(daily_returns / 100, Rf = 0, FUN = "StdDev")

# Print results
print(annual_vol)
print(sharpe)
```

Explanation:
- Volatility: Higher means riskier stock.
- Sharpe: Above 1 is good; compares return to risk.

For AAPL, expect volatility around 20-30% annually.

## Step 8: Putting It All Together and Next Steps
Save your work as an R script (File > New File > R Script in RStudio) and run it entirely. Experiment with other stocks (e.g., replace "AAPL" with "MSFT" or an Indian stock like "RELIANCE.NS" for NSE).

