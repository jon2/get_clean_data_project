# run_analysis.R
This script takes as input the dataset found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones and outputs a tidy dataset containing a subset of features for each of the measurements in the original dataset.  Specifically, it:

1. Merges the training and the test sets to create one data set. The script includes the training data first, followed by the test data.
2. Extracts only the measurements on the mean and standard deviation for each measurement. We only extract features that include "std()" or "mean()" in the feature name, as described in the features.txt file in the original dataset. We do not include features such as "fBodyBodyGyroJerkMag-meanFreq()".
3.	Uses descriptive activity names to name the activities in the data set. The activities are found in the "activity" column of the tidy dataset.
4.	Appropriately labels the data set with descriptive variable names. These are found in the column headers.
5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. The script creates a wide dataset where each line represents a subject/activity combination (e.g. "Subject 1, WALKING") and the columns give the mean of all variables matching that subject/activity combination in the original dataset.

The script should be run from within the UCI HAR Dataset folder (i.e. in the same directory where "features_info.txt" and "activity_labels.txt" live.)

The script will save an output file called "averagedata.txt" which contains the independent dataset created in requirement 5.  To read this dataset back into R, use:
```R
    read.table("averagedata.txt", header=TRUE)
```    
This table should contain 180 rows (30 subjects * 6 activities)
