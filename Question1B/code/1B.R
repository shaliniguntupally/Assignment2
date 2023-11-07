# Load the required library
library(dplyr)

# Read the dataset
data <- read.csv("D:/train.csv")

# Remove units from attributes
data$Mileage <- as.numeric(gsub(" km/kg| kmpl", "", data$Mileage))
data$Engine <- as.numeric(gsub(" CC", "", data$Engine))
data$Power <- as.numeric(gsub(" bhp", "", data$Power))

# Remove "Lakh" and non-numeric characters from New_Price column
data$New_Price <- as.numeric(gsub("[^0-9.]", "", gsub("Lakh", "", data$New_Price)))

# Check the modified dataset
head(data)