# Create a 5x4 matrix
m1 <- matrix(1:20, nrow = 5, ncol = 4)
print("5x4 matrix:")
print(m1)

# Define the cell values, row names, and column names for a 3x3 matrix
cells <- c(1, 3, 5, 7, 8, 9, 11, 12, 14)
rnames <- c("Row1", "Row2", "Row3")
cnames <- c("col1", "col2", "col3")

# Create a 3x3 matrix with labels, filled by rows
m2 <- matrix(cells, nrow = 3, ncol = 3, byrow = TRUE, dimnames = list(rnames, cnames))
print("3x3 matrix with labels, filled by rows:")
print(m2)

# Create a 3x3 matrix with labels, filled by columns
m3 <- matrix(cells, nrow = 3, ncol = 3, byrow = FALSE, dimnames = list(rnames, cnames))
print("3x3 matrix with labels, filled by columns:")
print(m3)