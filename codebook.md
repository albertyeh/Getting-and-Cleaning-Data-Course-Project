Codebook
------------------------------
Codebook was generated for `run_analysis.R`.

Variable list and descriptions
------------------------------

Variable name    | Description
-----------------|------------
x1/y1/s1         | load/store `X_test.txt`,`y_test.txt`,`subject_test.txt`
x2/y2/s2         | load/store `X_train.txt`,`y_train.txt`,`subject_train.txt`
x                | Combind x1 and x2 by row
y                | Combind y1 and y2 by row
subject          | Combind s1 and s2 by row
features         | load/store feature names from `features.txt`
ds               | Combind x , y and subkect by column
sel              | Selected fields for step 5
averages         | The average of each variable for each activity and each subject


run_analysis() 
------------------------------
Save data table objects to a text file called `averages_tidy_data.txt`.

Steps:   | Description
---------|------------
1        | Merges the training and the test sets to create one data set 
2        | Extract only the measurements on the mean and standard deviation for each measurement
3        | Use descriptive activity names to name the activities in the data set
4        | Appropriately label the data set with descriptive variable names
5        | From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

