# From Data Management

#Control Structures - IF ELSE

if (test_expression) {
  statement
}

x <- 5
if(x > 0){
  print("Positive number")
}


if (test_expression) {
  statement1
} else {
  statement2
}

# Simple if else statement
x <- -5
if(x > 0){
  print("Non-negative number")
} else {
  print("Negative number")
}

# Structure control inline
if(x > 0) print("Non-negative number") else print("Negative number")

# Simple if else if statement
x <- 0
if (x < 0) {
  print("Negative number")
} else if (x > 0) {
  print("Positive number")
} else
  print("Zero")

rm(list = ls()) # clean up env


#Control Structures - FOR

for (val in sequence)
{
  statement
}

x <- c(2,5,3,9,8,11,6)
count <- 0
for (val in x) {
  if(val %% 2 == 0)  count = count+1
}
print(count)

#Control Structures - IFELSE

ifelse(test_expression,x,y)

a = c(5,7,2,9)
ifelse(a %% 2 == 0,"even","odd")

#Control Structures - WHILE

while (test_expression)
{
  statement
}

i <- 1

while (i < 6) {
  print(i)
  i = i+1
}
