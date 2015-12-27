# Getting-and-Cleaning-Data

Using the data set:

Human Activity Recognition Using Smartphones Dataset, Version 1.0
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory, DITEN - Università degli Studi di Genova. Via Opera Pia 11A, I-16145, Genoa, Italy. activityrecognition@smartlab.ws, www.smartlab.ws

This Readme file describes the R scripts run_analysis.R, which also contains detailed comments. For the script to work, place it in your working directory, and have the orignal data set in a subfolder named "UCI HAR Dataset".

This R script processes the data set as follows - 
1. The training and test data sets were merged, for both x, y and subject files.
2. The variables of the combined x data set were named based on the labels in the features.txt file.
3. The "activity" variable was changed from an index to names, based on the labels in the "activity_labels.txt" file.
4. Created a tidy data set, presenting the mean of each variable per subject per activity.

The script uses the dplyr and data.table packages.
