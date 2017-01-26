# Food Truck
#
# Our data is stored in a .CSV file, which is short for "comma separated value".
# R has a function for reading in data from .CSV files. Notice that We're
# also specifiying that the dataset contains headers for each column. Load up
# the data and see what it looks like:
#
food_truck_data = read.csv("data/food-trucks.csv", header=TRUE)

# One of the frst questions to ask in an investigation of a new dataset should
# be about how the dataset is organized. R comes with a function `str()` that
# let's us display the structure of the data.
#
# Run the `str(data)` command then answer these 3 questions:
#
#     1. How many different records/examples do we have in our dataset?
#     2. What features does our dataset contain?
#     3. What kind of data are we dealing with here?
#
str(food_truck_data)

# To investigate our numeric data a bit further, we can use several
# common measures of central tendency (summary statistics). R has a built-in
# function call `summary()` so let's see what that shows us:
#
# Run `summary(food_truck_data)` then answer these questions:
#
#     1. Examine the mean and the median. What do they tell you about the data?
#        (Remember that the mean is much more sensitive to outliers than the
#        median.)
#
summary(food_truck_data)

# The `quantile()` function provides a robust tool to identify quantiles for a
# set of values.
#
quantile(food_truck_data$profit)

# Boxplots
#
# A common visualization of the number summary is boxplot, also known as a
# box-and-whiskers plot. The boxplot displays the center and spread of a
# numeric variable in a format that allows you to quickly obtain a sense of the
# range and skew of a variable or compare it to other variables.
boxplot(
  food_truck_data$profit,
  main="Boxplot of Food Truck Profit",
  ylab="Profit in $10,000s"
)

# Histograms
#
# A histogram is another way to graphically depict the spread of a numeric
# variable. It is similar to a boxplot in a way that it divides the variable's
# values into a prede ned number of portions or bins that act as containers for
# values.
#
hist(
  food_truck_data$population,
  main="Boxplot of Population in Food Truck Cities",
  xlab="Population in 10,000s"
)

# Scatterplot
#
# A scatterplot is a diagram that visualizes a bivariate relationship. It is a
# two-dimensional  gure in which dots are drawn on a coordinate plane using
# the values of one feature to provide the horizontal x coordinates and the
# values of another feature to provide the vertical y coordinates. Patterns in
# the placement of dots reveal the underlying associations between the two
# features.
#
# Let's make a scatterplot to obtain a better understanding of how profit and
# population are related.
#
# Run the `plot(options...)` command below then answer the following questions:
#
#     1. Do you think an increase in population causes an increase in profits?
#
plot(
  food_truck_data$profit,
  food_truck_data$population,
  main="Food Trucks",
  xlab="Population of city in 10,000s",
  ylab="Profit in $10,000s"
)
