getwd()

setwd("C:\\Users\\sisil\\Desktop\\SLIIT\\2nd year\\2nd sem\\2nd Sem\\Probability and Statics\\Labs\\Lab 3")
getwd()

#import file
data1<-read.csv("DATA 3.csv")

#get data in editor mode
fix("data1")

#rename columns
names(data1)<-c("Age","Gender","Accomodation")
fix("data1")

#rename categorical data in gender column
data1$Gender<-factor(data1$Gender,c(1,2),c("Male","Female"))
fix("data1")

#rename categorical data in accomodation column
data1$Accomodation<-factor(data1$Accomodation,c(1,2,3),c("Home","Boarded","Lodging"))
fix("data1")

#add modifications to imported data set, run it twise
attach(data1)

#Question 2

#frequency table for the gender colomn
gender.freq<-table(Gender)#colomn name
acc.freq<-table(Accomodation)#colomn name

gender.freq
acc.freq

#pie chart
pie(gender.freq,"Pie chart for gender")
pie(acc.freq,"Pie chart for acc")

#bar plots
barplot(gender.freq, main ="bar plot for gender", ylab = "frequency")
abline(h=0) # x exist starts from 0
barplot(acc.freq, main ="bar plot for acc", ylab = "frequency")
abline(h=0)

#boxplot
boxplot(Age, main="Boxplot for age", ylab = "Age", outpch = 8)

#question 3
#two-way freq table

gender_acc.freq<-table(Gender, Accomodation)
gender_acc.freq

#stack bar chart
barplot(gender_acc.freq, main="Gencer and Acc", legend=row.names(gender_acc.freq))
abline(h=0)

#clustered bar chart
barplot(gender_acc.freq,beside = TRUE, main="Gencer and Acc", legend=row.names(gender_acc.freq))
abline(h=0)

#QUESTION4 

#side by side boxplot

boxplot(Age~Gender, main="Boxplot for age by gender", xlab ="gender", ylab="age")
boxplot(Age~Accomodation, main="Boxplot for age by acc", xlab ="acc", ylab="age")

#Question 5 mean
xtabs(Age~Gender+Accomodation)/gender_acc.freq
