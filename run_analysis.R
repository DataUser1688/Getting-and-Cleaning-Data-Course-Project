# -----------------------------------------------------------------------
# This is a ccourse project for "Getting and Cleaning Data" class. 
# It's purpose it to collect the data, analyze and clean the
# data to make it a producable file.  The instructions are listed below.
# 
# You should create one R script called run_analysis.R that does the following.
#
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for
#    each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive activity names.
# 5. Creates a second, independent tidy data set with the average of each 
#    variable for each activity and each subject.
# -------------------------------------------------------------------------
#
# 1. Merges the training and the test sets to create one data set.
# Set working directory
setwd("C:/Users/Michael/Documents/R/data/UCI HAR Dataset")

# Read train data into R
x_train = read.table( "train/X_train.txt");
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt", stringsAsFactors=FALSE)

# Read test data into R
x_test = read.table("test/X_test.txt");
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

# Read features data into R and select the 2nd column from features data
features <- read.table("features.txt")


# Combine the subject, train and test data
subject <- rbind(subject_train, subject_test)
all_x <- rbind(x_train, x_test)
all_y <- rbind(y_train, y_test)
 
# Assign column names
colnames(subject) <- "Subject"
colnames(all_x) <- c(as.character(features$V2))
colnames(all_y) <- "Activity"

# Create a dataframe consisting of all train and test data set
merge_data <- cbind(subject, all_x, all_y)

# 2. Extracts only the measurements on the mean and standard deviation for
#    each measurement.
# Use grep to find the mean and standard deviation

mean_std_data <- merge_data[,c(1,2,grep("*std()",colnames(merge_data)),grep("*mean()",colnames(merge_data)))]

# 3. Uses descriptive activity names to name the activities in the data set
# Read activity data into R and label the columns
activity <- read.table("activity_labels.txt")
colnames(activity)<-c("Subject", "Activity")

# 4. Appropriately labels the data set with descriptive activity names.
# Merging activity data sets to mean_stdv_data by the activityID and SubjectID 

all_data <- merge(activity, mean_std_data, by.x="Subject", by.y="Subject", na.rm = TRUE)


# 5. Creates a second, independent tidy data set with the average of each variable for
#    each activity and each subject.
library(reshape2)

#subact = melt(merge_data, id = c("Subject", "Activity"))
subact = melt(all_data, id = c("Activity", "Subject"))
tidydata <- dcast(Activity + Subject ~ variable, data = subact, fun = mean)


# save the small tidy dataset for evaluation
write.table(tidydata, file="tidydata.txt",sep = "\t",row.names=FALSE)
