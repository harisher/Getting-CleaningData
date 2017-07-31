        ## load libraries
        library(dplyr)

        ## set working directory
        ## setwd("C:/Users/SONY/Documents/R_files/Week4project/UCI HAR Dataset")        
        
        ## remove existing file, if any
        if(file.exists("Tidy_Dataset.txt"))
                file.remove("Tidy_Dataset.txt")
        
        ## remove existing R objects and data
        obj <- ls(all = TRUE)
        rm(obj, DataSet_1, DataSet_2)
        
        ############## Create first dataset ##################
        
        ## read activity labels file
        activity_labels <- read.table("activity_labels.txt") 
        
        ## read features file
        features <- read.table("features.txt")
        
        ################### test data ########################
        
        ## read subjects in test file 
        subjects_test <- read.table("./test/subject_test.txt")
        colnames(subjects_test) <- "SubjectNo"
        
        ## read the test measures file
        X_test <- read.table("./test/X_test.txt")
        
        ## add features names to the columns of test data
        colnames(X_test) <- features$V2
        
        ## add subjects data to a column in the test data
        X_test <- cbind(subjects_test,X_test)
        
        ## read activities for the measures in test data
        Y_test <- read.table("./test/y_test.txt")
        
        ## add labels for the activities
        for(i in 1:nrow(Y_test))
                Y_test[i,"Activity"] <- activity_labels[Y_test[i,1],2]
        
        ## add activity labels as a column to the test data       
        X_test <- cbind(Y_test[2],X_test)
        
        ################## training data #####################
        
        ## read subjects in train file
        subjects_train <- read.table("./train/subject_train.txt")
        colnames(subjects_train) <- "SubjectNo"
        
        ## read the train measures file
        X_train <- read.table("./train/X_train.txt")
        
        ## add features names to the columns of train data
        colnames(X_train) <- features$V2
        
        ## add subjects data to a column in the train data
        X_train <- cbind(subjects_train,X_train)
        
        ## read activities for the measures in train data
        Y_train <- read.table("./train/y_train.txt")
        
        ## add labels for activities
        for(i in 1:nrow(Y_train))
                Y_train[i,"Activity"] <- activity_labels[Y_train[i,1],2]
        
        ## add activity labels as a column to the train data
        X_train <- cbind(Y_train[2],X_train)
        
        ############### Combine Data sets ####################
        ## Combine the test and train data
        HARData <- rbind(X_test, X_train)
        
        ######################################################
        ################### First Dataset ####################
        
	## Select columns with means and standard deviations from the resultng dataset 
        means <- grep("*[Mm]ean*",names(HARData))
        stds <- grep("*[Ss]td*",names(HARData))
                
        ## Final Dataset with means and standard deviations 
        DataSet_1 <- HARData[,c(1,2,means,stds)]
        
        ######################################################
        ################## Second Dataset ####################
        
        ## Group data by Activity and Subjects
        SubSet <- group_by(DataSet_1, Activity, SubjectNo)
        
        ## Create second, tidy dataset wih averages for each activity and each subject
        DataSet_2 <- SubSet %>% 
                   summarise_at(vars(`tBodyAcc-mean()-X`:`fBodyBodyGyroJerkMag-std()`),
                                mean, na.rm = TRUE)
        
        ## write dataset to text file
        write.table(DataSet_2, file = "Tidy_Dataset.txt", row.names = FALSE)
        
        ## remove temporary objects and data
        rm("activity_labels", "features", "i", "subjects_test", 
           "subjects_train", "X_test", "X_train", "Y_test", "Y_train", 
           "HARData", "SubSet", "means", "stds")
        
        
        

