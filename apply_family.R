#apply family --- set of functions used to apply on data without using loops
#apply()----apply(Data,Margin,Fun)

m<-matrix(1:9,nrow=3)
m
apply(m, 1, sum)#row wise
apply(m, 2, mean)#column wise


#create a dataframe
df<-data.frame(
  math = c(79,89,90),
  science = c(8,67,78),
  english = c(78,76,90)
)
df

#lapply---
lapply(df,mean)
lapply(df, summary)


#sapply()---simplified output,sam as lapply()
sapply(df, mean)


#tapply()
marks<-c(70,78,80,76,90,56,98)
subject<-c("Math","Math","Science","Science","Math","Science","Math")

tapply(marks,subject,mean)

#subsetting ----selecting a part of data (rows,columns)
#row subsetting
df
df[1, ]

#column wise
df$math
df$science

#condition based subsetting
df[df$math>80, ]

#sort a vector

df<-data.frame(
  name = c("B", "D", "A","C"),
  marks = c(78,90,67,90)
)

sort(df$name) #by default ascending order
sort(df$marks, decreasing = TRUE )

#order function -- sort data frame by one column
df[order(df$marks), ]
df[order(-df$marks), ] #descending
