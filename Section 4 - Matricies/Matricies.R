

#### Visualising with matplotlib



matplot(FieldGoals)

?matplot

### Need to transpose the rows and columns... this is done by the "t" function as below to chart the data properly

matplot(t(FieldGoals), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.01, legend=Players, col=c(1:4,6), pch=15:18, horiz=F)

t(FieldGoals/Games)

matplot(t(FieldGoals/FieldGoalAttempts), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.01, legend=Players, col=c(1:4,6), pch=15:18, horiz=F)


##### Subsetting 

Games

Games[1:3,6:10]  #subset
Games[c(1,10),]  #subset of two rows
Games[,c("2008","2009")]  # subset of two columns
Games[1,] # this isnt a matrix now and has no column names, it is now a vector

is.matrix(Games[1,]) #False
is.vector(Games[1,]) #True

Games[1,5]

is.matrix(Games[1,5]) #False

## To retain a matrix when there is only one row use the following parameter

Games[1,,drop=F]  #This is now a matrix (drop=F means it does not drop the column and row names)

is.matrix(Games[1,,drop=F])  #Matrix is true


######### Visualising Subsets

Data <- MinutesPlayed[1:3,]    ### Important to have the comma after the second number
matplot(t(Data), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.01, legend=Players, col=c(1:4,6), pch=15:18, horiz=F)

Data


#### When changing legend=Players to legend=Players[1] then it reverts to a vector. 
###  therefore to overcome this we need to use the drop function after the MinutesPlayed in brackets

Data <- MinutesPlayed[1,,drop=F]   
matplot(t(Data), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.01, legend=Players[1], col=c(1:4,6), pch=15:18, horiz=F)


#### Creating functions

myplot <- function(){
  Data <- MinutesPlayed[2:3,,drop=F]   
  matplot(t(Data), type="b", pch=15:18, col=c(1:4,6))
  legend("bottomleft", inset=0.01, legend=Players[1], col=c(1:4,6), pch=15:18, horiz=F)
}

myplot()


#### inputting a command into the function() and replacing that in other parts will run that for the plot
#### eg input function(rows) then change MinutesPlayed[rows,,drop=F] and legend=Players[rows]


myplot <- function(rows){
  Data <- MinutesPlayed[rows,,drop=F]   
  matplot(t(Data), type="b", pch=15:18, col=c(1:4,6))
  legend("bottomleft", inset=0.01, legend=Players[rows], col=c(1:4,6), pch=15:18, horiz=F)
}

myplot()

myplot(1:5)  #### if I put 1:5 then I can add and remove players much easier without changing other data


### I can add ontop of this by putting in 'data' after function and inplace of MinutesPlayed
### this will give more flexibility as below


myplot <- function(data, rows=1:10){
  Data <- data[rows,,drop=F]   
  matplot(t(Data), type="b", pch=15:18, col=c(1:4,6))
  legend("bottomleft", inset=0.01, legend=Players[rows], col=c(1:4,6), pch=15:18, horiz=F)
}

myplot(Games)

myplot(MinutesPlayed)

myplot(MinutesPlayed/Games)

### Now all the charts can be displayed very easily with just using the above function and then the name




