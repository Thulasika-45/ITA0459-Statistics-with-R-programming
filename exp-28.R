set.seed(123) 
random_letters <- sample(LETTERS, 100, replace = TRUE)
random_factor <- factor(random_letters)
five_levels <- levels(random_factor)[1:5]
print(five_levels)