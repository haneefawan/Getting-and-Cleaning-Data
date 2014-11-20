# Description
Code book that describes the variables, the data, and any transformations or work that you performed to clean up the data

# Introduction

The script `run_analysis.R`
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement. 
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names. 
5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


 
# run_analysis.R
The script has one function (merge_test_and_training) which performs merging of training and test. The output is a text file (tidy_data.txt) produced in the working directory.

# List of all variables
```R
> ls()
 [1] "activity_labels"         "activityLabels"          "data"                    "data_labels"             "dataFeatures"           
 [6] "dataLabels"              "dataset"                 "datasetPath"             "dataSubjects"            "extract_features"       
[11] "features"                "features_column_names"   "features_contents"       "id_labels"               "labels_for_activity"    
[16] "melt_data"               "merge_test_and_training" "merged_data_labels"      "merged_data_subjects"    "readMergedData"         
[21] "set_working_dir"         "setColumnNames"          "subject_test"            "subject_train"           "test_data"              
[26] "tidy_data"               "tidy_data_set"           "tidyDataset"             "train_data"              "X_test"                 
[31] "X_train"                 "y_test"                  "y_train"                
> 
```



