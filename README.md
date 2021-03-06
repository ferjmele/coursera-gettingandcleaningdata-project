# coursera-gettingandcleaningdata-project
##Final project for Getting and cleaning data from JHU Coursera, as part of Data Science Specialization
###The "Run_analysis.R" script performs several operations to obtain a clean data set with the specified variables (codebook), according to what was requested in assignment using a specified original dataset.
####Important information about original dataset: [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
####This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
####Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
###The script requires uses reshape2 package, and it works like this:
####1-Downloads files from web, if it is not found in working directory
####2-Unzips file, if directory resulting from unzip procedure is not found in working directory
####3-Reads basic tables, "Activities" and "Variables" (Features)
####4-Identifies position of variables (columns) related to mean or std, to subset only those afterwards
####5-Makes changes in target variable´s names to make them easier to manipulate and read
####6-Loads train data set (measures, activities, subject)
####7-Extracts only target variables from measures and renames columns with non descriptive name
####8-Repeats 6 and 7 for Test dataset
####9-Merges train and test data sets in one table and then combines them, adding variable origin to keep track of that information, and changing names of activities. Variable Origin does not alter because subjects are not repeated in train and tests (it was checked)
####10-Melts dataset on subject-activity-origin to make it easier to calculate mean afterwards
####11-Calculates mean for each subject-activity-origin combination, for each variable
####12-Writes table in txt file
