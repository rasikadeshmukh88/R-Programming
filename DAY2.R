# ------------------------------------------------------------
#  NA NA = missing data; NaN = invalid numeric result.
# ------------------------------------------------------------

a <- NA  
b <- 0
a
b

is.na(a)
is.na(b)

#---------------------------------
# Working with vectors
#---------------------------------
marks <-c(78,85,92,88,76)
marks

#Adding 5 marks in each value of vector
marks + 5

#Multiply each element by 2
marks * 2

#calculate power(2) of each element
marks ^ 2

#Adding extra marks to each element
extra_marks <-c(2,0,1,0,3)
marks+extra_marks

# creating a vector  
w<-c(10,20,30,40,50,60,70,80,90,100)
w
 
#Accessing elements by index
w[1]        #first element
w[1:5]      #element from index 1 to 5
w[1:10]     #element from index 1 to 10
w[5:10]     #element from index 5 to 10

#does not access the element
w[-10]  #skip the element at index 10
w[-4]   #skip the element at index 4
w[-6]   #skip the element at index 6

# Indexing using logical values
# TRUE = select element, FALSE = skip element
w[c(TRUE,FALSE,TRUE,FALSE,TRUE,FALSE)]  
w[c(T,F,F,F)]  

#print the numbers above 90 using T/F
marksheet<-c(98,88,99,78,92,80)  
marksheet[c(T,F,T,F,T,F)]

#print the numbers above 75
marksheet<-c(45,67,77,78,87,90,45,67,79)  
marksheet[marksheet>75]

#print the score above 70
score<-c(67,78,97,53,68)
score[score>70]

#creating vector
w<-c(11,12,13,14,15)
w

#Insert value (true) in between existing value
w<-c(w[1],TRUE,w[2:length(w)])
w

#Adding 99 at the middle
a<-c(1,2,3,4)
a<-c(a[1:2],99,a[3:4])
a

#Adding 100 to the end
a<-c(a[1:5],100)  
a  

#Addition of vector

x<-c(1,2,3,4)
y<-c(1,2,3,4,5)
z=x+y
z    

a<-c(10,5,6,7)
b<-c(1,2,3,4,5)
c=a+b
c    

prices<-c(100,200,300,400)
tax_rate<-0.18
total_price<-prices+(prices*tax_rate)
total_price

-------------------------------------
#creating empty and predefine vector
-------------------------------------
# creates 10 zeros
x<-vector("numeric",10)
x

y<-vector("logical",10)
y

x[1:10]<-c(1,2)
x  

x[1:5]<-c(1,2,3,4,5)
x

#The colon(:) operator creates a simple integer sequence
n=10
n=n-1
n

1:(n-1)
days<-1:10  
days  

-------------------------
#function-seq():Generate sequences
-------------------------
seq(from = 1, to = 10, by = 2)

#print table of 2
two_table<-seq(2,20,2)
two_table  

#print table of 3
three_table<-seq(3,30,3)
three_table  

#print odd numbers 1-15
odd_numbers <- seq(1, 15,2)
odd_numbers

--------------------------------
#function-rep()-repeat elements
--------------------------------
#repeat (1,12) 3 times
rep(c(1,12),3)

#repeat 5 as 4 times
rep(5,4)  
