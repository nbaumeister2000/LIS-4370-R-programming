Frequency <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
BP <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
First <- c(1,1,1,1,0,0,0,0,NA, 1)
Second <- c(0,0,1,1,0,0,1,1,1,1)
FinalDecision <- c(0,1,0,1,0,1,0,1,1,1)

agreement <- First + Second + FinalDecision


#Make a data frame
data <- data.frame(Frequency, BP, First, Second, FinalDecision)

#Create plot for visits
boxplot(data$Frequency)
hist(data$Frequency)

#Create plots for blood pressure
boxplot(data$BP)
hist(data$BP)

#Histogram of first doctor decision
hist(data$First)

#Histogram of second doctor decision
hist(data$Second)

#Histogram of final doctor decision
hist(data$FinalDecision)

#Plot agreement against agreement of doctors using ggplot2
library(ggplot2)
ggplot(data, aes(BP, agreement)) + geom_col()
