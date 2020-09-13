
# This is working code for MSSP Fall2020, class MA678, Homework 1. due Sep 15th, 2020
# All work is done by Yuelin Jiang with tutoring help from _______

#All excercises are from the book GHV.

# 7.2 Fake-data simulation and regression: Simulate 100 data points from the linear model, y = a + bx + error, 
# with a = 5, b = 7, the values of x being sampled at random from a uniform distribution on the range [0, 50], 
# and errors that are normally distributed with mean 0 and standard deviation 3.
library(rstanarm)
install.packages("rstanarm")
n <- 100
a <- 5
b <- 7
x <- runif(n, 0, 50)

e <- rnorm(n, 0, 3)
y <- a+ b*x + e

# (a) Fit a regression line to these data and display the output.
fake_a <- data.frame(x, y)
fit_a <- stan_glm(y ~ x, data = fake_a)
print(fit_a)


options("repos" = c(CRAN="https://mirrors.tuna.tsinghua.edu.cn/CRAN/"))

# (b) Graph a scatterplot of the data and the regression line.
# (c) Use the text function in R to add the formula of the fitted line to the graph.