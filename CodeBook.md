CodeBook.md
==================================================================

Data Set Attribute Information:
-------------------------------

For each record in the dataset it is provided: 

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Data Set Files:
-------------------------------

- README.txt
- features_info.txt: Shows information about the variables used on the feature vector.
- features.txt: List of all features.
- activity_labels.txt: Links the class labels with their activity name.
- train/X_train.txt: Training set.
- train/y_train.txt: Training labels.
- train/subject_train.txt: Subject ids from 1 to 30.
- test/X_test.txt: Test set.
- test/y_test.txt: Test labels.
- test/subject_test.txt: Subject ids from 1 to 30.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 


Script variables:
-------------------------------

- url: file url 
- destfile: local file path
- features: data readed from features.txt
- activityLabels: data readed from activity_labels.txt
- XTrain: data readed from X_train.txt
- yTrain: data readed from y_train.txt
- subjectTrain: data readed from subject_train.txt
- XTest: data readed from X_test.txt
- yTest: data readed from y_test.txt
- subjectTest: data readed from subject_test.txt
- trainData: train files joined
- testData: test files joined
- dataMerged: trainData and testData merged
- dataMeanStd: dataMerged only with variables that contain mean and std
- groupedData: dataMeanStd grouped by subjectIds and activity
- groupedDataMean: Mean groupedData

Script output file:
-------------------------------
MeanTidyDataSet.txt
