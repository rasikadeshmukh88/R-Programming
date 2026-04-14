# A vector is a sequence of elements of the same data type.
# creating vector c stands for "combine" or "concatenate.
#Numeric vector
v <- c(1,2,3,4)
v

#character vector
char_vec<-c("Sneha", "Chetan", "Rupali")
char_vec

#Logical vector
log_vec<-c(TRUE,FALSE,TRUE)
log_vec


# --------------------sequence----------------------------------
# In R, a sequence refers to an ordered list of elements, 
# typically numbers, generated using specific functions or operators. 
# The primary tools for this are the seq() function and the colon operator (:), 
#which create a vector of values with a defined start, end, and step size.

#create a sequence of integer

seq_vec<-2:10
print(seq_vec)

#odd_numbers from 1 to 10
odd_num<-seq(from = 1, to =10, by =2)
odd_num

#sequence from 1 to 20 with specific length of 5
spec_vec<-seq(from =1, to = 20, by = 5)
spec_vec



#-------------------------------repeat---------------------------------
#rep() – The rep() function repeats a value or a vector a specified number of times.

rep(5,3)
rep(c(1,2), times=3)

rep(c(1,2,3), each = 2)


#Indexing and slicing
v1<-c(1,2,3,4,5)
v1[1:3]
v1[c(1,5)]
v1[-3]  #exclude 3rd element

#vectorized operations
a<-c(1,2,3)
b<-c(4,5,6)
a+b
a*b
a/b

#------------------------list-------------------------------------------
#List--a list is a versatile, one-dimensional data structure used to 
#store an ordered collection of objects, 
#which can be of different data types.

#creating list
lis1<-list(1,2.5,"Delhi",scores=c(23,56,90))
lis1
#access the list elements
lis1[2]
lis1[3]
lis1[4]
lis1[4]$scores[2]



#------------------------------factors-----------------------------------
#Factors--factors data structures that are used to represent 
#and work with categorical data.
#In R programming, unordered factors (nominal variables) are used for 
#categorical data where the categories have no inherent ranking 
#(e.g., colors, gender), 
#while ordered factors (ordinal variables) represent data with a 
#meaningful hierarchy

#create factors
#unordered factor
dir_vect<-c("North","West","East","North","South","West")
#convert vector to factor
dir_factor<-factor(dir_vect)
dir_factor

dir_factor[1]>dir_factor[2]

#ordered factor
speed_vect<-c("Medium","Fast","Medium","Medium","Slow","Fast","Slow")
speed_factor<-factor(speed_vect, ordered = TRUE,
                     levels = c("Slow","Medium","Fast"))
speed_factor

speed_factor[1]>speed_factor[2]
speed_factor[1]==speed_factor[3]
speed_factor[2]>speed_factor[5]
