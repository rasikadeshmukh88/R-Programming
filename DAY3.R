# R PROGRAMMING DAY 3
#------------------------------------
#  Matrices
#------------------------------------

# A matrix is a 2D structure: rows × columns.

#creating first matrix
x<-matrix(c(1,2,3,4),nrow=2,ncol=2)
x

#Access elements using [row,column]
x<-matrix(c(10,20,30,40),nrow=2,ncol=2)
x

x[1, 1]  # row 1, column 1
x[2, 1]  # row 2, column 1
x[1, 2]  # row 1, column 2
x[2, 2]  # row 2, column 2

#Get dimensions
dim(x)    #2 rows,2 columns

# creating empty matrix
y <- matrix(nrow = 2, ncol = 2)
y

# By default, R fills matrices column by column
y[1:4] <- c(1, 2)
y

y[1:4] <- c(10, 20)
y

y[1:4] <- c(100, 200,300)
y

#MATRIX FILLING: byrow parameter
z <- matrix(c(1, 2, 3, 4, 5, 7, 8, 10), nrow = 2, byrow = TRUE)
z

z <- matrix(c(1, 2, 3, 4, 5, 7, 8, 10), nrow = 2, byrow = FALSE)
z

# byrow = TRUE → fill row-wise
# byrow = FALSE → fill column-wise (default)

# Visual comparison
m_col <- matrix(1:6,nrow=2,byrow=FALSE)
m_row <- matrix(1:6,nrow=2,byrow=TRUE)
m_col
m_row

# Matrix math
x <- matrix(c(10, 20, 30, 40), nrow = 2, byrow = FALSE)
x

x + 4          # adds 4 to every element
x * 5          # multiply to every element by 5
x + c(1, 2)    # vector recycling (column-wise)

# Matrix multiplication (Dot product)
y <- matrix(c(1, 2, 3, 4), nrow = 2)
x %*% y        # matrix multiplication (rows × columns)
x * y          # element-wise multiplication

# attributes() FUNCTION
z <- matrix(seq(1, 6), nrow = 2, byrow = TRUE)
z

attributes(z)   #structure of matrix(2,3)
length(z)       #how many elements (6)

# Adding rows and columns
x <- matrix(c(1, 2, 3, 4), nrow = 2)
x

cbind(x, c(100, 100))       # add new column
rbind(x, c(100, 100))       # add new row

# RECYCLING IN MATRICES
x <- matrix(c(1, 2), nrow = 4, ncol = 2)
x

x <- matrix(c(1, 2,3), nrow = 5, ncol = 4)
x

#-----------------------------------
# Introduction to List
#------------------------------------
# A list in R is a flexible data structure that can store elements
# of different data types and lengths. Unlike vectors or matrices,
# lists can hold numbers, text, logical values, and even other lists.


student_name <- "Rasika"
scores <- c(85,90,88)
passed <- TRUE

student_info <- list(student_name,scores,passed)
student_info

#assigning names to  components makes them easier to understand
student_record <- list(
  name="Rasika",
  marks=c(88,90,87),
  grade="A",
  passed=TRUE
)
student_record

#Accessing the elements
student_record[["marks"]]
student_record["marks"]

#Accessing elements using variable name directly
student_record$name
student_record$marks

# Accessing list elements:
student_record["marks"]   # Returns a sublist
student_record[["marks"]] # Returns the vector directly
student_record$marks      # Access by name shortcut



#Modify list elements
student_record$marks <- c(85,90,95)
student_record

#Modify name from list 
student_record$name <- "Rashmika"
student_record

#Add New Element to List
student_record$city <- "Pune"
student_record

#Remove an Element from list
student_record$city <- NULL
student_record

# [] returns a sublist (still a list)
# [[]] extracts the actual value from that position
# $ extracts element using its name

employee <-list(
  id=102,
  name="Ravi",
  department="Finance",
  salary=65000
)
employee

employee["name"]     # returns a list
employee[["name"]]   # returns the value "Ravi"
employee$name        # shortcut to access element by name


#extract department value
employee$department
employee[["name"]]

customer <- list(
  name="Arjun",
  city="Delhi",
  purchased_items=c("shoes","bag","watch")
)
customer

#Remove city from customer list
customer$city<-NULL
customer

#Assigning new value
customer$city <- "Mumbai"
customer

#List with Mixed Data Types
mixed_data <- list(
  product = "Laptop",
  quantity = 3,
  in_stock = TRUE,
  prices = c(55000, 60000, 58000)
)
mixed_data

# Accessing data
mixed_data$prices
mixed_data[[4]][2]   # Accessing 2nd price

#Creating an Empty List and Filling It
# You can create an empty list first and then add data later.

store_details <- list()
store_details[[1]] <- "Tech World"
store_details[[2]] <- c("Laptops", "Phones", "Tablets")
store_details[[3]] <- TRUE
store_details[[4]] <- c(100, 230, 85)  # stock count
store_details

# Access the second element (categories)
store_details[[2]]
store_details[2]
store_details

# Converting Vectors to Lists
numbers_vector <- c(10, 20, 30, 40)
numbers_list <- as.list(numbers_vector)
numbers_list

# Each element of the vector becomes a separate component in the list.
# This is useful when we want to manipulate each value independently.

# Accessing
numbers_list[[1]]   # first value
numbers_list[[4]]   # fourth value



