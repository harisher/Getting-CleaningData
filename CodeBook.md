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
1. Activity {NA, Character}        
2. SubjectNo {NA, ID}
3. tBodyAcc-mean()-X {g}
4. tBodyAcc-mean()-Y {g}
5. tBodyAcc-mean()-Z {g}                   
6. tGravityAcc-mean()-X {g}                
7. tGravityAcc-mean()-Y {g}                
8. tGravityAcc-mean()-Z {g}
9. tBodyAccJerk-mean()-X {g}
10. tBodyAccJerk-mean()-Y {g}              
11. tBodyAccJerk-mean()-Z {g}
12. tBodyGyro-mean()-X {radian/second}                 
13. tBodyGyro-mean()-Y {radian/second}                  
14. tBodyGyro-mean()-Z {radian/second}                 
15. tBodyGyroJerk-mean()-X {radian/second}
16. tBodyGyroJerk-mean()-Y {radian/second}             
17. tBodyGyroJerk-mean()-Z {radian/second}              
18. tBodyAccMag-mean() {g}                 
19. tGravityAccMag-mean() {g}
20. tBodyAccJerkMag-mean() {g}             
21. tBodyGyroMag-mean() {radian/second}
22. tBodyGyroJerkMag-mean() {radian/second}
23. fBodyAcc-mean()-X {g}
24. fBodyAcc-mean()-Y {g}                  
25. fBodyAcc-mean()-Z {g}
26. fBodyAcc-meanFreq()-X {g}               
27. fBodyAcc-meanFreq()-Y {g}
28. fBodyAcc-meanFreq()-Z {g}              
29. fBodyAccJerk-mean()-X {g}               
30. fBodyAccJerk-mean()-Y {g}              
31. fBodyAccJerk-mean()-Z {g}
32. fBodyAccJerk-meanFreq()-X {g}          
33. fBodyAccJerk-meanFreq()-Y {g}
34. fBodyAccJerk-meanFreq()-Z {g}          
35. fBodyGyro-mean()-X {radian/second}
36. fBodyGyro-mean()-Y {radian/second}                 
37. fBodyGyro-mean()-Z {radian/second}
38. fBodyGyro-meanFreq()-X {radian/second}              
39. fBodyGyro-meanFreq()-Y {radian/second}
40. fBodyGyro-meanFreq()-Z {radian/second}             
41. fBodyAccMag-mean() {g}
42. fBodyAccMag-meanFreq() {g}              
43. fBodyBodyAccJerkMag-mean() {g}
44. fBodyBodyAccJerkMag-meanFreq() {g}      
45. fBodyBodyGyroMag-mean() {radian/second}
46. fBodyBodyGyroMag-meanFreq() {radian/second}        
47. fBodyBodyGyroJerkMag-mean() {radian/second}
48. fBodyBodyGyroJerkMag-meanFreq() {radian/second}     
49. angle(tBodyAccMean,gravity) {radian}         
50. angle(tBodyAccJerkMean),gravityMean) {radian}
51. angle(tBodyGyroMean,gravityMean) {radian}
52. angle(tBodyGyroJerkMean,gravityMean) {radian}
53. angle(X,gravityMean) {radian}
54. angle(Y,gravityMean) {radian}             
55. angle(Z,gravityMean) {radian}
56. tBodyAcc-std()-X {g}                   
57. tBodyAcc-std()-Y {g}
58. tBodyAcc-std()-Z {g}                   
59. tGravityAcc-std()-X {g}
60. tGravityAcc-std()-Y {g}                
61. tGravityAcc-std()-Z {g}
62. tBodyAccJerk-std()-X {g}              
63. tBodyAccJerk-std()-Y {g}
64. tBodyAccJerk-std()-Z {g}               
65. tBodyGyro-std()-X {radian/second}                   
66. tBodyGyro-std()-Y {radian/second}                 
67. tBodyGyro-std()-Z {radian/second}
68. tBodyGyroJerk-std()-X {radian/second}              
69. tBodyGyroJerk-std()-Y {radian/second}
70. tBodyGyroJerk-std()-Z {radian/second}              
71. tBodyAccMag-std() {g}
72. tGravityAccMag-std() {g}                
73. tBodyAccJerkMag-std() {g}
74. tBodyGyroMag-std() {radian/second}                 
75. tBodyGyroJerkMag-std() {radian/second}
76. fBodyAcc-std()-X {g}                    
77. fBodyAcc-std()-Y {g}
78. fBodyAcc-std()-Z {g}                   
79. fBodyAccJerk-std()-X {g}
80. fBodyAccJerk-std()-Y {g}               
81. fBodyAccJerk-std()-Z {g}
82. fBodyGyro-std()-X {radian/second}                  
83. fBodyGyro-std()-Y {radian/second}
84. fBodyGyro-std()-Z {radian/second}                  
85. fBodyAccMag-std() {g}
86. fBodyBodyAccJerkMag-std() {g}          
87. fBodyBodyGyroMag-std() {radian/second}
88. fBodyBodyGyroJerkMag-std() {radian/second}

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

## Transformations performed
The data is not transformed. The average values of all the variables is calculated for each activity and each subject using the following code:

    SubSet <- group_by(DataSet_1, Activity, SubjectNo)
    DataSet_2 <- SubSet %>% 
                 summarise_at(vars(`tBodyAcc-mean()-X`:
                                   `fBodyBodyGyroJerkMag-std()`), 
                              mean, 
                              na.rm = TRUE)