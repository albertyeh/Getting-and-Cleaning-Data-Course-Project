run_analysis<-function()
{
    if (!require('plyr')) {
        stop('The package plyr was not installed')
    }    
    cat("Start","\n")
    # 1. Merges the training and the test sets to create one data set.
    x1 <- read.table(file.path(".", "UCI HAR Dataset", "test","X_test.txt"))
    y1 <- read.table(file.path(".", "UCI HAR Dataset", "test","y_test.txt"))
    s1 <- read.table(file.path(".", "UCI HAR Dataset", "test","subject_test.txt"))
    
    x2 <- read.table(file.path(".", "UCI HAR Dataset", "train","X_train.txt"))
    y2 <- read.table(file.path(".", "UCI HAR Dataset", "train","y_train.txt"))
    s2 <- read.table(file.path(".", "UCI HAR Dataset", "train","subject_train.txt"))
    
    x <- rbind(x1, x2)
    y <- rbind(y1, y2)
    subject <- rbind(s1, s2)    
    
    # 2.Extract only the measurements on the mean and standard deviation for each measurement.
    features <- read.table(file.path(".", "UCI HAR Dataset", "features.txt"),stringsAsFactors=FALSE)
    colnames(x) <-  c(features[,2])
    x <- x[, grep("mean|std|Mean", names(x))]
    
    #3. Use descriptive activity names to name the activities in the data set.
    activity_names <- read.table(file.path(".", "UCI HAR Dataset", "activity_labels.txt"),stringsAsFactors=FALSE)
    y[, 1] <- activity_names[y[, 1], 2]
    
    #4. Appropriately label the data set with descriptive variable names.
    names(y) <- "activity_name"
    names(subject) <- "subject"
    
    #5.From the data set in step 4, creates a second, independent tidy data set with the average of each
    #  variable for each activity and each subject
    ds <- cbind(x, y, subject)
    sel<-c(1:86)
    averages <- ddply(ds, .(activity_name,subject), function(x) colMeans(x[,sel]))
    write.table(averages, "averages_tidy_data.txt", row.name=FALSE)
    cat("End","\n")
    
}    