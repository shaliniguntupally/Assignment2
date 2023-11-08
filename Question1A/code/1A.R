# Load the dataset
data <- read.csv("D:/train.csv")

# Check for missing values
missing_values <- colSums(is.na(data))

# Display columns with missing values
print(missing_values[missing_values > 0])

# Impute missing values in "seats" with the mode (most common value)
mode_val <- as.numeric(names(sort(table(data$seats), decreasing = TRUE)[1]))
data$seats[is.na(data$seats)] <- mode_val
print(data)

# 'New_Price' is the column name to be imputed
median_new_price <- median(data$New_Price, na.rm = TRUE)
data$New_Price[is.na(data$New_Price)] <- median_new_price
head(data)
