#This is the CodeBook for the project of the Getting and Cleaning Data course. Detail description of features is in original files.
#this file only attempts to describe which variables are contained in tidy dataset provided (81 requested + origin to total 82), and a short description of activities. 
##Identifiers
###Subject : id of subject, as in original data
###Activity: label of activity (not id number)
###origin : if data (subject) comes from test or train dataset. Just informative. No cross subject between datasets. 

##Measure variables (features): "-" and "()" where removed from original variable names
###*tBodyAccMeanX
###*tBodyAccMeanY
###*tBodyAccMeanZ
###*tBodyAccStdX
###*tBodyAccStdY
###*tBodyAccStdZ                
###*tGravityAccMeanX
###*tGravityAccMeanY
###*tGravityAccMeanZ            
###*tGravityAccStdX
###*tGravityAccStdY
###*tGravityAccStdZ             
###*tBodyAccJerkMeanX
###*tBodyAccJerkMeanY
###*tBodyAccJerkMeanZ           
###*tBodyAccJerkStdX
###*tBodyAccJerkStdY
###*tBodyAccJerkStdZ            
###*tBodyGyroMeanX
###*tBodyGyroMeanY
###*tBodyGyroMeanZ              
###*tBodyGyroStdX
###*tBodyGyroStdY
###*tBodyGyroStdZ               
###*tBodyGyroJerkMeanX
###*tBodyGyroJerkMeanY
###*tBodyGyroJerkMeanZ          
###*tBodyGyroJerkStdX
###*tBodyGyroJerkStdY
###*tBodyGyroJerkStdZ           
###*tBodyAccMagMean
###*tBodyAccMagStd
###*tGravityAccMagMean          
###*tGravityAccMagStd
###*tBodyAccJerkMagMean
###*tBodyAccJerkMagStd          
###*tBodyGyroMagMean
###*tBodyGyroMagStd
###*tBodyGyroJerkMagMean        
###*tBodyGyroJerkMagStd
###*fBodyAccMeanX
###*fBodyAccMeanY               
###*fBodyAccMeanZ
###*fBodyAccStdX
###*fBodyAccStdY                
###*fBodyAccStdZ
###*fBodyAccMeanFreqX
###*fBodyAccMeanFreqY           
###*fBodyAccMeanFreqZ
###*fBodyAccJerkMeanX
###*fBodyAccJerkMeanY           
###*fBodyAccJerkMeanZ
###*fBodyAccJerkStdX
###*fBodyAccJerkStdY            
###*fBodyAccJerkStdZ
###*fBodyAccJerkMeanFreqX
###*fBodyAccJerkMeanFreqY       
###*fBodyAccJerkMeanFreqZ
###*fBodyGyroMeanX
###*fBodyGyroMeanY              
###*fBodyGyroMeanZ
###*fBodyGyroStdX
###*fBodyGyroStdY               
###*fBodyGyroStdZ
###*fBodyGyroMeanFreqX
###*fBodyGyroMeanFreqY          
###*fBodyGyroMeanFreqZ
###*fBodyAccMagMean
###*fBodyAccMagStd              
###*fBodyAccMagMeanFreq
###*fBodyBodyAccJerkMagMean
###*fBodyBodyAccJerkMagStd      
###*fBodyBodyAccJerkMagMeanFreq
###*fBodyBodyGyroMagMean
###*fBodyBodyGyroMagStd         
###*fBodyBodyGyroMagMeanFreq
###*fBodyBodyGyroJerkMagMean
###*fBodyBodyGyroJerkMagStd     
###*fBodyBodyGyroJerkMagMeanFreq

##Activity labels (keep original definition)
###*WALKING (1): subject is walking
###*WALKING_UPSTAIRS (2) : subject is walking up a stair during test
###*WALKING_DOWNSTAIRS (3) : subject is walking down a stair during test
###*SITTING (4) : subject was sitted during test
###*STANDING (5) : subject was standing during test
###*LAYING (6) : subject was laying during test

