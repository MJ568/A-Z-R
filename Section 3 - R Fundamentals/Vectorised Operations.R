


x <- rnorm(5)
x

for(i in x){  # This loops over and over and will only display the 5th number at the end
  print(i)    # This is R-specific loop
}

print(x[1])
print(x[2])
print(x[3])
print(x[4])
print(x[5])  #This will print each number individually


for (j in 1:5){ # This is a more conventional programming loop as found in python
  print(x[j])
}


#============== 2nd part of tutorial

# Two ways to achieve the same result


N <- 100
a <- rnorm(N)
b <- rnorm(N)

# Vectorised approach

c <- a * b # This is all thats required (much better)


#De-vectorised approach

d <- rep(NA,N)
for(i in 1:N){
  d[i] <- a[i] * b[i]    # This is much more cumbersome and takes much longer to process
}                        # with much larger data (N = 100000000)






