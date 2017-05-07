README.md
==================================================================

The Repo includes the following files:
--------------------------------------

* 'README.md': readme file.
* 'CodeBook.md': codebook with all the variables and summaries calculated.
* 'run_analysus.R': script that solve the project.


Data Set Information:
--------------------------------------

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

Read CodeBook.md to get more information about data set and their variables.


run_analysus.R that does the following:
--------------------------------------

0.0 Dependences with library 'dplyr'

0.1 Download files with download.file() function from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and unzip

0.2 Read data with read.table() function. Files readed: 

* /features.txt 
* /activity_labels.txt 
* /train/X_train.txt 
* /train/y_train.txt
* /train/subject_train.txt
* /test/X_test.txt 
* /test/y_test.txt
* /test/subject_test.txt

1. Merges the training and the test sets to create one data set with cbind() and rbind() functions.

2. Extracts only the measurements on the mean and standard deviation for each measurement with regular expression and grep() function.

3. Uses descriptive activity names to name the activities in the data set.

4. vAppropriately labels the data set with descriptive variable names.

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. File called MeanTidyDataSet.txt


Others
--------------------------------------

Original data: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Related article: http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/
