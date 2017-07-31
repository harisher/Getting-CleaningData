# README
This project is done as part of **Coursera's Getting and Cleaning Data** course. The script file adds the variable names to the columns, adds two columns - Activitiy and SubjectNo, merges the two data sets - **test** and **train** datasets, and retains columns that are either mean or standard deviation values. Finally, the script groups the observations by activity and subject, and calculates the average values of the variables 

## How to execute the script "run_analysis.R"

1. The file **run_analysis.R** is to be placed in the **UCI HAR Dataset** directory.
2. Set the working directory to **UCI HAR Dataset** in the R programming environment using the setwd() function

    > setwd(<*path_to_UCI HAR Dataset*>)
    
3. Execute the file by running the following statement:

    > source("run_analysis.R")

    
## The logic performed behind the scenes

### Initial steps
- Load the **dplyr** library to use functions group_by, summarise_at
- Save the list of existing objects in **obj** vector
- Remove existing dataset file, if present
- Remove existing objects and data in the environment

### Creating the dataset
- Load the activity_labels.txt and features.txt files into **activity_labels** and **features** lists

#### Loading the data for TEST
- Save the list of subjects for test in **subjects_test** vector
- Rename the column name in **subjects_test** to *SubjectNo*
- Save the data in X_test to **X_test** list
- Rename the column names in **X_test** with the values from **features**
- Combine **subjects_test** with **X_test**
- Save the Y_test data to **Y_test**
- Add a column *Activity* to label the activities in **Y_test**
- Add the activity labels data in **Y_test** to **X_test**

#### Loading the data for TRAIN
- Save the list of subjects for train in **subjects_train** vector
- Rename the column name in **subjects_train** to *SubjectNo*
- Save the data in X_train to **X_train** list
- Rename the column names in **X_train** with the values from **features**
- Combine **subjects_train** with **X_train**
- Save the Y_train data to **Y_train**
- Add a column *Activity* to label the activities in **Y_train**
- Add the activity labels data in **Y_train** to **X_train**

#### Combining the TEST and TRAIN data
- Merge the **X_test** amd **X_train** to form a single data set called **HARData**

#### Creating the initial dataset
- Search for the words "Mean", "mean", "Std", "std" in the column names of the dataset and save the *mean* column names to **means** and the *std* column names to **stds**
- Create the final dataset **DataSet_1** by choosing columns names having values in **means** and **stds**.

### Creating the final dataset
- Group the first dataset by **Activity** and **SubjectNo** and save it to **SubSet**
- Calculate the average value of the measures for each activity and each subject by applying the *summarise_at* function on the **SubSet** and save the result to **DataSet_2**. This is the second Dataset required in the assignment

### Writing the dataset to file
- Write dataset to **Tidy_Dataset.txt** file

### Cleaning up
- Remove the temporary data and objects created using the rm() function


