Data:
========================================
The data is a collected from the accelerometers of Samsung Galaxy S smartphone.  
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data file is obtained from a URL listed below:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Data Set Information:
========================================
The source of the data is arrived from the experiments consisting of 30 volunteers whose age group range from 19-48 years old.  Each individual performed six daily living activities while wearing a Samsun Galaxy S II smartphone on their waist.  These activities range includes
 - WALKING
 - WALKING_UPSTAIRS
 - WALKING_DOWNSTAIRS
 - SITTING
 - STANDING
 - LAYING 

The datasets consist of two sets, training data and test data.  70% of the volunteers were selected for generating the training data and 30 % the test data.   There are 10,299 instances(records) and 561 attributes(columns).
The course of this project use the following files:
- features.txt: List of all features.
- activity_labels.txt: Links the class labels with their activity name.
- train/X_train.txt: Training set.
- train/y_train.txt: Training labels.
- test/X_test.txt: Test set.
- test/y_test.txt: Test labels.

Variable Names:
========================================
The package use for this course project is “reshape2”.  Dcast function is used to aggregate the observations by the “activity”.   
Of the 561 variables, 82 variables are the mean and standard deviation measured by the keywords “mean” and “std” labeled in the attribute names.  

•	"Activity"
•	“Subject"                                               
•	"fBodyAcc-mean()-X"              
•	“fBodyAcc-mean()-Y"              
•	“fBodyAcc-mean()-Z"              
•	"fBodyAcc-meanFreq()-X"          
•	"fBodyAcc-meanFreq()-Y"          
•	"fBodyAcc-meanFreq()-Z"          
•	"fBodyAcc-std()-X"               
•	"fBodyAcc-std()-Y"               
•	"fBodyAcc-std()-Z"               
•	"fBodyAccJerk-mean()-X"          
•	"fBodyAccJerk-mean()-Y"          
•	"fBodyAccJerk-mean()-Z"          
•	"fBodyAccJerk-meanFreq()-X"      
•	"fBodyAccJerk-meanFreq()-Y"      
•	"fBodyAccJerk-meanFreq()-Z"      
•	"fBodyAccJerk-std()-X"           
•	"fBodyAccJerk-std()-Y"           
•	"fBodyAccJerk-std()-Z"           
•	"fBodyAccMag-mean()"             
•	"fBodyAccMag-meanFreq()"         
•	"fBodyAccMag-std()"              
•	"fBodyBodyAccJerkMag-mean()"     
•	"fBodyBodyAccJerkMag-meanFreq()" 
•	"fBodyBodyAccJerkMag-std()"      
•	"fBodyBodyGyroJerkMag-mean()"    
•	"fBodyBodyGyroJerkMag-meanFreq()"
•	"fBodyBodyGyroJerkMag-std()"     
•	"fBodyBodyGyroMag-mean()"        
•	"fBodyBodyGyroMag-meanFreq()"    
•	"fBodyBodyGyroMag-std()"         
•	"fBodyGyro-mean()-X"             
•	"fBodyGyro-mean()-Y"             
•	"fBodyGyro-mean()-Z"             
•	"fBodyGyro-meanFreq()-X"         
•	"fBodyGyro-meanFreq()-Y"         
•	"fBodyGyro-meanFreq()-Z"         
•	"fBodyGyro-std()-X"              
•	"fBodyGyro-std()-Y"              
•	"fBodyGyro-std()-Z"              
•	"tBodyAcc-mean()-X"              
•	"tBodyAcc-mean()-X.1"            
•	"tBodyAcc-mean()-Y"              
•	"tBodyAcc-mean()-Z"              
•	"tBodyAcc-std()-X"               
•	"tBodyAcc-std()-Y"               
•	"tBodyAcc-std()-Z"               
•	"tBodyAccJerk-mean()-X"          
•	"tBodyAccJerk-mean()-Y"          
•	"tBodyAccJerk-mean()-Z"          
•	"tBodyAccJerk-std()-X"           
•	"tBodyAccJerk-std()-Y"           
•	"tBodyAccJerk-std()-Z"           
•	"tBodyAccJerkMag-mean()"         
•	"tBodyAccJerkMag-std()"          
•	"tBodyAccMag-mean()"             
•	"tBodyAccMag-std()"              
•	"tBodyGyro-mean()-X"             
•	"tBodyGyro-mean()-Y"             
•	"tBodyGyro-mean()-Z"             
•	"tBodyGyro-std()-X"              
•	"tBodyGyro-std()-Y"              
•	"tBodyGyro-std()-Z"              
•	"tBodyGyroJerk-mean()-X"         
•	"tBodyGyroJerk-mean()-Y"         
•	"tBodyGyroJerk-mean()-Z"         
•	"tBodyGyroJerk-std()-X"          
•	"tBodyGyroJerk-std()-Y"          
•	"tBodyGyroJerk-std()-Z"          
•	"tBodyGyroJerkMag-mean()"        
•	"tBodyGyroJerkMag-std()"         
•	"tBodyGyroMag-mean()"            
•	"tBodyGyroMag-std()"             
•	"tGravityAcc-mean()-X"           
•	"tGravityAcc-mean()-Y"           
•	"tGravityAcc-mean()-Z"           
•	"tGravityAcc-std()-X"            
•	"tGravityAcc-std()-Y"            
•	"tGravityAcc-std()-Z"            
•	"tGravityAccMag-mean()"          
•	"tGravityAccMag-std()"
