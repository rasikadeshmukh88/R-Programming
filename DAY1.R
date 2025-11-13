# R PROGRAMMING DAY 1
#-----------------------------
#1.Creating variables
#-----------------------------
  age <- 25
  height_cm=172
  country <- "INDIA"
  is_coder <- TRUE
  
  #printing value of variable
  
  age
  height_cm
  country
  is_coder
  
  #printing data type of variable
  
  mode(age)
  mode(height_cm)
  mode(country)
  mode(is_coder)

#--------------------------------
#2.Understanding paste function
#--------------------------------
  paste("Hello world...")
  paste(country,"has an average height of",height_cm,"cm")
  name<-"R"
  paste("Welcome to",name,"Programming !")
  paste("The result of 2+3 is",2+3)
  
#----------------------------------
#3.R as Calculator
#----------------------------------
  1+1       #Addition
  4-3       #subtraction
  12/3      #Division
  3*5       #multiplication
  2^3       #power
  13%%5     #modulus

  #There is 17 items and each box capacity is 5
  #how much items remains after boxing
  
  items <- 17  
  box_capacity <- 5
  remainder <- items %% box_capacity  
  paste("Boxes completely filled:",items %/% box_capacity)
  paste("Remaining items:",remainder)
  
  # ------------------------------------------------------------
  # 4. Understanding data types
  # ------------------------------------------------------------
  
  w <- c(3, 2, 1, 6, 9)
  x <- "Hello R"
  y <- c(TRUE, FALSE, TRUE)
  z <- c(3 + 2i, 6 + 9i, 1 - 4i)
  
  mode(w)
  mode(x)
  mode(y)
  mode(z)
  
