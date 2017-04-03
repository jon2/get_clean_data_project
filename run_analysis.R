library(dplyr)

## run_analysis.R
## Jon Green - March 2017
##
## Requirements:
## You should create one R script called run_analysis.R that does the following.
## 1.	Merges the training and the test sets to create one data set.
## 2.	Extracts only the measurements on the mean and standard deviation for 
##      each measurement.
## 3.	Uses descriptive activity names to name the activities in the data set
## 4.	Appropriately labels the data set with descriptive variable names.
## 5.	From the data set in step 4, creates a second, independent tidy data 
##      set with the average of each variable for each activity and each subject.

## There's a lot of opportunity here to create more readable code and do
## this more efficiently.  But....

# Read in all needed data
trainFile <- read.table("./train/X_train.txt")
trainActivityFile <- read.table("./train/y_train.txt")
trainSubjectFile <- read.table("./train/subject_train.txt")

testFile <- read.table("./test/X_test.txt")
testActivityFile <- read.table("./test/y_test.txt")
testSubjectFile <- read.table("./test/subject_test.txt")

colLabels <- read.table("features.txt")
activityLabels <- read.table("activity_labels.txt")

# As far as R is concerned, some of the column labels are duplicates.  Make
# them unique, then clean up a bit.
colLabels[[2]] <- make.names(colLabels[[2]], unique=TRUE)
colLabels[[2]] <- gsub("\\.\\.\\.|\\.\\.", "\\.", colLabels[[2]]) #... or .. to .

# Apply column labels (Requirement 4)
colnames(trainFile) <- colLabels[[2]]
colnames(testFile) <- colLabels[[2]]
colnames(trainActivityFile) <- "activity"
colnames(testActivityFile) <- "activity"
colnames(trainSubjectFile) <- "subject"
colnames(testSubjectFile) <- "subject"

# Extract just the columns we care about (Requirement 2)
# Only features that were labeled as "-mean()" or "-std()" in the features_info
# file are wanted here.  By filtering for ".mean" and ".std." here, we get
# the desired group
trainFile <- select(trainFile, matches("\\.mean\\.|std"))
testFile <- select(testFile, matches("\\.mean\\.|std"))

# Delete trailing . in column names
colnames(trainFile) <- gsub("\\.$", "", colnames(trainFile))
colnames(testFile) <- gsub("\\.$", "", colnames(testFile))

# Convert activity numbers to names (Requirement 3)
trainActivityFile[1] <- activityLabels[match(trainActivityFile[,1], activityLabels[,1]),2]
testActivityFile[1] <- activityLabels[match(testActivityFile[,1], activityLabels[,1]),2]

# Append Subject and Activity columns to observations
trainFile <- bind_cols(trainSubjectFile, trainActivityFile, trainFile)
testFile <- bind_cols(testSubjectFile, testActivityFile, testFile)

# Merge test and training datasets (Requirement 1)
# Note: Can't use bind_rows because there are duplicate column names
mergedTable <- bind_rows(trainFile, testFile)

# Create a new table with the average of each variable for each activity 
# and each subject (Requirement 5)
mergedTable <- group_by(mergedTable, subject, activity)
newDataSet <- summarize_all(mergedTable, mean)
names(newDataSet)[-c(1,2)] <- paste0("Mean", names(newDataSet)[-c(1,2)])

# Write the new tidy dataset out to a file (Requirement 5)
write.table(newDataSet, "averagedata.txt")