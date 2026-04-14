#variables
x<-10
x

name<- "R"
name
print(name)

price <- 99.5
price


#valid variable name

name<-"Amit"
name

student_age<- 20
student_age

.total_amount<-1000
.total_amount

total.amount<-900
total.amount


#invalid variable name

2name<- "R"

total-price<-7000


# Type checking functions
num<- 20
text<- "Hello"
flag<- TRUE
integer_num<- 10L
complex_num<- 2+3i

#class function to see the type of data
class(num)
class(complex_num)

#type checking function output in format of true and false
is.data.frame(flag)
is.numeric(text)
is.integer(integer_num)


#type conversion functions

x<-"67"
as.numeric(x)

a<- 26
as.character(a)

z<-1
as.logical(z)


#Arithmetic operator

a<-10
b<-6
a+b
a-b
a*b
a/b
a^b
a%%b
a%/%b


#relation operator
a<-11
b<-4
a>b
a<b
a==b
a!=b


#logical operator
x<-TRUE
y<-FALSE

x&y
x|y
!x

FALSE && (10>2)
FALSE || (10>2)
