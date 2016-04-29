## Analysis for Samsung Galaxy S smartphone data

This repo contains the following:

--Raw data:  obtained from [1], and packaged in six text filed, namely                              "subject_test.txt" 
                "y_test.txt"
                "X_test.txt"
                "subject_train.txt"
                "y_train.txt"
                "X_train.txt"
                
                These are further described below
                
--An R script for obtaining, cleaning and further processing the data, namely
                "run_analysis.R"
                
--The processed tidy data set, namely
                "averages.txt"
                
--The code book for "averages.txt"

## Explanation of run_analysis.R

The purpose of "run_analysis.R" is to get, merge, clean and then further process the test and training data sets compiled in the study in [1].  The final result is to write a new data frame "averages.txt" which presents averages of 66 variables from [1] grouped by subject and activity. Specifically, the analysis does the following:

--Obtains and merges six data sets into a "merged" data frame, namely:
        "subject_test.txt" which contains the subject IDs for the test set.
        "y_test.txt" which is the activities for those subject IDs from the test set.
        "X_test.txt" which is then the observations for the IDs and activities for the test set.
        "subject_train.txt" which contains the subject IDs for the train set.
        "y_train.txt" which is the activities for those subject IDs from the train set.
        "X_train.txt" which is then the observations for the IDs and activities for the train set.
        
--Selects from "merged" those variables representing means and standard deviations, with the result an intermediate data frame "meanstd".

--Renames columns of "meanstd" so as to remove extraneous hyphens and parentheses, and also names activities descriptively (rather than numerically as in [1]).

--Finally, groups by subject ID and activity and computes averages of all variables for the 180 (id,activity) pairs.  This final data frame is written to "averages.txt".