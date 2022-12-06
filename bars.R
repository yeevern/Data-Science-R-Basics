# A bar chart uses rectangular bars to visualize data. Bar charts can be displayed horizontally or vertically. The height or length of the bars are proportional to the values they represent
# Use the barplot() function to draw a vertical bar chart
x <- c("A", "B", "C", "D")  # x-axis values
y <- c(2, 4, 6, 8)  # y-axis values
barplot(y, names.arg = x)

# The x variable represents values in the x-axis (A,B,C,D)
# The y variable represents values in the y-axis (2,4,6,8)
# Then we use the barplot() function to create a bar chart of the values
# names.arg defines the names of each observation in the x-axis


# BAR COLOUR
# Use the col parameter to change the color of the bars:
x <- c("A", "B", "C", "D")
y <- c(2, 4, 6, 8)
barplot(y, names.arg = x, col = "red")


# DENSITY / BAR TEXTURE
# To change the bar texture, use the density parameter
x <- c("A", "B", "C", "D")
y <- c(2, 4, 6, 8)
barplot(y, names.arg = x, density = 10)


# BAR WIDTH
# Use the width parameter to change the width of the bars
x <- c("A", "B", "C", "D")
y <- c(2, 4, 6, 8)
barplot(y, names.arg = x, width = c(1,2,3,4))


# HORIZONTAL BARS
x <- c("A", "B", "C", "D")
y <- c(2, 4, 6, 8)
barplot(y, names.arg = x, horiz = TRUE)