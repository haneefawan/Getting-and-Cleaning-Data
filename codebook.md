# Description
Code book that describes the variables, the data, and any transformations or work that you performed to clean up the data

# Introduction

The script `run_analysis.R`
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# run_analysis.R
- The script has one function  called (merge_test_and_training) which performs merging of training and test using the wrapper sprintf() and rbind().
- sprinf() is used to fetch contents from features.txt and assign to column names, and lables from activity_labels.txt.
- y is 
- 
- 
- 
- 
- The output is a text file (tidy_data.txt) produced in the working directory.

# Global Environment
```R
> ls()
[1] "dataset"                 "features_column_names"   "features_contents"       "labels_for_activity"    
[5] "merge_test_and_training" "merged_data_labels"      "merged_data_subjects"    "set_working_dir"        
[9] "tidy_data_set"          
> 
```



