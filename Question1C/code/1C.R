# Convert "Fuel_Type" and "Transmission" to one-hot encoded values
data <- cbind(data, model.matrix(~ Fuel_Type + Transmission - 1, data))

# Remove the original categorical columns if needed
data <- encoded_data[, !(names(data) %in% c("Fuel_Type", "Transmission"))]

# Check the modified dataset with one-hot encoded values
head(data)
