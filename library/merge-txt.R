# Merging files

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
x.y