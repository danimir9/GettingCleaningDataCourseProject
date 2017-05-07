##########
### Getting and Cleaning Data Course Project ###
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. vAppropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
##########


# dependences ##########
library(dplyr)


# download files ########## 
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#setwd("D:/Documentos/2_Cursos/DataScience/gettingAndCleaningData/semana4/finalProject)
destfile <- paste0(getwd(), "/", "FinalProjectDataset.zip")
download.file(url, destfile, method = curl)
unzip("FinalProjectDataset.zip")


# read data ##########
features <- read.table("UCI HAR Dataset/features.txt")
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
XTrain <- read.table("UCI HAR Dataset/train/X_train.txt")
yTrain <- read.table("UCI HAR Dataset/train/y_train.txt")
subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
XTest <- read.table("UCI HAR Dataset/test/X_test.txt")
yTest <- read.table("UCI HAR Dataset/test/y_test.txt")
subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt")


# 1. Merges the training and the test sets to create one data set. ##########
trainData <- cbind(subjectTrain, yTrain, XTrain)
testData <- cbind(subjectTest, yTest, XTest)
dataMerged <- rbind(trainData, testData)


# 2. Extracts only the measurements on the mean and standard deviation for each measurement. ##########
# assign names from features
names(dataMerged) <- c("subjectIds", "activityIds", as.vector(features$V2))
#extract names with names: subjectIds, activityIds, mean and std
dataMeanStd <- dataMerged[, grep("(subjectIds|activityIds)|(mean|std)\\(\\)", names(dataMerged))]


# 3. Uses descriptive activity names to name the activities in the data set. ##########
dataMeanStd$activityIds <- activityLabels[match(dataMeanStd$activityIds, activityLabels$V1), 'V2']


# 4. vAppropriately labels the data set with descriptive variable names. ##########
#¡¡¡Descriptive names have already been added in step 2: line 42!!!
names(dataMeanStd)[2] <- "activity"


# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. ##########
groupedData <- group_by(dataMeanStd, subjectIds, activity)
groupedDataMean <- summarise_all(groupedData, mean)
write.table(groupedDataMean, "MeanTidyDataSet.txt", row.name = FALSE)
