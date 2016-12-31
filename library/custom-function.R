# From Data Management

#Custom Function

myFunction<-function(n) #your function name
{
  if (n < 0) { # we'll use the if statement in our function
    print("Negative number")
  } else if (n > 0) {
    print("Positive number")
  } else
    print("Zero")
}

# now define a value
k<-10
# call your function
m <- myFunction(k)

rm(list = ls())