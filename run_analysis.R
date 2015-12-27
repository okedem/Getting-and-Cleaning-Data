# Getting and Cleaning Data course project, 2015

## Phase 1 - read and combine test/train data and name the columns
# Read the data
library(data.table);
train = fread("./UCI HAR Dataset/train/X_train.txt");
test = fread("./UCI HAR Dataset/test/X_test.txt");
train_subj = fread("./UCI HAR Dataset/train/subject_train.txt");
test_subj = fread("./UCI HAR Dataset/test/subject_test.txt");
train_activity = fread("./UCI HAR Dataset/train/y_train.txt");
test_activity = fread("./UCI HAR Dataset/test/y_test.txt");
activity_labels = fread("./UCI HAR Dataset/activity_labels.txt");
features = fread("./UCI HAR Dataset/features.txt");

# Combine test and train data
combined = rbind(train,test);
combined_subj = rbind(train_subj,test_subj);
combined_activity = rbind(train_activity,test_activity);
colnames(combined_subj) = "subject";
colnames(combined_activity) = "activity";
# Name the columns according to the loaded "features"
colnames(combined) = features$V2;

## Phase 2 - only select columns related to mean and standard deviation
# might need to install.packages("dplyr") is not already installed
library(dplyr);
phase2 = cbind(select(combined,contains("mean()")),select(combined,contains("std()")));

## Phase 3 - Uses descriptive activity names to name the activities in the data set
phase3 = cbind(combined_activity,combined_subj,phase2);
phase3$activity = factor(combined_activity$activity,1:6,labels = activity_labels$V2);

## Phase 4 - name variables - already done earlier, in phase 1

## Phase 5 - summarize results to tidy data set
arranged = arrange(phase3,subject) # arrange by subject, just so the result looks nicers
grouped = group_by(arranged,subject,activity)
tidy_data = summarise_each(grouped,funs(mean))

## Output the tidy_data:
write.table(tidy_data,"tidy_data.txt",row.name=FALSE)
