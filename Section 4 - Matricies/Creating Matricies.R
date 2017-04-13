

###### 3 ways to create a matrix

## 1. using the matrix() function

my.data <- 1:20
my.data

A <- matrix(my.data, nrow=4, ncol=5)  # The default for R creates data going down each column
A
A[2,3]

B <- matrix(my.data, nrow=4, ncol=5, byrow=T) #This reverses data to go across by rows

B
B[2,5]

### 2. Using the rbind() function

r1 <- c("I","am","happy")
r2 <- c("What","a","day")
r3 <- c(1,2,3)

C <- rbind(r1,r2,r3)   # rbind = bind the vectors in the matrix by rows
C


### 3. Using the cbind() function


s1 <- c("I","am","happy")
s2 <- c("What","a","day")
s3 <- c(1,2,3)

D <-cbind(s1,s2,s3)    # cbind = bind the vectors in the matrix by columns
D
