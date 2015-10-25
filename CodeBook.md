# CodeBook for GetCleanData_Project

The codebook for the original data can be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The raw data can be found here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The following files from this data set were used in this analysis:
<ul>
<li>"./UCI HAR Dataset/features.txt"
<li>"./UCI HAR Dataset/activity_labels.txt"
<li>"./UCI HAR Dataset/test/X_test.txt"
<li>"./UCI HAR Dataset/test/y_test.txt"
<li>"./UCI HAR Dataset/test/subject_test.txt"
<li>"./UCI HAR Dataset/train/X_train.txt"
<li>"./UCI HAR Dataset/train/y_train.txt"
<li>"./UCI HAR Dataset/train/subject_train.txt"
</ul>

## Subjects
In this study, the subjects were numbered 1 through 30.

## Activity
The following activities were monitored:
<ol>
<li>WALKING
<li>WALKING_UPSTAIRS
<li>WALKING_DOWNSTAIRS
<li>SITTING
<li>STANDING
<li>LAYING
</ol>

## Features
Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

## Measurement means and standard deviations:
The following measurements were averaged for each subject.
The units for the variables are
<ul>
<li>gravity g’s for the accelerometer (https://en.wikipedia.org/wiki/Gravity_of_Earth)
<li>rad/sec for the gyro
<li>g/sec and rad/sec/sec for the jerks
</ul>

, for each activity:
<ul>
<li>"tbodyaccmeanx"
<li>"tbodyaccmeany"
<li>"tbodyaccmeanz"
<li>"tgravityaccmeanx"
<li>"tgravityaccmeany"
<li>"tgravityaccmeanz"
<li>"tbodyaccjerkmeanx"
<li>"tbodyaccjerkmeany"
<li>"tbodyaccjerkmeanz"
<li>"tbodygyromeanx"
<li>"tbodygyromeany"
<li>"tbodygyromeanz"
<li>"tbodygyrojerkmeanx"
<li>"tbodygyrojerkmeany"
<li>"tbodygyrojerkmeanz"
<li>"tbodyaccmagmean"
<li>"tgravityaccmagmean"
<li>"tbodyaccjerkmagmean"
<li>"tbodygyromagmean"
<li>"tbodygyrojerkmagmean"
<li>"fbodyaccmeanx"
<li>"fbodyaccmeany"
<li>"fbodyaccmeanz"
<li>"fbodyaccmeanfreqx"
<li>"fbodyaccmeanfreqy"
<li>"fbodyaccmeanfreqz"
<li>"fbodyaccjerkmeanx"
<li>"fbodyaccjerkmeany"
<li>"fbodyaccjerkmeanz"
<li>"fbodyaccjerkmeanfreqx"
<li>"fbodyaccjerkmeanfreqy"
<li>"fbodyaccjerkmeanfreqz"
<li>"fbodygyromeanx"
<li>"fbodygyromeany"
<li>"fbodygyromeanz"
<li>"fbodygyromeanfreqx"
<li>"fbodygyromeanfreqy"
<li>"fbodygyromeanfreqz"
<li>"fbodyaccmagmean"
<li>"fbodyaccmagmeanfreq"
<li>"fbodybodyaccjerkmagmean"
<li>"fbodybodyaccjerkmagmeanfreq"
<li>"fbodybodygyromagmean"
<li>"fbodybodygyromagmeanfreq"
<li>"fbodybodygyrojerkmagmean"
<li>"fbodybodygyrojerkmagmeanfreq"
<li>"tbodyaccstdx"
<li>"tbodyaccstdy"
<li>"tbodyaccstdz"
<li>"tgravityaccstdx"
<li>"tgravityaccstdy"
<li>"tgravityaccstdz"
<li>"tbodyaccjerkstdx"
<li>"tbodyaccjerkstdy"
<li>"tbodyaccjerkstdz"
<li>"tbodygyrostdx"
<li>"tbodygyrostdy"
<li>"tbodygyrostdz"
<li>"tbodygyrojerkstdx"
<li>"tbodygyrojerkstdy"
<li>"tbodygyrojerkstdz"
<li>"tbodyaccmagstd"
<li>"tgravityaccmagstd"
<li>"tbodyaccjerkmagstd"
<li>"tbodygyromagstd"
<li>"tbodygyrojerkmagstd"
<li>"fbodyaccstdx"
<li>"fbodyaccstdy"
<li>"fbodyaccstdz"
<li>"fbodyaccjerkstdx"
<li>"fbodyaccjerkstdy"
<li>"fbodyaccjerkstdz"
<li>"fbodygyrostdx"
<li>"fbodygyrostdy"
<li>"fbodygyrostdz"
<li>"fbodyaccmagstd"
<li>"fbodybodyaccjerkmagstd"
<li>"fbodybodygyromagstd"
<li>"fbodybodygyrojerkmagstd"
</ul>

