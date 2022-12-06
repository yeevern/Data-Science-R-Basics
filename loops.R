for (x in 1:10) {
  print(x)
}


fruits <- list("apple", "banana", "cherry")
for (x in fruits) {
  print(x)
}


dice <- c(1, 2, 3, 4, 5, 6)

for (x in dice) {
  print(x)
}


i <- 0
while (i < 6) {
  i <- i + 1
  if (i == 3) {
    next  # same as java's continue
  }
  print(i)
}