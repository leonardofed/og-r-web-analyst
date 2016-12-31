# From Data Management

#Built-in functions

# NUMERIC FUN

abs(-10) # Calculate the absolute value of x

sqrt(25) # Calculate the square value of x

ceiling(4.89) # Round up x

floor(4.89) # Round down x

trunc(4.99) # Truncate decimals numbers

round(4.99888, digits=3) # Specify for how how many digits you want to rund up

signif(4.99888, digits=4) # Round up / down

cos(x) # Calculate the cos of x

log(x) # Calculate the log of x

log10(x) # Calculate the natural log of x

exp(10) # Calculate the exponential value


# CHAR FUN

j <- "jack" # Assign a variable
substr(j, 2, 4) # Extract substrings of j
substr(j, 2, 4) <- "jack" # Replace subtring of j
j # check the diff of the variable

grep("Z", c("Y","X","Z"), fixed=TRUE) # Find the pattern. 
                                      # "fixed = TRUE" string pattern
                                      # "fixed = FALSE" RegEx pattern

sub(pattern, replacement, x, ignore.case =FALSE, fixed=FALSE)
sub("\\s","|","Ergo Sum")   # Find the blank space and replace with a pipe

ergo.1 <- toupper("ergo sum") # Uppercase

tolower(ergo.1) # Lowercase the variable "ergo.1" which was in uppercase


# STATS FUN

data(cars)
?cars
cars
mean(cars$speed) #mean of speed in the cars data set

mean(cars$speed, trim=10) 
# When the mean is trimmed we're excluding a certain % of the observation
# A mean trimmbed by 10 mean that we're excluding 20% of the total results

#A mean trimmed by 50% is the median. Quick check?
mean(cars$speed, trim=50)
median(cars$speed) #Correct. They're both 15

mean(cars$speed, trim=0, na.rm=FALSE) # adding na.rm=FALSE

# "na.rm=FALSE" stands for "unknown". 
#If some of the values in a vector are unknown, then the mean of the vector is also unknown.
# It makes sense to remove it and compute the mean of the other values.

sd(cars$speed) # Calculate the standard deviation

quantile(cars$speed, 0.8) # It produces sample quantiles corresponding to the given probabilities. The smallest observation corresponds to a probability of 0 and the largest to a probability of 1

range(cars$speed)  # Range returns a vector containing the minimum and maximum of all the given arguments

sum(cars$speed)	# sum all the value

diff(cars$speed, lag=1)	# The function calculates the differences between all consecutive values of a vector

min(cars$speed)	# Calculate the minimum value

max(cars$speed)	# Calculate the maximum value

qnorm(p)	# You give it a probability, and it returns the number whose cumulative distribution matches the probability.

scale(x, center=TRUE, scale=TRUE)	

seq(from , to, by)	#seq() function generates a sequence of numbers. The additional parameters tell the function how to build the sequence

seq(from = 1, to = 1, by = ((to - from)/(length.out - 1)),
    length.out = NULL, along.with = NULL, ...)

#Generate a sequence from -6 to 7:
x <- seq(-4,6)
x #check variable x

#From -6 till 7, step=2:
x <- seq(-6,7,by=2)
x

# Let's try smaller step:
x <- seq(-2,2,by=0.3)
x

#Generate a sequence from 1 to 10, quick version:
x <- seq(10)

rep(x, 10) #repete a certain value for n time (second paramter)

cut(x, n) # The opposite of the repete function, it divides a numeric vector into different ranges

cut(x, breaks, labels = NULL,
    include.lowest = FALSE, right = TRUE, dig.lab = 3,
    ordered_result = FALSE, ...)

#x: numeric vector
# breaks: break points, number or numeric vector.
# labels: level labels, character vector.

x <- stats::rnorm(100)
x

#Divide the data into ranges -5 ~ 5:
c <- cut(x,breaks=-10:10)
c #check now the diff

