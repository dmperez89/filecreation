#Set working directory
setwd("C:/Users/OALab/Documents/Juvenile photos/practice")

#List all files in that directory
file_list <- list.files (pattern=".jpg")

#Set working directory
currentpath <- "C:/Users/OALab/Documents/Juvenile photos/practice"
#targetpath  <- "C:/Users/OALab/Documents/Juvenile photos/All Photos"

#List all files in that directory
file_list <- list.files (pattern=".jpg")

for(i in 1:length(file_list)){
  setwd(currentpath)
  dtemp <-readJPEG(file_list[i])
  fname<-substr(file_list[i], start=0, stop=28)
  #setwd(targetpath)
  writeJPEG(dtemp, file=paste(fname,"_J1"))
}

