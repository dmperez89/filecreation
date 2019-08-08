#code to get file creation date of all the .jpg files in a folder


#set the working directory
setwd("C:/Users/OALab/Documents/Juvenile photos/HA (Red)/J7")

#List all files in that directory
fileName <- dir(getwd(),pattern=".jpg")
fileCreationDate <- file.info(fileName)$ctime

d <- data.frame(fileName, fileCreationDate)

write.csv(d, "fileCreationDates.csv", row.names = FALSE)

