#setwd("/Users/Tsundere/Desktop/Coursera/class 3/")
run_analysis <- function()
{
  
  setwd("/Users/Tsundere/Desktop/Coursera/class 3/project/test")
  testx <- read.table("X_test.txt")
  testy <- read.table("y_test.txt")
  
  setwd("/Users/Tsundere/Desktop/Coursera/class 3/project/train")
  trainx <- read.table("X_train.txt")
  trainy <- read.table("y_train.txt")
  
  setwd("/Users/Tsundere/Desktop/Coursera/class 3/project/")
  feature <- read.table("features.txt")
  featurenames <- as.vector(feature[,2])
  
  names <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", 
             "SITTING", "STANDING", "LAYING") 
  
  x <- rbind(testx, trainx)
  y <- rbind(testy, trainy)
  
  y[y=="1"] <- names[1]
  y[y=="2"] <- names[2]
  y[y=="3"] <- names[3]
  y[y=="4"] <- names[4]
  y[y=="5"] <- names[5]
  y[y=="6"] <- names[6]
  
  datadump <- cbind(y,x)  
  colnames(datadump) <- c("Activity", featurenames))
  

    #data.frame(as.data.frame(datadump[2])) #setting the first value since when i try to
  #cbind an empty dataframe with a column from datadump, i get an error and I cant figure out how 
  #to fix it. 
  
  tidywidy <- as.data.frame(datadump[,1])
  tidycolnames <- vector(mode="numeric", length=0)

 for(f in 1:length(datadump)) {
    if(length(grep("mean|std", colnames(datadump)[f])) == 1) {
      tidywidy <- cbind(tidywidy ,as.data.frame(datadump[,f]))
    }
  } 
  
  for(f in 1:length(featurenames)) {
    if(length(grep("mean|std", featurenames[f])) == 1) {
      tidycolnames <- append(tidycolnames, featurenames[f])
    }
  }
 
  
  colnames(tidywidy) <- c("Activity", tidycolnames)
  write.table(tidywidy)
  
}
