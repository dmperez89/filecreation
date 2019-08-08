#Set working directory
setwd("C:/Users/OALab/Documents/Juvenile photos/practice")

#List all files in that directory
file_list <- list.files (pattern=".jpg")

#Set working directory path to juvenile photos directory
setwd("/Users/paul.mcelhany/Downloads/juv phots")
#get the name and path to all the folders in the juv photos directory
#these are the tank groups (e.g. "HA", "HB", etc.)
tankGroupFolder <- list.dirs(full.names = TRUE, recursive = FALSE)
#targetpath  <- "C:/Users/OALab/Documents/Juvenile photos/All Photos"

#loop through all the tank groups
for(i in 1:length(tankGroupFolder)){
  #get the name and path to all the molt folder in the tank group folder
  moltFolder <- list.dirs(path = tankGroupFolder[i],full.names = TRUE, recursive = FALSE)
  #loop through all the molt folders in a given tank group
  for(j in 1:length(moltFolder)){
    #get at list of all the file names in the molt folder
    file_list <- list.files(path = moltFolder[j], pattern=".jpg")
  }
  
}



#List all files in that directory
file_list <- list.files(pattern=".jpg")

for(i in 1:length(file_list)){
  setwd(currentpath)
  dtemp <-readJPEG(file_list[i])
  fname<-substr(file_list[i], start=0, stop=28)
  #setwd(targetpath)
  writeJPEG(dtemp, file=paste(fname,"_J1"))
}

