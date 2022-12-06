# The plot() function is used to draw points (markers) in a diagram
# Parameter 1 specifies points on the x-axis
# Parameter 2 specifies points on the y-axis
plot(1, 3)

# To draw more points, use vectors
# Draw two points in the diagram, one at position (1, 3) and one in position (8, 10)
plot(c(1, 8), c(3, 10))


# MULTIPLE POINTS
# You can plot as many points as you like, just make sure you have the same number of points in both axis
plot(c(1, 2, 3, 4, 5), c(3, 7, 8, 9, 12))

# For better organization, when you have many values, it is better to use variables:
x <- c(1, 2, 3, 4, 5)
y <- c(3, 7, 8, 9, 12)
plot(x, y)


# SEQUENCES OF POINTS
# If you want to draw dots in a sequence, on both the x-axis and the y-axis, use the : operator
plot(1:10)


# DRAW A LINE
# The plot() function also takes a type parameter with the value l to draw a line to connect all the points in the diagram
plot(1:10, type="l")


# PLOT LABLES
# The plot() function also accept other parameters, such as main, xlab and ylab if you want to customize the graph with a main title and different labels for the x and y-axis
plot(1:10, main="My Graph", xlab="The x-axis", ylab="The y axis")


# GRAPH APPREARANCE
# Use col="color" to add a color to the points
plot(1:10, col="red")


# SIZE
# Use cex=number to change the size of the POINTS (1 is default, while 0.5 means 50% smaller, and 2 means 100% larger)
plot(1:10, cex=2)


# POINT SHAPE
# Use pch with a value from 0 to 25 to change the point shape format
plot(1:10, pch=25, cex=2)