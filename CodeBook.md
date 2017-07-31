# Codebook for peer-graded assignment in **Getting and Cleaning Data**


## The given files
- activity_labels.txt - one-worded list of activities measured
- features.txt - list of variables selected from the signals captured by accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ
- features_info.txt - description on how the features are selected
- **test**: directory contains files categorized for testing
  - subject_test.txt - list of subjects whose measures are selected for testing 
  - X_test.txt - measures of all the variables selected for analysis
  - Y_test.txt - activities for which the above measures are taken
  - **Inertial Signals**: directory contains data for 9 variables
- **train**: directory contains files categorized for training
  - subject_train.txt - list of subjects whose measures are selected for training 
  - X_train.txt - measures of all the variables selected for analysis
  - Y_train.txt - activities for which the above measures are taken
  - **Inertial Signals**: directory contains data for 9 variables


## The Script
- run_analysis.R: the script that combines the test data and generates the tidy dataset as required for the assignment. The script file is to be placed in the **UCI HAR Dataset** directory


## Datasets that are generated
The following are the datasets that will be visible in the environment:

- DataSet_1: The dataset which merges the *test* and *train* datasets and retains only measurements on mean and standard deviation. The columns in the dataset are renamed as per the variables listed in the *features.txt*. The dataset also contains activity labels for which measures are recorded (column labelled "Activity") and subjects (column labelled "SubjectNo") performing the activity.

- DataSet_2: The dataset is derived from **DataSet_1** and contains the average values of the variables for each acivity and each subject. This dataset is required for the assignment

## List of Subjects 
SubjectNo - this field in dataset is the ID of subjects. Values: 1 to 30

## List of activities 
WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

## List of variables in the final dataset
Activity                            
SubjectNo                           
tBodyAcc-mean()-X                    
tBodyAcc-mean()-Y                   
tBodyAcc-mean()-Z                    
tGravityAcc-mean()-X                
tGravityAcc-mean()-Y                 
tGravityAcc-mean()-Z
tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y               
tBodyAccJerk-mean()-Z
tBodyGyro-mean()-X                  
tBodyGyro-mean()-Y                   
tBodyGyro-mean()-Z                  
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y              
tBodyGyroJerk-mean()-Z               
tBodyAccMag-mean()                  
tGravityAccMag-mean()
tBodyAccJerkMag-mean()              
tBodyGyroMag-mean()
tBodyGyroJerkMag-mean()
fBodyAcc-mean()-X
fBodyAcc-mean()-Y                   
fBodyAcc-mean()-Z
fBodyAcc-meanFreq()-X               
fBodyAcc-meanFreq()-Y
fBodyAcc-meanFreq()-Z               
fBodyAccJerk-mean()-X                
fBodyAccJerk-mean()-Y               
fBodyAccJerk-mean()-Z
fBodyAccJerk-meanFreq()-X           
fBodyAccJerk-meanFreq()-Y
fBodyAccJerk-meanFreq()-Z           
fBodyGyro-mean()-X
fBodyGyro-mean()-Y                  
fBodyGyro-mean()-Z
fBodyGyro-meanFreq()-X              
fBodyGyro-meanFreq()-Y
fBodyGyro-meanFreq()-Z              
fBodyAccMag-mean()
fBodyAccMag-meanFreq()              
fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag-meanFreq()      
fBodyBodyGyroMag-mean()
fBodyBodyGyroMag-meanFreq()         
fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-meanFreq()     
angle(tBodyAccMean,gravity)          
angle(tBodyAccJerkMean),gravityMean)
angle(tBodyGyroMean,gravityMean)
angle(tBodyGyroJerkMean,gravityMean)
angle(X,gravityMean)
angle(Y,gravityMean)                
angle(Z,gravityMean)
tBodyAcc-std()-X                    
tBodyAcc-std()-Y
tBodyAcc-std()-Z                    
tGravityAcc-std()-X
tGravityAcc-std()-Y                 
tGravityAcc-std()-Z
tBodyAccJerk-std()-X                
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z                
tBodyGyro-std()-X                    
tBodyGyro-std()-Y                   
tBodyGyro-std()-Z
tBodyGyroJerk-std()-X               
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z               
tBodyAccMag-std()
tGravityAccMag-std()                
tBodyAccJerkMag-std()
tBodyGyroMag-std()                  
tBodyGyroJerkMag-std()
fBodyAcc-std()-X                    
fBodyAcc-std()-Y
fBodyAcc-std()-Z                    
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y                
fBodyAccJerk-std()-Z
fBodyGyro-std()-X                   
fBodyGyro-std()-Y
fBodyGyro-std()-Z                   
fBodyAccMag-std()
fBodyBodyAccJerkMag-std()           
fBodyBodyGyroMag-std()
fBodyBodyGyroJerkMag-std()

## The variables/objects/datasets that helped

### Listed in alphabetical order
#### Data
- activity_labels: Data frame containing labels of activities for which measurements are recorded
- DataSet_1: First Data frame merging **test** an **train** data
- DataSet_2: Dataset required in the assignment
- features: Data frame containing list of variables measured 
- HARData: Data frame formed after combining **test** and **train** data
- subjects_test: Data frame containing subjects for whom the measures are recorded in **test**
- subjects_train: Data frame containing subjects for whom the measures are recorded in **train**
- SubSet: Data frame created from **DataSet_1** by grouping the data by *Activity* and *SubjectNo*
- X_test: Data frame containing values for all variables to be used in **test**
- X_train: Data frame containing values for all variables to be used in **train**
- Y_test: Data frame containing activities for which measures are recorded in **test**
- Y_train: Data frame containing activities for which measures are recorded in **train**

#### Values
- i: integer vector used to loop **Y_test** and **Y_train** to add activity labels 
- means: integer vector containing indices of columns with *mean* values
- stds: integer vector containing indices of columns with *standard deviation* values

## Units for the measurements
- Acceleration values are measured in 'g'
- Angular velocity values are measured in 'radian/second'

## Transformations performed
The data is not transformed. The average values of all the variables is calculated for each activity and each subject using the following code:

    SubSet <- group_by(DataSet_1, Activity, SubjectNo)
    DataSet_2 <- SubSet %>% 
                 summarise_at(vars(`tBodyAcc-mean()-X`:
                                   `fBodyBodyGyroJerkMag-std()`), 
                              mean, 
                              na.rm = TRUE)