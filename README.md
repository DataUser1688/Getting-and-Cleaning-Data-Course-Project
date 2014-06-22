
Course Project: 
========================================
This is a Coursera course “Getting  and Cleaning Data” taught by Jeff Leek, PhD  from  Johns Hopkins Bloomberg School of Public Health.   This project is consisted of data arrived from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This course of this project is to collect, clean the data set and product a tidy data file that is to be used for future analysis. 

Included in this repo are:

•	run_analysis.R - the main script from producing the tidy data set
•	codebook.md 

“run_analysis.R”
========================================

Below are the steps used by run.analysis.R:

1.	 Read various text files (X_train.txt, y_train.txt, X_test.txt, y_test.txt, features.txt, activity_labels.txt)
2.	Merges the training and the test sets to create one data set.
3.	Extracts  the column name containing mean and standard deviation. 
4.	Uses descriptive activity names to name the activities in the data set
5.	Labels the data set with descriptive variable names. 
6.	Creates a tidy data set (tidydata.txt) with the average of each variable for each activity and each subject. 
