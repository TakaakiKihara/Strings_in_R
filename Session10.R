library(stringr)

#1. "\" works as escape. Cancel function of its code.
print("DSO")
print("\"")
cat("\"")
cat("DSO\n545")
cat("DSO\t545")

#2.
cat(":-\\")
cat("(^_^\")")
cat("@_'-'")
cat("\\m/")


#3.
?str_locate
?str_sub

#4.
str_locate(string = "great", pattern = "a")
str_locate(string = "fantastic", pattern = "a")
str_locate_all(string = "fantastic", pattern = "a")
str_locate(string = "super", pattern = "a")

str_locate(c("fantastic", "great", "super"), "a")

#5.
str_sub("testing",1,3)
str_sub("testing",4)
str_sub("testing",1,4)

str_extract("testing",1)

#6.
input <- c("abc","defg")
str_sub(input, c(2,3))            

#7.
emails <- readRDS("email.rds")

cat(emails[1])

#7.
str_locate(emails[1], "\n\n")

#8.
header = str_sub(emails[1],1,842)
cat(header)

cat(str_sub(emails[1],1,842))
cat(str_sub(emails[1],843))

#10
breaks = str_locate(emails, "\n\n")
headers = str_sub(emails,1,breaks[,1])
cat(headers)

bodies = str_sub(emails,breaks[,2])
cat(bodies)


###Second Lab

#1.
fruit = c("apple", "banana", "pear","pinappple")

#2.
#detect the pattern is found
str_detect(fruit, "a")
#pattern starts with a
str_detect(fruit,"^a")
#pattern ends with an a
str_detect(fruit, "a$")

#pattenr to check if it has
str_detect(fruit, "[aeiou]")

str_detect(fruit,"[a-d]")

str_detect(fruit, "[0-9]")

#3
# "." could be any character or number
str_detect(fruit,"^a[a-z]*e$")
str_detect(fruit, "^a.*e$")

#4
phone = c("213 740 4826", 
          "213-740-4826",
          "(213) 740 4826")
str_detect(phone,"[(]?[0-9]{3}[)]?[ -][0-9]{3}[ -][0-9]{4}")

str_extract_all(bodies,"[(]?[0-9]{3}[)]?[ -][0-9]{3}[ -][0-9]{4}")
           