## Code book for Samsung Galaxy S smartphone average data

This data set "averages.txt" represents 180 observations from 30 volunteers wearing a Samsung Galaxy S smartphone accelerometer/gyroscope and participating in 6 different activities.  Besides variables that record the subject ID and activity, there are 66 other variables recording averages of the means and standard deviations of 3-axial linear acceleration and 3-axial angular velocity measurements originally recorded in [1].  The 66 variables are described below.

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

### Variable names and description

The original measurements in [1] come from the accelerator and gyroscope 3-axial raw signals, and are described via prefix, infix and suffix as follows:

The prefix "t" indicates a time domain signal.
The prefix "f" indicates a Fast Fourier Transform of the original "t" signal.
The suffix "X","Y","Z" indicates the specific 3-D axis of observation.
The infix "Acc" or "Gyro" indicates an accelerator or gyroscope signal.
The infix "Body" or "Gravity" indicates a body or gravity acceleration signal.
The infix "Jerk" indicates a Jerk signal.
The infix "Mag" indicates the Euclidean norm of the 3-D axes' signals.
The infix/suffix "Mean" or "Std" indicates the mean or standard deviation of the signals.

All observations are unitless and normalized to be between [-1,1].

In the current dataset "averages.txt", we have further calculated averages of these 66 variables grouped by subject ID and activity.  Our variable names differ from the originals only by removing hyphens and parentheses and capitalizing "mean" and "std" to make them more readable.

id -- the subject ID recorded as an integer 1 through 30
activity -- the activity performed
tBodyAccMeanX
tBodyAccMeanY
tBodyAccMeanZ
tBodyAccStdX
tBodyAccStdY
tBodyAccStdZ
tGravityAccMeanX
tGravityAccMeanY
tGravityAccMeanZ
tGravityAccStdX
tGravityAccStdY
tGravityAccStdZ
tBodyAccJerkMeanX
tBodyAccJerkMeanY
tBodyAccJerkMeanZ
tBodyAccJerkStdX
tBodyAccJerkStdY
tBodyAccJerkStdZ
tBodyGyroMeanX
tBodyGyroMeanY
tBodyGyroMeanZ
tBodyGyroStdX
tBodyGyroStdY
tBodyGyroStdZ
tBodyGyroJerkMeanX
tBodyGyroJerkMeanY
tBodyGyroJerkMeanZ
tBodyGyroJerkStdX
tBodyGyroJerkStdY
tBodyGyroJerkStdZ
tBodyAccMagMean
tBodyAccMagStd
tGravityAccMagMean
tGravityAccMagStd
tBodyAccJerkMagMean
tBodyAccJerkMagStd
tBodyGyroMagMean
tBodyGyroMagStd
tBodyGyroJerkMagMean
tBodyGyroJerkMagStd
fBodyAccMeanX
fBodyAccMeanY
fBodyAccMeanZ
fBodyAccStdX
fBodyAccStdY
fBodyAccStdZ
fBodyAccJerkMeanX
fBodyAccJerkMeanY
fBodyAccJerkMeanZ
fBodyAccJerkStdX
fBodyAccJerkStdY
fBodyAccJerkStdZ
fBodyGyroMeanX
fBodyGyroMeanY
fBodyGyroMeanZ
fBodyGyroStdX
fBodyGyroStdY
fBodyGyroStdZ
fBodyAccMagMean
fBodyAccMagStd
fBodyBodyAccJerkMagMean
fBodyBodyAccJerkMagStd
fBodyBodyGyroMagMean
fBodyBodyGyroMagStd
fBodyBodyGyroJerkMagMean
fBodyBodyGyroJerkMagStd