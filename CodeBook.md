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

###VARIABLE {UNITS in Brackets}
Activity {NA, Character}        
SubjectNo {NA, ID}
tBodyAcc-mean()-X {g}
tBodyAcc-mean()-Y {g}
tBodyAcc-mean()-Z {g}                   
tGravityAcc-mean()-X {g}                
tGravityAcc-mean()-Y {g}                
tGravityAcc-mean()-Z {g}
tBodyAccJerk-mean()-X {g}
tBodyAccJerk-mean()-Y {g}              
tBodyAccJerk-mean()-Z {g}
tBodyGyro-mean()-X {radian/second}                 
tBodyGyro-mean()-Y {radian/second}                  
tBodyGyro-mean()-Z {radian/second}                 
tBodyGyroJerk-mean()-X {radian/second}
tBodyGyroJerk-mean()-Y {radian/second}             
tBodyGyroJerk-mean()-Z {radian/second}              
tBodyAccMag-mean() {g}                 
tGravityAccMag-mean() {g}
tBodyAccJerkMag-mean() {g}             
tBodyGyroMag-mean() {radian/second}
tBodyGyroJerkMag-mean() {radian/second}
fBodyAcc-mean()-X {g}
fBodyAcc-mean()-Y {g}                  
fBodyAcc-mean()-Z {g}
fBodyAcc-meanFreq()-X {g}               
fBodyAcc-meanFreq()-Y {g}
fBodyAcc-meanFreq()-Z {g}              
fBodyAccJerk-mean()-X {g}               
fBodyAccJerk-mean()-Y {g}              
fBodyAccJerk-mean()-Z {g}
fBodyAccJerk-meanFreq()-X {g}          
fBodyAccJerk-meanFreq()-Y {g}
fBodyAccJerk-meanFreq()-Z {g}          
fBodyGyro-mean()-X {radian/second}
fBodyGyro-mean()-Y {radian/second}                 
fBodyGyro-mean()-Z {radian/second}
fBodyGyro-meanFreq()-X {radian/second}              
fBodyGyro-meanFreq()-Y {radian/second}
fBodyGyro-meanFreq()-Z {radian/second}             
fBodyAccMag-mean() {g}
fBodyAccMag-meanFreq() {g}              
fBodyBodyAccJerkMag-mean() {g}
fBodyBodyAccJerkMag-meanFreq() {g}      
fBodyBodyGyroMag-mean() {radian/second}
fBodyBodyGyroMag-meanFreq() {radian/second}        
fBodyBodyGyroJerkMag-mean() {radian/second}
fBodyBodyGyroJerkMag-meanFreq() {radian/second}     
angle(tBodyAccMean,gravity) {radian}         
angle(tBodyAccJerkMean),gravityMean) {radian}
angle(tBodyGyroMean,gravityMean) {radian}
angle(tBodyGyroJerkMean,gravityMean) {radian}
angle(X,gravityMean) {radian}
angle(Y,gravityMean) {radian}             
angle(Z,gravityMean) {radian}
tBodyAcc-std()-X {g}                   
tBodyAcc-std()-Y {g}
tBodyAcc-std()-Z {g}                   
tGravityAcc-std()-X {g}
tGravityAcc-std()-Y {g}                
tGravityAcc-std()-Z {g}
tBodyAccJerk-std()-X {g}              
tBodyAccJerk-std()-Y {g}
tBodyAccJerk-std()-Z {g}               
tBodyGyro-std()-X {radian/second}                   
tBodyGyro-std()-Y {radian/second}                 
tBodyGyro-std()-Z {radian/second}
tBodyGyroJerk-std()-X {radian/second}              
tBodyGyroJerk-std()-Y {radian/second}
tBodyGyroJerk-std()-Z {radian/second}              
tBodyAccMag-std() {g}
tGravityAccMag-std() {g}                
tBodyAccJerkMag-std() {g}
tBodyGyroMag-std() {radian/second}                 
tBodyGyroJerkMag-std() {radian/second}
fBodyAcc-std()-X {g}                    
fBodyAcc-std()-Y {g}
fBodyAcc-std()-Z {g}                   
fBodyAccJerk-std()-X {g}
fBodyAccJerk-std()-Y {g}               
fBodyAccJerk-std()-Z {g}
fBodyGyro-std()-X {radian/second}                  
fBodyGyro-std()-Y {radian/second}
fBodyGyro-std()-Z {radian/second}                  
fBodyAccMag-std() {g}
fBodyBodyAccJerkMag-std() {g}          
fBodyBodyGyroMag-std() {radian/second}
fBodyBodyGyroJerkMag-std() {radian/second}

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