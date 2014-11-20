# Project requirements
# You should create one R script called run_analysis.R that does the following. 
# 1.Merges the training and the test sets to create one data set.
# 2.Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3.Uses descriptive activity names to name the activities in the data set
# 4.Appropriately labels the data set with descriptive variable names. 
# 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#

# Set Working directory
set_working_dir <- 'UCI_HAR_Dataset'

# Function to merge the training and the test sets to create one data set.
# Create function
merge_test_and_training <- function(file, name=FALSE) {
  merged_data <- data.frame()
  
  for (wrapper in c('test', 'train')) {
    file_name <- sprintf('%s/%s/%s_%s.txt', set_working_dir, wrapper, file, wrapper)
    merged_data <- rbind(merged_data, read.table(file_name))
  }
  
  if (name != FALSE) {
    colnames(merged_data) <- name
  }
  merged_data
}

# Get contents from features.txt
features_contents <- read.table(sprintf('%s/features.txt', set_working_dir))
features_column_names <- features_contents$V2

# Get contents from activity_labels.txt
labels_for_activity <- read.table(sprintf('%s/activity_labels.txt', set_working_dir))

# Sets labels activity, subject and from fetaures_column_names
merged_data_labels <- merge_test_and_training('y', 'activity')
merged_data_subjects <- merge_test_and_training('subject', 'subject')
dataset <- merge_test_and_training('X', features_column_names)

# Extracts only the measurements on the mean and standard deviation for each measurement. 
dataset <- dataset[grepl("mean\\(\\)|std\\(\\)", features_column_names)]

# Cbind data sets
dataset <- cbind(merged_data_subjects, merged_data_labels, dataset)

# Set activity labels
dataset$activity <- labels_for_activity[dataset$activity, 2]

# Aggregate tidy data set
tidy_data_set <- aggregate(dataset, by=list(dataset$subject, dataset$activity), FUN=mean)

# Appropriately labels the data set with descriptive variable names.
tidy_data_set$activity <- NULL
tidy_data_set$subject <- NULL
names(tidy_data_set)[names(tidy_data_set) == 'Group.1'] <- 'subject'
names(tidy_data_set)[names(tidy_data_set) == 'Group.2'] <- 'activity'

# create independent tidy data set with the average of each variable for each activity and each subject.
write.table(tidy_data_set, "tidy_data.txt", sep="\t", row.names = FALSE)
