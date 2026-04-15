#control flow statements--- decides which code runs based on conditions.
# if, else, elseif
# if (condition) {
## code
}

x<-10
if (x>5){
  print("x is greater than 5")
}


#if ....else

marks<-40
if (marks>35){
  print("Pass")
}else
  {
  print("Fail")
  }


# if, else if and else
#marks<-78

marks<-as.numeric(readline(prompt = "Enter student Marks: "))


if (marks>=75){
  print("Distinction")
}else if(marks>=60){
  print("First Class")
}else if (marks>=40){
  print("Pass")
}else{
  print("FAil")
}


#loops---
#for loop--used when number of iterations is known
#for (variable in sequence){
#code
#}

for (i in 1:5){
  print(i)
}

numbers<-c(2,3,8,6)
for (n in numbers){
  print(n*2)
}


# while loop--- used when iteration depend on condition

i<-1
while(i<=5){
  print(i ** 3)
  i<-i + 1
}


#repeat loop- loop runs foreever unless we explicity stop it using break

i<-1
repeat{
  print(i)
  i<-i+1
  
if(i>5){
  break
}
}


#what is function---- a block of reuasable code
#builtin function
sum(1,2,3)
mean(c(1,2,3,4,5,6))


#user defined function
#function_name<- function(arguments){
#code
#return(value)
#}

#simple function(no arguments)
greet<-function(){
  print("Hello Students")
}

greet() #function call


#function with argument
numbers_addition<-function(a,b){
  add<-a+b
  return(add)
}

numbers_addition(9,7)

#area
rectangle_area<-function(l,b){
  area<-l*b
  return(area)
}

rectangle_area(10,8)

#return statement
square<-function(x){
  return(x^2)
}

square(9)

#example without return
cube<-function(x){
  x^3
}

cube(3)


#break,next
numbers<-c(1:5)
for (i in numbers) {
  if (i==3){
    #skip
    next
  }
  if (i == 5){
    break
  }
  print(i)
}
