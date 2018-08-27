###########################################################################
##
## run_analysis.R
##
## This programme takes the accelerometer data from the Samsung Galaxy S 
## and tidy's the data producing an output file named "tidy_data.txt".
##
## A code book and readme are provided for further information.
##
##
###########################################################################

###########################################################################
# Load dplyr package
library(dplyr)

# Read train data
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("./UCI HAR Dataset/train/Y_train.txt")
Sub_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# Read test data
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("./UCI HAR Dataset/test/Y_test.txt")
Sub_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# Read variable names
var <- read.table("./UCI HAR Dataset/features.txt")

# Read activity labels
act_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
colnames(act_labels) <- c("Number", "Activity")

# Merge test and train data
X_comb <- rbind(X_train, X_test)
Y_comb <- rbind(Y_train, Y_test)
Sub_comb <- rbind(Sub_train, Sub_test)
colnames(Sub_comb) <- "Subject"

# Extract only the mean and standard deviation
var_mean_std <- var[grep("mean\\(\\)|std\\(\\)",var[,2]),]
X_comb <- X_comb[,var_mean_std[,1]]

# Uses descriptive activity names to name the activities
colnames(Y_comb) <- "Activity_ID"
Y_comb$Activity <- factor(Y_comb$Activity_ID, labels = as.character(act_labels[,2]))
Activity <- Y_comb[,-1]

# Label the data set with descriptive variable names
colnames(X_comb) <- var[var_mean_std[,1],2]

# Merge the dataset
merged_data <- cbind(Activity , Sub_comb, X_comb)
var_names <- colnames(merged_data)

# Clean up names and add details to abberviated names
for (i in 1:length(var_names)) {
  var_names[i] <- gsub("\\()","", var_names[i])
  var_names[i] <- gsub("([Bb]ody[Bb]ody|[Bb]ody)","Body_", var_names[i])
  var_names[i] <- gsub("[Gg]yro","Gyroscope_", var_names[i])
  var_names[i] <- gsub("^f", "Frequency_Domain_", var_names[i])
  var_names[i] <- gsub("^t", "Time_Domain_", var_names[i])
  var_names[i] <- gsub("Acc", "Accelerometer_", var_names[i])
  var_names[i] <- gsub("Jerk","Jerk_", var_names[i])
  var_names[i] <- gsub("Gravity","Gravity_", var_names[i])
  var_names[i] <- gsub("Mag", "Magnitude_", var_names[i])
  var_names[i] <- gsub("mean", "Mean", var_names[i])
  var_names[i] <- gsub("std", "Standard_Deviation", var_names[i])

}

# Update MergedDataSet with new descriptive column names
colnames(merged_data) <- var_names;
  
# Creates a second tidy data set with the average of each variable for each activity and subject.
new_data_mean <- merged_data %>% group_by(Activity, Subject) %>% summarize_all(funs(mean))
write.table(new_data_mean, file = "./UCI HAR Dataset/tidydata.txt", row.names = FALSE, col.names = TRUE)
