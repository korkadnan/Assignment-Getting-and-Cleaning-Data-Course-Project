## This program will do the following:
## - Merge the training and the test sets to create one data set.
## - Extract only the measurements on the mean and standard deviation for each measurement. 
## - Have descriptive activity names to name the activities in the data set
## - Appropriately labelled data set with descriptive variable names. 
## - Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Load important function for this program
# reshape2 - Flexibly restructure and aggregate data
require("reshape2")

# Force installation of required function
if (!require("reshape2")) {
  install.packages("reshape2")
}

# Loads features data from text file named 'features.txt'
loadFeatures <- read.table(".\\UCI HAR Dataset\\features.txt")[,2]

# Loads activity_labels data from text file named 'activity_labels.txt'
loadActLabels <- read.table(".\\UCI HAR Dataset\\activity_labels.txt")[,2]

# Extract only the measurements on the mean and standard deviation for each measurement
extMeanSTD <- grepl("mean|std", loadFeatures)

# Loads x_test data from text file named 'x_test.txt'
x_test <- read.table(".\\UCI HAR Dataset\\test\\x_test.txt")

# Loads x_train data from text file named 'x_train.txt'
x_train <- read.table(".\\UCI HAR Dataset\\train\\x_train.txt")

# Loads y_test data from text file named 'y_test.txt'
y_test <- read.table(".\\UCI HAR Dataset\\test\\y_test.txt")

# Loads y_train data from text file named 'y_train.txt'
y_train <- read.table(".\\UCI HAR Dataset\\train\\y_train.txt")

# Load subject_test data from text file named 'subject_text.txt'
subject_test <- read.table(".\\UCI HAR Dataset\\test\\subject_test.txt")

# Load subject_train data from text file named 'subject_train.txt'
subject_train <- read.table(".\\UCI HAR Dataset\\train\\subject_train.txt")

# Set x labels for test
names(x_test) = loadFeatures

# Extract only the measurements on the mean and standard deviation for each measurement
x_test = x_test[,extMeanSTD]

# Load activity labels
y_test[,2] = loadActLabels[y_test[,1]]

names(x_train) = loadFeatures

# Set activity labels for y
names(y_test) = c("Activity_ID", "Activity_Label")

# Set subject labels
names(subject_test) = "subject"
names(subject_train) = "subject"

# Concatenate the data
testData <- cbind(as.data.table(subject_test), y_test, x_test)

# Extract only the measurements on the mean and standard deviation for each measurement.
x_train = x_train[,extMeanSTD]

# Load activity data
y_train[,2] = loadActLabels[y_train[,1]]
names(y_train) = c("Activity_ID", "Activity_Label")

# Concatenate the data
train_data <- cbind(as.data.table(subject_train), y_train, x_train)

# Concatenate test and train data
dataComb = rbind(testData, train_data)

id_labels   = c("subject", "Activity_ID", "Activity_Label")
data_labels = setdiff(colnames(dataComb), id_labels)
melt_data      = melt(dataComb, id = id_labels, measure.vars = data_labels)

# Apply mean function to dataset using dcast function;

cleanData   = dcast(melt_data, subject + Activity_Label ~ variable, mean)
write.table(cleanData, file = ".//UCI_HAR_Clean.txt")