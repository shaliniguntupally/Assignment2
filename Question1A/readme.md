When choosing how to impute missing values for a numerical column such as "seats," the context and the type of data must be taken into account.
Mean: If the missing values are dispersed randomly throughout the dataset and the data is somewhat normally distributed, imputing using the mean is a wise decision.
Median: Since the median is less susceptible to extreme values than the mean, it may be a preferable option for imputing if the numerical data is skewed or contains outliers.
Mode: For numerical data that is discrete or categorical, imputing using the mode is appropriate. 
For instance, it could make logical to impute missing numbers with 5 if most cars have 5 seats.
Since "seats" is a discrete variable that represents the number of seats in an automobile.
It could make sense to impute the missing values using the mode, or most common value. 
In keeping with the characteristics of the data, this guarantees that the imputed values are whole numbers.
Iimputed New_price with the median to avoid the influence of potential outliers in the prices. 
Using the median provides a robust estimate in case there are extreme values in the New_Price column.
