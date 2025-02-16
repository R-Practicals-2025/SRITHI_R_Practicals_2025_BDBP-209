### LAB-7 *****(DISCUSSION)

#deleting col from a dataframe 
data=read.csv("~/Downloads/BrainCancer.csv",header=TRUE)
print(colnames(data))
data$time <- NULL
#print(data.head())
print(colnames(data))


##installing the packages for readxl
install.packages("readxl")
##now you have to load that package in library then only you can read that
library(readxl)
##read the data
data2=read_excel("~/Downloads/pone.0148733.s001.xlsx",1) ## 1 stands for the sheet number .
##now print the column names of that data
print(colnames(data2))

a=5.0
b=10.0
c=15.0
d=20.0
#if (a<b)
  #print("a is less than b")

a1=5.0
b1=10.0
c1=15.0
d1=20.0
if (a1>b1){
  print("a is greater than b")
}
if (a1>b1){
  print("a>b")
}else if (b1<c1){
  print("b<c")
}

if (a>b){
  print("a>b")}
#else if (a<b){
  print("b<c")
#}

##for loop in one line
for (i in 1:5) print(i^2)
j=0
k=1
for (i in 1:5){
  j=j+1
  k=k+2
  print(paste("j=",j,"k=",k))
  print(paste(j,k))
}

fn=function(x) x^2
fac1=function(x){
  f=1
  if (x<2)return(1)
  for (i in 2:x){
    f=f*i
    f}
  return(f)
}
print(fac1(4))
print(sapply(0:5,fac1)) ###this will print 1(for 1), 1(fo

fac2=function(x){
  f=1
  t=x
  while(t>1){
    f=f*t
    t=t-1}
  return(f)
  }
print(fac2(5))

fac3=function(x){
  f=1
  t=x
  repeat{ ## repeat will also work like while only if we comment this if condition ir will go for infinite loop
    if (t<2)break
    f=f*t
    t=t-1}
  return(f)
    
  }
print(fac3(6))
print(sapply(0:6,fac3))

fac4=function(x)max(cumprod(1:x))
print(fac4(3))

fac5=function(x) gamma(x+1)
print(fac5(4))

factorial(6)

x=runif(1000000000)
pc=proc.time()
#result1=fac1(2005)
#proc.time()-pc ##this is giving 
#x=runif(100000000000000000000)
cmax=x[1]
for (i in 10000000){
  if (x[i]>cmax)cmax=x[i]}
proc.time()-pc 


setA=c("a","b","c","d")
setB=c("d","e","f","g","h")
union(setA,setB)
intersect(setA,setB)
setdiff(setA,setB)
setdiff(setB,setA)
setA[setA %in% setB]
setA %in% setB
c(setdiff(setB,setA),intersect(setA,setB),setdiff(setB,setA))
setequal(c(setdiff(setB,setA),intersect(setA,setB)),union(setB,setA))

##LAB -7 QUESTIONS

##Q-11##

data_matrix <- matrix(c(1,0,2,5,3,1,1,3,1,3,3,1,0,2,2,1,0,2,1,0), nrow=4, byrow=TRUE)# Create the 4x5 matrix

rownames(data_matrix) <- paste("Trial", 1:4, sep="-")# Add row names with 'Trial-' prefix
# (a)
colnames(data_matrix) <- c("aspirin", "paracetamol", "nurofen", "hedex", "placebo") ##Add column names directly
print(data_matrix)

# (b)
dimnames(data_matrix) <- list(rownames(data_matrix), paste("drug", 1:5, sep="."))#Add column names using dimnames()
print(data_matrix)


##Q-12


X <- matrix(c(1,0,2,5,3,1,1,3,1,3,3,1,0,2,2,1,0,2,1,0), nrow=4, byrow=TRUE)# Define the matrix
rownames(X) <- paste("Trial", 1:4, sep="-")
colnames(X) <- paste("drug", 1:5, sep=".")

# (i)
mean_X5 <- mean(X[,5]) #Mean of the 5th column
print(mean_X5)

# (ii) 
var_X4 <- var(X[4,])#Variance of the 4th row
print(var_X4)

# (iii) 
row_sums <- rowSums(X)#Sum of elements along rows
print(row_sums)
apply_row_sums <- apply(X, 1, sum)
print(apply_row_sums)

# (iv) 
col_sums <- colSums(X)#Sum of elements along columns
print(col_sums)
apply_col_sums <- apply(X, 2, sum)
print(apply_col_sums)

# (v) 
row_means <- rowMeans(X)#Mean of elements along rows
print(row_means)
apply_row_means <- apply(X, 1, mean)
print(apply_row_means)

# (vi) 
col_means <- colMeans(X)#Mean of elements along columns
print(col_means)
apply_col_means <- apply(X, 2, mean)
print(apply_col_means)

# (vii) 
group <- c("A", "B", "B", "A")#Sum groups of rows within a column
rowsum_X <- rowsum(X, group)
print(rowsum_X)

tapply_X <- tapply(X, list(group[row(X)], col(X)), sum)# Alternative using tapply
print(tapply_X)

aggregate_X <- aggregate(X, list(group), sum)# Alternative using aggregate
print(aggregate_X)

# (viii) 
shuffled_cols <- apply(X, 2, sample)#Shuffle elements in each column
print(shuffled_cols)

# 
shuffled_rows <- t(apply(X, 1, sample))#Shuffle elements in each row
print(shuffled_rows)

# (ix) Add row for column means and column for row variances
X <- rbind(X, colMeans(X))  # Add row at bottom
X <- cbind(X, apply(X, 1, var))  # Add column at right

# Update row and column names
col_headings <- c(paste("drug", 1:5, sep="."), "var")
row_headings <- c(paste("Trial-", 1:4, sep=""), "Mean")

dimnames(X) <- list(row_headings, col_headings)

# Print the final modified matrix
print(X)

###Q-13

# (i)
data <- data.frame(
  ki = c(10, 15, 20, 25, 30),
  gtv = c(5, 10, 15, 20, 25),
  time = c(2, 4, 6, 8, 10)
)
eg_sweep <- data  # Assign to eg_sweep

# (ii)
cols <- apply(eg_sweep, 2, mean)# Compute column means
print("Column Means:")
print(cols)

# (iii)
cols.means <- matrix(rep(cols, rep(dim(eg_sweep)[1], dim(eg_sweep)[2])),nrow=dim(eg_sweep)[1], byrow=TRUE)#Sweeping manually (subtract column means manually)

eg_sweep_alt <- eg_sweep - cols.means

print("Method 1: Manual Sweeping")
print(eg_sweep_alt)

# (iv) Using sweep() function
eg_sweep1 <- sweep(eg_sweep, 2, cols, "-")  # Subtract column means
print("Method 2: Using sweep()")
print(eg_sweep1)

##Q-14

# (i) Read the data from pgfull.txt
data <- read.table("pgfull.txt", header=TRUE)  

# (ii) Extract columns 1 to 54 and call it species
species <- data[, 1:54]  

# (iii) Use max.col to get the column index of the max value in each row
max_indices <- max.col(species)
print("Column indices of max values:")
print(max_indices)

# (iv) Extract species names corresponding to max indices
species_names <- names(species)[max_indices]
print("Species with max values:")
print(species_names)

# (v) Build a frequency table of species
species_freq <- table(species_names)
print("Frequency table of species:")
print(species_freq)

# (vi) Extract column indices for the **minimum** value along each row  
# Since `max.col()` only finds the max, we can use `-species` to reverse the order of values
min_indices <- max.col(-species)  
print("Column indices of min values:")
print(min_indices)

# (vii) Extract species names corresponding to min indices
species_min_names <- names(species)[min_indices]
print("Species with min values:")
print(species_min_names)

##Q-15

# (i) 
apples <- c(4, 4.5, 4.2, 5.1, 3.9)
oranges <- c(TRUE, TRUE, FALSE)
chalk <- c("limestone", "marl", "oolite", "CaCO3")
cheese <- c(3.2 - 4.5i, 12.8 + 2.2i)

# Creating a list of the above objects
items <- list(apples, oranges, chalk, cheese)
print("The complete list:")
print(items)

print("Third item (chalk):")
print(items[[3]])

# Accessing the third element of the third item
print("Third element of chalk:")
print(items[[3]][3])

### What happens if you try to create a dataframe of the above objects?
#df_attempt <- data.frame(apples, oranges, chalk, cheese)  # This will likely fail due to mixed types
print("Attempting to create a dataframe:")
#print(df_attempt)

### Difference between items[3] and items[[3]]
print("Using items[3]:")  
print(items[3])  # Returns a list containing the third item

print("Using items[[3]]:")
print(items[[3]])  # Returns just the third item itself

# (ii) Naming list elements
items <- list(first=apples, second=oranges, third=chalk, fourth=cheese)
print("Names of items in the list:")
print(names(items))

### Accessing list elements using $
print("Accessing the fourth element using $ notation:")
print(items$fourth)

### Checking the class of the list
print("Class of items:")
print(class(items))

### (iii) Using lapply() to apply functions to lists
print("Length of each list item:")
print(lapply(items, length))

print("Class of each list item:")
print(lapply(items, class))

### Predict the output before running
print("Mean of each list item:")
print(lapply(items, mean))  # This will fail for non-numeric elements

### (iv) Using summary() and str() on lists
print("Summary of items:")
print(summary(items))

print("Structure of items:")
print(str(items))

##Q-1##

# (i) Create a 3x4 matrix with numbers from 10 to 120 in steps of 10
amat <- matrix(seq(10, 120, by = 10), nrow = 3, ncol = 4, byrow = TRUE)
print(amat)

# Create another matrix without byrow = TRUE (column-wise filling)
amat2 <- matrix(seq(10, 120, by = 10), nrow = 3, ncol = 4, byrow = FALSE)
print(amat2)

# Relation between amat and amat2:
# amat is filled row-wise, whereas amat2 is filled column-wise.

# (ii) Assign row and column names to amat
rownames(amat) <- c("R1", "R2", "R3")
colnames(amat) <- c("C1", "C2", "C3", "C4")
print(amat)

# (iii) Form 4x4 matrices A and B
A <- matrix(c(2,5,7,3,1,8,9,10,1,12,5,10,4,17,15,11), nrow = 4, byrow = TRUE)
B <- matrix(c(12,5,3,17,1,18,9,10,1,12,5,10,4,15,15,4), nrow = 4, byrow = TRUE)

print(A)
print(B)

# Element-wise multiplication
elementwise_product <- A * B
print(elementwise_product)

# Matrix-matrix multiplication
matrix_product <- A %*% B
print(matrix_product)

# (iv) Define vectors X and Y
X <- c(5,6,8,9)
Y <- c(8,10,12,5)

# Outer product of X and Y
outer_product <- outer(X, Y)
print(outer_product)

# Inner product of X and Y
inner_product <- sum(X * Y)  # Equivalent to dot product
print(inner_product)

# (v) Form a diagonal matrix using X
diag_matrix <- diag(X)
print(diag_matrix)

# (vi) Print the diagonal elements of A
diag_elements <- diag(A)
print(diag_elements)

# (vii) Create a 6x6 identity matrix
identity_matrix <- diag(6)
print(identity_matrix)

# (viii) Create a 3x3 matrix A
A <- matrix(c(3,4,-2,4,-5,1,10,-6,5), nrow = 3, byrow = TRUE)
print(A)

# (ix) Create a 3x1 matrix B
B <- matrix(c(5,-3,13), nrow = 3, byrow = TRUE)
print(B)

# (x) Solve AX = B for X
X <- solve(A, B)
print(X)
print(class(X))  # Check the type of object

# (xi) Find the inverse of A
Ainv <- solve(A)
print(Ainv)

# Verify inverse by checking Ainv * A = Identity matrix
identity_check <- Ainv %*% A
print(identity_check)  # Should be close to an identity matrix

# (xii) Find eigenvalues and eigenvectors of A
results <- eigen(A)
print(results)

# Type of object results
print(class(results))  # List

# Perform matrix-vector multiplication with second eigenvector
second_eigenvector <- results$vectors[,2]
multiplication_result <- A %*% second_eigenvector
print(multiplication_result)

# Explanation: The result should be the eigenvector scaled by its corresponding eigenvalue.
# i.e., A * v = λ * v, where λ is the eigenvalue corresponding to the eigenvector.


##Q-5##

# (i) Create a vector and filter data
vec <- c(8,10,12,7,14,16,2,4,9,19,20,3,6)

# (a) Values greater than 12
vec[vec > 12]

# (b) Values greater than 10 and less than 20
vec[vec > 10 & vec < 20]

# (ii) Create an array and remove NA values, keeping values < 100
A <- c(2,7,29,32,41,11,15,NA,NA,55,32,NA,42,109)
A_clean <- A[!is.na(A) & A < 100]
print(A_clean)

# (iii) Assign 0 to NA values in A
A[is.na(A)] <- 0
print(A)

# (iv) Create vectors for gene names and gender
GeneName <- paste0("gene-", 1:7)
Gender <- c("M","M","F","M","F","F","M")

# (v) Enter result vectors
result1 <- c(12.3, 11.5, 13.6, 15.4, 9.4, 8.1, 10.0)
result2 <- c(22.1, 25.7, 32.5, 42.5, 12.6, 15.5, 17.6)
result3 <- c(15.5, 13.4, 11.5, 21.7, 14.5, 16.5, 12.1)
result4 <- c(14.4, 16.6, 45.0, 11.0, 9.7, 10.0, 12.5)
result5 <- c(12.2, 15.5, 17.4, 19.4, 10.2, 9.8, 9.0)
result6 <- c(13.3, 14.5, 21.6, 17.9, 15.6, 14.4, 12.0)
result7 <- c(11.0, 10.0, 12.2, 14.3, 23.3, 19.8, 13.4)

# (vi) Create a dataframe
datframe <- data.frame(GeneName, Gender, result1, result2, result3, result4, result5, result6, result7)

# (vii) Rename columns
colnames(datframe) <- c("GeneName", "Gender", "expt1", "expt2", "expt3", "expt4", "expt5", "expt6", "expt7")

# (viii) Subset where expt2 > 20
subset_expt2_gt_20 <- subset(datframe, expt2 > 20)
print(subset_expt2_gt_20)

# (ix) Subset where Gender is Female
subset_female <- subset(datframe, Gender == "F")
print(subset_female)

# (x) Subset where Gender is Male and expt2 < 30
subset_male_expt2_lt_30 <- subset(datframe, Gender == "M" & expt2 < 30)
print(subset_male_expt2_lt_30)

###Q-6##
####(i)
quadrant=function(x){
  if (x<90){
    print("first quadrant")
  }else if (90<x & x>180){
    print("second quadrant")
  }else if (180<x & x>270){
    print("third quadrant")
  }else{ 
    print("forth quadrant")
  }
  
}
quadrant(76)

####(ii)
sort_three_numbers <- function(a, b, c) {
  if (a >= b && a >= c) {
    if (b >= c) {
      print(c(a, b, c))
    } else {
      print(c(a, c, b))
    }
  } else if (b >= a && b >= c) {
    if (a >= c) {
      print(c(b, a, c))
    } else {
      print(c(b, c, a))
    }
  } else {
    if (a >= b) {
      print(c(c, a, b))
    } else {
      print(c(c, b, a))
    }
  }
}

# Example usage
sort_three_numbers(15, 9, 20)  # Output: 20 15 9
sort_three_numbers(5, 10, 8)   # Output: 10 8 5
sort_three_numbers(25, 25, 10) # Output: 25 25 10

####(iii)
calculate_ticket_cost <- function(distance, age) {
  # Base fare
  if (distance <= 100) {
    cost <- 100
  } else if (distance <= 1000) {
    cost <- 100 + (distance - 100) * 1.50
  } else {
    cost <- 100 + (900 * 1.50) + (distance - 1000) * 2
  }
  
  # Apply concessions
  if (age > 60) {
    cost <- cost * 0.75  # 25% discount
  } else if (age < 6) {
    cost <- cost * 0.50  # 50% discount
  }
  
  print(paste("Ticket cost: Rs.", round(cost, 2)))
}

# Example usage
calculate_ticket_cost(50, 30)   # Rs. 100 (Base fare)
calculate_ticket_cost(500, 65)  # Rs. 475 (25% off)
calculate_ticket_cost(1200, 4)  # Rs. 800 (50% off)







  