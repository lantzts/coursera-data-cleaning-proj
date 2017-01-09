# Code Book
Getting and Cleaning Data Course Projects

This code book describes the data, variables, and any transformations used to clean up the data.

## Data Source
The data used in this exercise represent observations of six daily activities
carried out by 30 subjects.  The data was collected by a waist-mounted Samsung Galaxy S II with an embedded accelerometer and gyroscope.

For more information, please visit the ***[University of California, Irvine - Machine Learning Repository][1]***.

## Repo Files:
- 'README.md'
- 'CODE-BOOK.md'
- 'run_analysis.R': Script to prepare tiny data that can be used for later analysis
- 'tidy.txt': Output of 'run_analysis.R' containing the average of each variable for each activity and subject


## ./Data/
The 'data' directory is initialized by the 'run_analysis.R' script.  The directory contains all files sourced from the Machine Learning Repository. Not all files included in the data set were utilized in this exercise.

**Utilized data set files:**
- 'features.txt': List of all the features
- 'activity_labels.txt': Links the class labels with their activity name
- 'train/X_train.txt': Training set
- 'train/y_train.txt': Training labels
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30
- 'test/X_test.txt': Test set
- 'test/y_test.txt': Test Labels
- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30

## ./Data-Zip/
The 'data-zip' directory is initialized by the 'run_analysis.R' script.
- 'proj-files.zip': Compressed project files as downloaded from the source

## Features
From the data set 'features_info.txt':

>The features selected for this database come from the **accelerometer** and **gyroscope** 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (**prefix 't' to denote time**) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into **body** and **gravity** acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain **Jerk** signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the **magnitude** of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (**Note the 'f' to indicate frequency domain signals**).

>These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

>The set of variables that were estimated from these signals are:*
  - mean(): Mean value
  - std(): Standard deviation

This exercise focuses on the mean and standard deviation variables.  The mean frequency and the additional vectors referenced in the 'features_info.txt' were excluded.  The following features were utilized in the exercise:

    variables
        "v1"     "tBodyAcc-mean()-X"
        "v2"     "tBodyAcc-mean()-Y"
        "v3"     "tBodyAcc-mean()-Z"
        "v4"     "tBodyAcc-std()-X"
        "v5"     "tBodyAcc-std()-Y"
        "v6"     "tBodyAcc-std()-Z"
        "v7"     "tGravityAcc-mean()-X"
        "v8"     "tGravityAcc-mean()-Y"
        "v9"     "tGravityAcc-mean()-Z"
        "v10"    "tGravityAcc-std()-X"
        "v11"    "tGravityAcc-std()-Y"
        "v12"    "tGravityAcc-std()-Z"
        "v13"    "tBodyAccJerk-mean()-X"
        "v14"    "tBodyAccJerk-mean()-Y"
        "v15"    "tBodyAccJerk-mean()-Z"
        "v16"    "tBodyAccJerk-std()-X"
        "v17"    "tBodyAccJerk-std()-Y"
        "v18"    "tBodyAccJerk-std()-Z"
        "v19"    "tBodyGyro-mean()-X"
        "v20"    "tBodyGyro-mean()-Y"
        "v21"    "tBodyGyro-mean()-Z"
        "v22"    "tBodyGyro-std()-X"
        "v23"    "tBodyGyro-std()-Y"
        "v24"    "tBodyGyro-std()-Z"
        "v25"    "tBodyGyroJerk-mean()-X"
        "v26"    "tBodyGyroJerk-mean()-Y"
        "v27"    "tBodyGyroJerk-mean()-Z"
        "v28"    "tBodyGyroJerk-std()-X"
        "v29"    "tBodyGyroJerk-std()-Y"
        "v30"    "tBodyGyroJerk-std()-Z"
        "v31"    "tBodyAccMag-mean()"
        "v32"    "tBodyAccMag-std()"
        "v33"    "tGravityAccMag-mean()"
        "v34"    "tGravityAccMag-std()"
        "v35"    "tBodyAccJerkMag-mean()"
        "v36"    "tBodyAccJerkMag-std()"
        "v37"    "tBodyGyroMag-mean()"
        "v38"    "tBodyGyroMag-std()"
        "v39"    "tBodyGyroJerkMag-mean()"
        "v40"    "tBodyGyroJerkMag-std()"
        "v41"    "fBodyAcc-mean()-X"
        "v42"    "fBodyAcc-mean()-Y"
        "v43"    "fBodyAcc-mean()-Z"
        "v44"    "fBodyAcc-std()-X"
        "v45"    "fBodyAcc-std()-Y"
        "v46"    "fBodyAcc-std()-Z"
        "v47"    "fBodyAccJerk-mean()-X"
        "v48"    "fBodyAccJerk-mean()-Y"
        "v49"    "fBodyAccJerk-mean()-Z"
        "v50"    "fBodyAccJerk-std()-X"
        "v51"    "fBodyAccJerk-std()-Y"
        "v52"    "fBodyAccJerk-std()-Z"
        "v53"    "fBodyGyro-mean()-X"
        "v54"    "fBodyGyro-mean()-Y"
        "v55"    "fBodyGyro-mean()-Z"
        "v56"    "fBodyGyro-std()-X"
        "v57"    "fBodyGyro-std()-Y"
        "v58"    "fBodyGyro-std()-Z"
        "v59"    "fBodyAccMag-mean()"
        "v60"    "fBodyAccMag-std()"
        "v61"    "fBodyBodyAccJerkMag-mean()"
        "v62"    "fBodyBodyAccJerkMag-std()"
        "v63"    "fBodyBodyGyroMag-mean()"
        "v64"    "fBodyBodyGyroMag-std()"
        "v65"    "fBodyBodyGyroJerkMag-mean()"
        "v66"    "fBodyBodyGyroJerkMag-std()"

    activities
        "1"      "WALKING"
        "2"      "WALKING_UPSTAIRS"
        "3"      "WALKING_DOWNSTAIRS"
        "4"      "SITTING"
        "5"      "STANDING"
        "6"      "LAYING"

    subjects
        1:30

## Transformations
#### Features sub-set
The source data contains 561 features.  To meet the requirements of this exercise, only measurements on the mean and standard deviation were extracted. The mean frequency and angle variables were excluded.

A total of 66 features of the measurement data sets were extracted.

#### Feature Labels
The labels of features were renamed with the following characteristics:
- descriptive: prefix 't' and 'f' were expanded to their full description
- short length: abbreviations were maintained:
 - 'Std': Standard Deviation
 - 'Acc': acceleration
 - 'Gyro': gyroscope
 - 'Mag': magnitude
- readability: Capitalization of words
- functionality: Removal of special characters

#### Data Binding
- Subjects, Activities, and Observations were column bound
- The test and training data sets were row bound

#### Reshaped Data Set
Using the 'reshape2' package, the data set was melted with the feature labels as the measurement variables and the subject and activity as the identification variables.

Also with the 'reshape2' package, the mean of each variable, grouped by the subject and the activity was cast as a data frame.

The tidy data frame was exported as 'tidy.txt'


[1]:http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#
