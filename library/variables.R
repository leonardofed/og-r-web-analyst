# Creating variables

# Saving a char in a varaible
firstName <- "John"  # char variable
str(firstName) # Check what's the data type

# Saving a num in a veraible
age <- 43  # num variable
str(age) # Check what's the data type

# Saving a vector in a veraible
a <- c(1,2,3,4,-5,6) # numeric vector
str(a)

# Saving a vector in a veraible
b<-matrix(1:5, nrow=5,ncol=5)
str(b)
  
# Renaming Variables

data(cars) # Load cars dataset
cars # View cars table

library(reshape) #install this external package
cars <- rename(cars, c(dist="distance")) # We've just renamed a variable in our data set


rm (list=ls ()) # Clean up your environment