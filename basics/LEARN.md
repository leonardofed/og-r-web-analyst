## Prerequisites — Installing R & RStudio

Go to the website www.r-project.org. When I wrote this guide the latest version was <3.3.2 (Sincere Pumpkin Patch) has been released on Monday 2016-10-31.>.

Now go to "https://cran.r-project.org/mirrors.html" and click the closest mirror file you see and download an R version compatible with your

I do have OS so that's my file; http://cran.mirror.garr.it/mirrors/CRAN/bin/macosx/

Search your new R application (command line application)


## Interfaces in R

### GUI
### Packages

What are packages in R? Why do we need them? Why are they so important?


Go to the website www.r-project.org. When I wrote this guide the latest version was <3.3.2 (Sincere Pumpkin Patch) has been released on Monday 2016-10-31.>.

Now go to "https://cran.r-project.org/mirrors.html" and click the closest mirror file you see and download an R version compatible with your

I do have OS so that's my file; http://cran.mirror.garr.it/mirrors/CRAN/bin/macosx/

Search your new R application (command line application)


## Data Management

- Creating New Variables

Creating new variables
---------------------
Use the assignment operator <- to create new variables. A wide array of operators and functions are available here.
# Three examples for doing the same computations

mydata$sum <- mydata$x1 + mydata$x2
mydata$mean <- (mydata$x1 + mydata$x2)/2

attach(mydata)
mydata$sum <- x1 + x2
mydata$mean <- (x1 + x2)/2
detach(mydata)

mydata <- transform( mydata,
sum = x1 + x2,
mean = (x1 + x2)/2
)

Recoding variables
------------------
In order to recode data, you will probably use one or more of R's control structures.
# create 2 age categories
mydata$agecat <- ifelse(mydata$age > 70,
c("older"), c("younger"))

# another example: create 3 age categories
attach(mydata)
mydata$agecat[age > 75] <- "Elder"
mydata$agecat[age > 45 & age <= 75] <- "Middle Aged"
mydata$agecat[age <= 45] <- "Young"
detach(mydata)

Renaming variables
------------------
You can rename variables programmatically or interactively.
# rename interactively
fix(mydata) # results are saved on close

# rename programmatically
library(reshape)
mydata <- rename(mydata, c(oldname="newname"))

# you can re-enter all the variable names in order
# changing the ones you need to change.the limitation
# is that you need to enter all of them!
names(mydata) <- c("x1","age","y", "ses")


- Operators

Arithmetic Operators: 📕
Logical Operators: 📙


| Operator                 | Description                         | Category                          | Gotchas                                        |
|---------------------------------------|--------------------------------|-------------------------------|------------------------------------------------|
| + | addition | Arithmetic | [📕](#security-and-iam-gotchas-and-limitations) |
| - | subtraction | Arithmetic | [📕](#s3-gotchas-and-limitations) |
| * | multiplication | Arithmetic | [📕](#ec2-gotchas-and-limitations) |
| / | division | Arithmetic | [📕](#cloudwatch-gotchas-and-limitations) |
| ^ OR **) | exponentiation | Arithmetic | [📕](#ami-gotchas-and-limitations) |
| x %% y | modulus (x mod y) 5%%2 is 1 | Arithmetic | [📕](#ami-gotchas-and-limitations) |
| x %/% y | integer division 5%/%2 is 2 | Arithmetic | [📕](#ami-gotchas-and-limitations) |
| < | less than | Logical | [📙](#auto-scaling-gotchas-and-limitations) |
| <= | less than or equal to | Logical | [📙](#auto-scaling-gotchas-and-limitations) |
| > | greater than | Logical | [📙](#auto-scaling-gotchas-and-limitations) |
| >= | greater than | Logical | [📙](#auto-scaling-gotchas-and-limitations) |
| >= | greater than or equal to | Logical | [📙](#auto-scaling-gotchas-and-limitations) |
| == | exactly equal to | Logical | [📙](#auto-scaling-gotchas-and-limitations) |
| != | not equal to | Logical | [📙](#auto-scaling-gotchas-and-limitations) |
| !x | Not x | Logical | [📙](#auto-scaling-gotchas-and-limitations) |
| x \| y | x OR y | Logical | [📙](#auto-scaling-gotchas-and-limitations) |
| x & y | x AND y | Logical | [📙](#auto-scaling-gotchas-and-limitations) |
| isTRUE(x) | test if X is TRUE | Logical | [📙](#auto-scaling-gotchas-and-limitations) |


- Built-in Functions

General Function: 📘
Numeric Function: 📗
Character Function: 📕
Statistical Function: 📙


| Function Name                 | Description                         | Category                          | Examples                                        |
|---------------------------------------|--------------------------------|-------------------------------|------------------------------------------------|
| abs(x) | absolute value | Numeric Function | [📗](#security-and-iam-gotchas-and-limitations) |
| sqrt(x) | square root | Numeric Function | [📗](#security-and-iam-gotchas-and-limitations) |
| ceiling(x) | ceiling(3.475) is 4 | Numeric Function | [📗](#security-and-iam-gotchas-and-limitations) |
| floor(x) | floor(3.475) is 3 | Numeric Function | [📗](#security-and-iam-gotchas-and-limitations) |
| trunc(x) | floor | Numeric Function | [📗](#security-and-iam-gotchas-and-limitations) |
| round(x, digits=n) | floor | Numeric Function | [📗](#security-and-iam-gotchas-and-limitations) |
| signif(x, digits=n)	| floor | Numeric Function | [📗](#security-and-iam-gotchas-and-limitations) |
| cos(x), sin(x), tan(x) | floor | Numeric Function | [📗](#security-and-iam-gotchas-and-limitations) |
| log(x) | natural logarithm | Numeric Function | [📗](#security-and-iam-gotchas-and-limitations) |
| log10(x) | common logarithm | Numeric Function | [📕](#security-and-iam-gotchas-and-limitations) |
| exp(x) | e^x | Character Function | [📕](#security-and-iam-gotchas-and-limitations) |
| substr(x, start=n1, stop=n2) | floor | Character Function | [📕](#security-and-iam-gotchas-and-limitations) |
| x <- "abcdef" | Extract or replace substrings in a character vector | Character Function | [📕](#security-and-iam-gotchas-and-limitations) |
| substr(x, 2, 4) is "bcd"  | floor | Character Function | [📕](#security-and-iam-gotchas-and-limitations) |
| substr(x, 2, 4) <- "22222" is "a222ef" | floor | Character Function | [📕](#security-and-iam-gotchas-and-limitations) |
| grep(pattern, x , ignore.case=FALSE, fixed=FALSE) | floor | Character Function | [📕](#security-and-iam-gotchas-and-limitations) |
| sub(pattern, replacement, x, ignore.case =FALSE, fixed=FALSE)	 | floor | Character Function | [📕](#security-and-iam-gotchas-and-limitations) |
| strsplit(x, split)	 | floor | Character Function | [📕](#security-and-iam-gotchas-and-limitations) |
| toupper(x)	 | Uppercase | Character Function | [📕](#security-and-iam-gotchas-and-limitations) |
| tolower(x)	 | Lowercase | Character Function | [📕](#security-and-iam-gotchas-and-limitations) |
| mean(x, trim=0, na.rm=FALSE) | mean of object x | Statistical Function | [📙](#security-and-iam-gotchas-and-limitations) |
| sd(x) | standard deviation of object(x). also look at var(x) for variance and mad(x) for median absolute deviation. | Statistical Function | [📙](#security-and-iam-gotchas-and-limitations) |
| median(x) | floor | Statistical Function | [📙](#security-and-iam-gotchas-and-limitations) |
| quantile(x, probs) | quantiles where x is the numeric vector whose quantiles are desired and probs is a numeric vector with probabilities in [0,1]. | Statistical Function | [📙](#security-and-iam-gotchas-and-limitations) |
| range(x) | range | Statistical Function | [📙](#security-and-iam-gotchas-and-limitations) |
| sum(x) | sum | Statistical Function | [📙](#security-and-iam-gotchas-and-limitations) |
| diff(x, lag=1) | lagged differences, with lag indicating which lag to use | Statistical Function | [📙](#security-and-iam-gotchas-and-limitations) |
| min(x) | minimum | Statistical Function | [📙](#security-and-iam-gotchas-and-limitations) |
| max(x) | maximum | Statistical Function | [📙](#security-and-iam-gotchas-and-limitations) |
| qnorm(p)	 | normal quantile. | Statistical Function | [📙](#security-and-iam-gotchas-and-limitations) |
| scale(x, center=TRUE, scale=TRUE)	| column center or standardize a matrix | General Function | [📘](#security-and-iam-gotchas-and-limitations) |
| seq(from , to, by) | generate a sequence indices <- seq(1,10,2) | General Function | [📙](#security-and-iam-gotchas-and-limitations) |
| rep(x, ntimes) | generate a sequence indices <- seq(1,10,2) | General Function | [📘](#security-and-iam-gotchas-and-limitations) |
| seq(from , to, by) | repeat x n times y <- rep(1:3, 2) | General Function | [📘](#security-and-iam-gotchas-and-limitations) |
| cut(x, n) | divide continuous variable in factor with n levels y <- cut(x, 5) | General Function | [📘](#security-and-iam-gotchas-and-limitations) |



- Control Structures


if-else

``if (cond) expr
if (cond) expr1 else expr2``

 for

``for (var in seq) expr``

while

``while (cond) expr``

switch

``switch(expr, ...)``

ifelse

``ifelse(test,yes,no)``

- Custom Functions



- Sorting Data

To sort a data frame in R, use the order( ) function. By default, sorting is ASCENDING. Prepend the sorting variable by a minus sign to indicate DESCENDING order. Here are some examples.

- Merging Data

Merging Data

Adding Columns
To merge two data frames use the merge function. To join to set of data you will need a a common variable that you will use as ID.

`` # Merging files

# Load data
?longley
data(longley)

# Split up the data
x <- longley[1:14, 1:6]  # Starting data
y <- longley[1:14, 6:7]  # New column to add
z <- longley[15:16, ]     # New rows to add
write.table(x, "~/og-r-web-analyst/library/x.txt", sep="\t")
write.table(y, "~/og-r-web-analyst/library/y.txt", sep="\t")
write.table(z, "~/og-r-web-analyst/library/z.txt", sep="\t")

# Import data
xt <- read.table("~/og-r-web-analyst/library/x.txt", sep="\t")
yt <- read.table("~/og-r-web-analyst/library/y.txt", sep="\t")

# Take early years (a1t) and add columns (a2t)
# Must specify variable to match cases
x.y <- merge(xt, yt, by = "Year")  # Merge two data frames
x.y ``

Adding Rows

To join two data frames (datasets) vertically, use the rbind function. The two data frames must have the same variables, but they do not have to be in the same order.

``# Add two more cases at bottom
z <- read.table("~/og-r-web-analyst/library/z.txt", sep="\t")
all.data <- rbind(x.y, z)
row.names(all.data) <- NULL  # Reset row names
all.data  # Check data``


## Basics - Data Types in R

### Vectors

Lemme: what is a vector in R? Why do we use it? Why it's so important? How many type of vectors exist?



> v <- c(1,2,3,4,5)
> v
> [1] 1 2 3 4 5

> a <- c(1,2,5.3,6,-2,4) # numeric vector
> b <- c("one","two","three") # character vector
> c <- c(TRUE,TRUE,TRUE,FALSE,TRUE,FALSE) #logical vector

Refer to elements of a vector using subscripts.

> a[c(2,4)] # 2nd and 4th elements of vector


### Matrices

All columns in a matrix must have the same mode(numeric, character, etc.) and the same length. The general format is

> mymatrix <- matrix(vector, nrow=r, ncol=c, byrow=FALSE,
>     dimnames=list(char_vector_rownames, char_vector_colnames))


``byrow=TRUE`` indicates that the matrix should be filled by rows.
``byrow=FALSE`` indicates that the matrix should be filled by columns (the default).
``dimnames`` provides optional labels for the columns and rows.


`` # generates 5 x 4 numeric matrix
y<-matrix(1:20, nrow=5,ncol=4)

# another example

cells <- c(1,26,24,68)
rnames <- c("R1", "R2")
cnames <- c("C1", "C2")
mymatrix <- matrix(cells, nrow=2, ncol=2, byrow=TRUE,
  dimnames=list(rnames, cnames)) ``



### Data frames

Lemme: what is a data frame? Why do we use that? Why it's so important? How many type of vectors exist?

Technical info about Data Frames:
The top line of the table is called the ``header``. Not so different from Excel?


**Input**

> a = c(1, 2, 3)
> b = c("mark", "Zoe", "Jack")
> c = c(TRUE, FALSE, TRUE)
> df = data.frame(a, b, c)        # df is a data frame

**Output**

> a    b     c
> 1 1 mark  TRUE
> 2 2  Zoe FALSE
> 3 3 Jack  TRUE

You can test many different built-in data frames:

> mtcars
               mpg cyl disp  hp drat   wt ...
Mazda RX4     21.0   6  160 110 3.90 2.62 ...
Mazda RX4 Wag 21.0   6  160 110 3.90 2.88 ...
Datsun 710    22.8   4  108  93 3.85 2.32 ...
               ............

The top line of the table, called the header, contains the column names. Each horizontal line afterward denotes a data row, which begins with the name of the row, and then
followed by the actual data. Each data member of a row is called a cell.

``mtcars[1, 2]
[1] 6``

Moreover, we can use the row and column names instead of the numeric coordinates.

``mtcars["Mazda RX4", "cyl"]
[1] 6``

Lastly, the number of data rows in the data frame is given by the nrow function.

``nrow(mtcars)    # number of data rows
[1] 32``

And the number of columns of a data frame is given by the ncol function.

``ncol(mtcars)    # number of columns
[1] 11``

Further details of the mtcars data set is available in the R documentation.

``help(mtcars)``

(Preview)

Instead of printing out the entire data frame, it is often desirable to preview it with the head function beforehand.

``head(mtcars)
               mpg cyl disp  hp drat   wt ...
Mazda RX4     21.0   6  160 110 3.90 2.62 ...``


### Lists

An ordered collection of objects (components). A list allows you to gather a variety of (possibly unrelated) objects under one name.
-----------------------------------------------------------------------------------------------------------------------------

#example of a list with 4 components -
# a string, a numeric vector, a matrix, and a scaler
``w <- list(name="Fred", mynumbers=a, mymatrix=y, age=5.3)``

# example of a list containing two lists

``v <- c(list1,list2)
#Identify elements of a list using the [[]] convention.
mylist[[2]] # 2nd component of the list
mylist[["mynumbers"]] # component named mynumbers in list``


### Factors

Tell R that a variable is nominal by making it a factor. The factor stores the nominal values as a vector of integers in the range [ 1... k ] (where k is the number of unique values in the nominal variable), and an internal vector of character strings (the original values) mapped to these integers.
``# variable gender with 20 "male" entries and
# 30 "female" entries

gender <- c(rep("male",20), rep("female", 30))
gender <- factor(gender)

# stores gender as 20 1s and 30 2s and associates
# 1=female, 2=male internally (alphabetically)
# R now treats gender as a nominal variable``

``summary(gender)``

An ordered factor is used to represent an ordinal variable.


``# variable rating coded as "large", "medium", "small'
> rating <- ordered(rating)

# recodes rating to 1,2,3 and associates
# 1=large, 2=medium, 3=small internally
# R now treats rating as ordinal``

R will treat factors as nominal variables and ordered factors as ordinal variables in statistical proceedures and graphical analyses. You can use options in the factor( ) and ordered( ) functions to control the mapping of integers to strings (overiding the alphabetical ordering). You can also use factors to create value labels. For more on factors see the UCLA page.

### Useful Functions

``> length(object) # number of elements or components
> str(object)    # structure of an object
> class(object)  # class or type of an object
> names(object)  # names

> c(object,object,...)       # combine objects into a vector
> cbind(object, object, ...) # combine objects as columns
> rbind(object, object, ...) # combine objects as rows

> object     # prints the object

> ls()       # list current objects
> rm(object) # delete an object

> newobject <- edit(object) # edit copy and save as newobject
> fix(object)               # edit in place``

### Date Values


~~ ~~ ~~ ~~ ~~


GOTCHAS

Data types and basic data table manipulations
 There are three important variable types: numeric, character and factor (a double variable with
a numeric and character value). You can query or assign types: is.factor() or as.factor().
 If you import a data table, variables that contain one or more character entries will be set to factor.
You can force them to numeric with this: as.numeric(as.character(dat1$VAR1))
 After subsetting or modification, you might want to refresh factor levels with droplevels(dat1)
 Data tables can be set as.data.frame(), as.matrix(), as.distance()
 names(dat1)=c("ID", "X", "Y", "Z") renames variables. Note that the length of the vector
must match the number of variable you have (four in this case).
 row.names(dat1)=dat1$ID. assigns an ID field to row names. Note that the default row names
are consecutive numbers. In order for this to work, each value in the ID field must be unique.
 To generate unique and descriptive row names that may serve as IDs, you can combine two or more
variables: row.names(dat1)=paste(dat1$SITE, dat1$PLOT, sep="-")
 If you only have numerical values in your data table, you can transpose it (switch rows and columns):
dat1_t=t(dat1). Row names become variables, so run the row.names() function above first.
 dat1[order(X),] orders rows by variable X. dat[order(X,Y),] orders rows by variable X, then
variable Y. dat1[order(X,-Y),]. Orders rows by variable X, then descending by variable Y.
 fix(dat1) to open the entire data table as a spreadsheet and edit cells with a double-click.


SEE MORE HERE: https://sites.ualberta.ca/~ahamann/teaching/renr690/R_Cheat_Data.pdf


## I/O in R

Import, export, and quick checks
 dat1=read.csv("name.csv") to import a standard CSV file (first row are variable names).
 attach(dat1) to set a table as default to look for variables. Use detach() to release.
 dat1=read.delim("name.txt") to import a standard tab-delimited file.
 dat1=read.fwf("name.prn", widths=c(8,8,8)) fixed width (3 variables, 8 characters wide).
 ?read.table to find out more options for importing non-standard data files.
 dat1=read.dbf("name.dbf") requires installation of the foreign package to import DBF files.
 head(dat1) to check the first few rows and variable names of the data table you imported.
 names(dat1) to list variable names in quotation marks (handy for copy and paste to code).
 data.frame(names(dat1)) gives you a list of your variables with the column number indicated,
which can be handy for sub-setting a data table (see next page)
 nrow(dat1) and ncol(dat1) returns the number of rows and columns of a data table.
 length(dat1$VAR1[!is.na(dat1$VAR1)] returns a count of non-missing values in a variable.
 str(dat1) to check variable types, which is useful to see if the import executed correctly.
 write.csv(results, "myresults.csv", na="", row.names=F) to export data. Without
the option statements, missing values will be represented by NA and row numbers will be written out.

- Import a CSV

# first row contains variable names, comma is separator
# assign the variable id to row names
# note the / instead of \ on mswindows systems

``mydata <- read.table("c:/mydata.csv", header=TRUE,
  	sep=",", row.names="id")``

- Import From Excel

From Excel
One of the best ways to read an Excel file is to export it to a comma delimited file and import it using the method above. Alternatively you can use the xlsx package to access Excel files. The first row should contain variable/column names.

``# read in the first worksheet from the workbook myexcel.xlsx
# first row contains variable names
library(xlsx)
mydata <- read.xlsx("c:/myexcel.xlsx", 1)
# read in the worksheet named mysheet
mydata <- read.xlsx("c:/myexcel.xlsx", sheetName = "mysheet")``

- Import from Google Cloud BigQuery

- Export to CSV

- Export to PDF

- Getting Information on a Dataset


## Statistics

- Descriptive Statistics

  1. Packages
  2. Sampels

  R provides a wide range of functions for obtaining summary statistics. One method of obtaining descriptive statistics is to use the sapply( ) function with a specified summary statistic.

  ``> # get means for variables in data frame mydata
  > # excluding missing values
  > sapply(mydata, mean, na.rm=TRUE)``

Possible functions used in sapply include mean, sd, var, min, max, median, range, and quantile.
There are also numerous R functions designed to provide a range of descriptive statistics at once. For example

``# mean,median,25th and 75th quartiles,min,max
  summary(mydata)``

``# Tukey min,lower-hinge, median,upper-hinge,max
  fivenum(x)``


- Frequencies & Crosstabs
  1.
  2.
  3.
  4.

- Calculating Correlations
  1.
  2.
  3.
  4.
  5.

- Examining outliers
  1.
  2.
  3.

- t-tests
  1.
  2.
  3.
  4.

- Nonparametric Statistics

- Calculating regression

- Calculating Multiple Regression

- Regression Diagnostics


## Basic Chart

- Bar charts
- Pie charts
- Histogram
- Box Plot


Everything is not clear uh? Don't worry!

Slowly we will be applying a lot of the mentioned above with real-world example.

If you're reading this Open Guide, you're probably very familiar with Google Analytics, that's why - in order to understand how R and Google Analytics awesomely play together - we will start building the top 10 Most Popular View that you probably use every day.


Let's get started!

============================================================================================================================


You can also embed plots, for example:

``{r pressure, echo=FALSE}
plot(pressure)
``

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.

Go to the [r-project](https://www.r-project.org/)
