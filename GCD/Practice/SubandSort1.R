set.seed(13435)
X <- data.frame("var1"=sample(1:5),"var2"=sample(6:10),"var3"=sample(11:15))
X <- X[sample(1:5),]; # Scramble the order
X$var2[c(1,3)] =  NA # Set 1 and 3 value of Var2 as NA
print(X)

print(X[,1]) # Subset Column 1

print(X[,"var1"])

print(X[1:2,"var2"])

print(X[c(1,4),"var2"])

# Logical operations

print(X[(X$var1<=3 & X$var3>11),])

print(X[(X$var1<=3 | X$var3>18),])

#Dealing with NAs

print(X)
print(X[which(X$var2>8),])

print("IF NOT WITH WHICH")
print(X[X$var2>8,])



print ("Sorting......")

print(sort(X$var1))

print(sort(X$var1,decreasing=TRUE))

print(sort(X$var2))

print(sort(X$var2,na.last=TRUE))

#Ordering a data frame based on columns

print(X[order(X$var1),])

#Deal the ties with value in other columns
print(X[order(X$var1,X$var3),])


#Plyr

print("Order with plyr")
library(plyr)

print(arrange(X,var1))

print(arrange(X,desc(var1)))



#Adding Rows and columns

print("Adding Rows and columns")

X$var4 <- rnorm(5)
print(X)

#We can also use cbind to add column and rbind to add row
print("Cbind")
Y <- cbind(X,rnorm(5))
print(Y)

Z <- rbind(X,rnorm(4))
print(Z)