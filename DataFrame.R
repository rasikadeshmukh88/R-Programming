# DataFrame--- table like structure

#create vectors for employee data
names<- c("Alice","Bob","Charlie")
ages<- c(25,30,28)
salaries<-c(50000, 45000,70000)

#combine vectors into a dataframe

df_emp<- data.frame(Name = names, Age = ages, Salary = salaries)
df_emp
print(df_emp)

#data.frame(column1, column2,...)

df<- data.frame(
  Name = c("Amit", "Sara", "John"),
  Age = c(21,20,24),
  Marks = c(78,98,56)
)
df

# add a new column

df$Grade<-c("A","A+","B")
df

#remove a column
df$Marks<- NULL
df

#drop a row
df_new<-df[df$Age>21, ]
df_new
df


df_new1<- df[!df$Name %in% c("Amit"), ]
df_new1


#add a column using calculation
df$age_in_3_years<-df$Age + 3
df

#summary 
#str()--structure of the dataset
str(df)

#summary()--- for statistical information of the dataset
summary(df)

#nrow()---number of rows
nrow(df)

#ncol--- number of columns
ncol(df)

#sample data

df1<-data.frame(
  Name = c("Anna","Bob","Charlie","David","Eve"),
  Age = c(23, 45,18, 45, 23),
  City= c("Newyork", "Paris", "London", "Newyork", "Tokyo"),
  Score= c(76.0,91.2, 89.7, 84.6,90.0)
)

df1

#Base R ---using bracket notation
#row filtering using conditions
# all people older than 30
f_df1<- df1[df1$Age>30, ]
f_df1

#multiple condition(AND)
#select people older than 30 and in newyork
f1_df1<- df1[df1$Age>30 & df1$City == "Newyork", ]
f1_df1

#select people named "Anna" or "David"
f2_df1<-df1[df1$Name %in% c("Anna", "David"), ]
f2_df1

f3_df1<-df1[df1$Name %in% c("Anna", "Sara"), ]
f3_df1

f4_df1<-df1[df1$Age < 20 | df1$City == "Newyork", ]
f4_df1


#subset()-- function provide more readable way to filter 
#can refer to columns directly by name
df1
sub_df1<- subset(df1, Age>30)
sub_df1

sub_df2<- subset(df1, Age>30 & City == "Paris")
sub_df2

sub_df3<- subset(df1, Name %in% c("Bob", "David"))
sub_df3

sub_df4<-subset(df1, Age>20 | City == "Paris")
sub_df4
