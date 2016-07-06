  #Package is loaded
library(reshape2)   

filename<- "dataset.zip"

if(!file.exists(filename)) {
  url<- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(url, destfile = filename)
}

directory<-"UCI HAR Dataset"

if(!file.exists(directory)) {
  unzip(filename)
}

#reading basic variables activities and features, cleaning names
activities<-read.table(paste0("./", directory,"/activity_labels.txt", set=""))
activities[,2]<-as.character(activities[,2])
features<-read.table(paste0("./", directory, "/features.txt", set=""))
features[,2]<-as.character(features[,2])
features_index<-grep(".*mean.*|.*std.*", features[,2])
features_vars<-features[features_index, 2]
features_vars<-gsub("-mean","Mean", features_vars)
features_vars<-gsub("-std","Std", features_vars)
features_vars<-gsub("[-()]","", features_vars)

##load datasets for train
train<-read.table(paste0("./", directory,"/train/X_train.txt", sep=""))
labelstrain<-read.table(paste0("./", directory,"/train/Y_train.txt", sep=""))
names(labelstrain)<-"Activity"
subjecttrain<-read.table(paste0("./", directory,"/train/subject_train.txt", sep=""))
names(subjecttrain)<-"Subject"
train<-train[,features_index]
names(train)<-features_vars


##load datasets for test
test<-read.table(paste0("./", directory,"/test/X_test.txt", sep=""))
labelstest<-read.table(paste0("./", directory,"/test/Y_test.txt", sep=""))
names(labelstest)<-"Activity"
subjecttest<-read.table(paste0("./", directory,"/test/subject_test.txt", sep=""))
names(subjecttest)<-"Subject"
test<-test[,features_index]
names(test)<-features_vars


##merge (bind) data
fulltrain<-cbind(subjecttrain, labelstrain, train)
fulltest<-cbind(subjecttest, labelstest, test)
fulltable<-rbind(fulltrain, fulltest)

##add origin of data in case needed
fulltable$origin<-c(rep("train", nrow(fulltrain)),rep("test", nrow(fulltest)))

##add names to activities
fulltable$Activity<-factor(fulltable$Activity, levels=activities[,1], labels=activities[,2])

fulltable$Subject<-as.factor(fulltable$Subject)

##reshape table to calculate mean
fulltable_melt<-melt(fulltable, id=c("Subject","Activity", "origin"))
finaltable<-dcast(fulltable_melt, Subject + Activity + origin ~ variable, mean)

##write table in txt
write.table(finaltable, "tidy.txt", row.names = FALSE , quote = FALSE)