# Today's Agenda--- Matrix and Arrays
#Matrix is a two dimensional data structure,all of same data type

#creating matrix
#syntax----> matrix(data, nrow, ncol, byrow =  TRUE/FALSE, dimnames = NULL)

#default(column wise fill)
my1_matrix<- matrix(c(1,2,3,4,5,6), nrow= 2, ncol=3)
my1_matrix

#example 2
m1<-matrix(1:9, nrow=3)
m1

#example 3 : row wise fill
m2<-matrix(5:10, nrow=2 , byrow = TRUE)
m2


#Accessing elements of matrix
m2[2,]
m2[1,2]
m2[1:2,1:2]

#Matrix operation
#create two sample matrices
X<-matrix(c(1,2,3,4), nrow = 2,ncol = 2, byrow = TRUE)
Y<-matrix(c(5,6,7,8), nrow = 2, ncol = 2, byrow = TRUE)

print("Matrix X:")
print(X)

print("Matrix Y:")
print(Y)

#Addition element wise
c_add<- X + Y
print(c_add)

#element wise multiplication
c_mul<- X * Y
print(c_mul)

#Matrix multiplication(using %*%)
c_Matrix_multiplication<- X %*% Y
print(c_Matrix_multiplication)

# Transpose of X
X_T <- t(X)
print(X_T)

#Inverse of X
X_inv<-solve(X)
print("Inverse of A:")
print(X_inv)


#Arrays---a matrix with more layers
#it is a multi dimensional data structure,used to store homogenous data

#create vector
data_vector<- 1:12

#create an array
array1<- array(data_vector, dim = c(2,3,2))
print(array1)

#access the element of an array---- 
print(array1[1,2,1])

#access the entire second layer
print(array1[, ,2])

# access the first row 
print(array1[1, , ])

#operations 

#create second array
array2<- array(1:24, dim=c(2,3,2))
array2

#element wise addition
ar_sum<-array1 + array2
ar_sum

#element wise subtraction
ar_sub<-array1 - array2
ar_sub
