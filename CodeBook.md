## Code book for Samsung Galaxy S smartphone average data

This data set "averages.txt" represents 180 observations from 30 volunteers wearing a Samsung Galaxy S smartphone accelerometer/gyroscope and participating in 6 different activities.  Besides variables that record the subject ID and activity, there are 66 other variables recording averages of the means and standard deviations of 3-axial linear acceleration and 3-axial angular velocity measurements originally recorded in [1].  The 66 variables are described below.

__________________________

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

__________________________

### Variable names and description

The original measurements in [1] come from the accelerator and gyroscope 3-axial raw signals, and are described via prefix, infix and suffix as follows:

- The prefix "t" indicates a time domain signal.
- The prefix "f" indicates a Fast Fourier Transform of the original "t" signal.
- The suffix "X","Y","Z" indicates the specific 3-D axis of observation.
- The infix "Acc" or "Gyro" indicates an accelerator or gyroscope signal.
- The infix "Body" or "Gravity" indicates a body or gravity acceleration signal.
- The infix "Jerk" indicates a Jerk signal.
- The infix "Mag" indicates the Euclidean norm of the 3-D axes' signals.
- The infix/suffix "Mean" or "Std" indicates the mean or standard deviation of the signals.

All observations are unitless and normalized to be between [-1,1].

In the current dataset "averages.txt", we have further calculated averages of these 66 variables grouped by subject ID and activity.  Our variable names differ from the originals only by removing hyphens and parentheses and capitalizing "mean" and "std" to make them more readable.

1. id -- the subject ID recorded as an integer 1 through 30
2. activity -- the activity performed
3. tBodyAccMeanX
4. tBodyAccMeanY
5. tBodyAccMeanZ
6. tBodyAccStdX
7. tBodyAccStdY
8. tBodyAccStdZ
9. tGravityAccMeanX
10. tGravityAccMeanY
11. tGravityAccMeanZ
12. tGravityAccStdX
13. tGravityAccStdY
14. tGravityAccStdZ
15. tBodyAccJerkMeanX
16. tBodyAccJerkMeanY
17. tBodyAccJerkMeanZ
18. tBodyAccJerkStdX
19. tBodyAccJerkStdY
20. tBodyAccJerkStdZ
21. tBodyGyroMeanX
22. tBodyGyroMeanY
23. tBodyGyroMeanZ
24. tBodyGyroStdX
25. tBodyGyroStdY
26. tBodyGyroStdZ
27. tBodyGyroJerkMeanX
28. tBodyGyroJerkMeanY
29. tBodyGyroJerkMeanZ
30. tBodyGyroJerkStdX
31. tBodyGyroJerkStdY
32. tBodyGyroJerkStdZ
33. tBodyAccMagMean
34. tBodyAccMagStd
35. tGravityAccMagMean
36. tGravityAccMagStd
37. tBodyAccJerkMagMean
38. tBodyAccJerkMagStd
39. tBodyGyroMagMean
40. tBodyGyroMagStd
41. tBodyGyroJerkMagMean
42. tBodyGyroJerkMagStd
43. fBodyAccMeanX
44. fBodyAccMeanY
45. fBodyAccMeanZ
46. fBodyAccStdX
47. fBodyAccStdY
48. fBodyAccStdZ
49. fBodyAccJerkMeanX
50. fBodyAccJerkMeanY
51. fBodyAccJerkMeanZ
52. fBodyAccJerkStdX
53. fBodyAccJerkStdY
54. fBodyAccJerkStdZ
55. fBodyGyroMeanX
56. fBodyGyroMeanY
57. fBodyGyroMeanZ
58. fBodyGyroStdX
59. fBodyGyroStdY
60. fBodyGyroStdZ
61. fBodyAccMagMean
62. fBodyAccMagStd
63. fBodyBodyAccJerkMagMean
64. fBodyBodyAccJerkMagStd
65. fBodyBodyGyroMagMean
66. fBodyBodyGyroMagStd
67. fBodyBodyGyroJerkMagMean
68. fBodyBodyGyroJerkMagStd