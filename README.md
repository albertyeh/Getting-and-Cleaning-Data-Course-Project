# Getting-and-Cleaning-Data-Course-Project

## Course Project
You should create one R script called run_analysis.R that does the following.

* 1.Merges the training and the test sets to create one data set.
* 2.Extracts only the measurements on the mean and standard deviation for each measurement. 
* 3.Uses descriptive activity names to name the activities in the data set
* 4.Appropriately labels the data set with descriptive variable names. 
* 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Included Files
'REAMDME.md':
Current document.

'run_analysis.R': 
Perform it to output tidy data set with with the average of each variable for each activity and each subject.  

'CodeBook.md':
Describe the variables, the data, and any transformations or work that was performed to clean up the data.

'UCI HAR Dataset/\*.\*:
Dataset sample for testing.

'averages_tidy_data.txt':
Output file for Step 5.

## Usage
Steps:   | Description
---------|------------
1        | Download test sets `UCI HAR Dataset.zip` from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
2        | # setwd([your working directory])
3        | Please decompress test sets `UCI HAR Dataset.zip` into `[your working directory]/UCI HAR Dataset`
4        | # source('./run_analysis.R')
5        | # run_analysis()
