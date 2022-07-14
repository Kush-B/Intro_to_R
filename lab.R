#________________________________________
#Install pre-prequisite packagaes
install.packages("stats")
install.packages("dplyr", dependencies = TRUE)
install.packages("ggplot2")
install.packages("ggfortify")


#1. To import a dataset
data1 <- read.csv("C:/Users/bhard/Downloads/diabetes.csv", header=TRUE, stringsAsFactors=FALSE)

#2.Summarize that diabetes dataset and explain the output.
summary(data1)

#3. Show the structure and dimension of diabetes dataset and explain it.
str(data1)
dim(data1)

#4. fist 10 rows of the table 
head(data1,10)

#5.Show the column names of diabetes dataset.
colnames(data1)
#__________________________________________

#6.What is the class variable in diabetes dataset?
class(data1)

#7.Change the class type of the class variable of diabetes dataset to factor. Show the output after the conversion

data2 <- as.factor(data1)
View(data2)

#8. Find which columns contain missing values in diabetes dataset. What is the total missing values for each
#column?
colSums(is.na(data1))


#9. Replace the missing values in diabetes by 0. Check what if the missing values was replaced successfully
data1[(is.na(data1))]<-0
colSums(is.na(data1))


#_________________________________________

#10. Create a scatter plot. The plot should show the relationship between any two variables of your choice. Add
#labels, title, and color to the plot.

plot(data1$skin, data1$age ,main="Random comparision", col = "red", pch = 18)






