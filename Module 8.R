# install.packages("pryr")
require(pryr)
require(ISLR)
require(boot)
# install.packages("plyr")
library(data.table)
library(plyr)

#Step 1
Student <- read.table(file.choose(), header = TRUE, sep = ",")
StudentAverage <- ddply(Student, "Sex", transform, Grade.Average = mean(Grade))

#Step 2
i_students <- subset(StudentAverage, grepl("i", StudentAverage$Name, ignore.case = T))
write.table(i_students$Name, file = "i_names.csv", row.names = FALSE)


#step 3
write.csv(data, file = "data.csv", row.names = FALSE)
