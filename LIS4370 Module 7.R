#Making sample data
data("airquality")
head(airquality, 6)
list(airquality, 6)

#Determine object for airquality
isS4(airquality)


#Create S3
s <- list(name = "Nick", age = 23, GPA = 3.2)
s

#Create S4
setClass("student", slots = c(name = "character", age = "numeric", GPA = "numeric"))
s4 <- new("student", name = "Nick", age = 23, GPA = 3.2)
s4


mode(s4)
mode(s4@name)
mode(s4@age)
mode(s4@GPA)