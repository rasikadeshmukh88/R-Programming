#Today's Agenda---- Import/Export file

#Working Directory= Default folder 
#step1: Show current folder
getwd() # r is currently looking for files in this folder

# set a new folder
setwd("C:/Users/Dell/Desktop/Wakad_Data_Science_PPT")

#importing csv file- read.csv()
df<-read.csv("iris.csv")
df

#export csv
write.csv(df, "iris_output.csv", row.names = FALSE) # row.names= False --avoid any extra column


# Install package
install.packages("readxl")
library(readxl)

#importing excel files ---readxl
df1<-read_excel("02.sample-staff-data.xlsx")
df1

df2<-read_excel("C:/Users/Dell/Desktop/Wakad_Data_Science_PPT/03.sample-data-fx.blank.xlsx", sheet= "Data")
df2

#exporting excel file
install.packages("writexl")
library(writexl)

write_xlsx(df2, "sample_data_output.xlsx")


#importing json file

install.packages("jsonlite")
library(jsonlite)

#read json file
df3<- fromJSON("C:/Users/Dell/Desktop/Wakad_Data_Science_PPT/R Programming/students.json")
df3


#convert the data frame to a json object

json_output<-toJSON(df3, pretty = TRUE)
write(json_output, "students_output.json")


#Importing text file
df4<-read.table("C:/Users/Dell/Desktop/Wakad_Data_Science_PPT/R Programming/Hypothesis Testing.txt", sep = "\t")
df4

#Writing text file
write.table(df4,
            file = "testing_output.txt",
            sep = "/t",
            row.names = FALSE,
            quote = FALSE
            )
