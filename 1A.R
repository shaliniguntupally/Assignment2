# Load the dataset
data <- read.csv("D:/train.csv")

# Check for missing values
missing_values <- colSums(is.na(data))

# Display columns with missing values
print(missing_values)

# Impute missing values in "seats" with the mode (most common value)
mode_val <- as.numeric(names(sort(table(data$seats), decreasing = TRUE)[1]))
data$seats[is.na(data$seats)] <- mode_val
print(data)