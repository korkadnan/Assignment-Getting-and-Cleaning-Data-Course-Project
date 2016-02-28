# CodeBook

	This code book will describe the data, the variables, and transformations of data that were performed by the R program, run_analysis.R.
	
	## Background Information
	
		##  Human Activity Recognition Using Smartphones Data Set 
		
		The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

		The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

	
## Source

	## Background
		http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
		
	## Data
		https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
		

## Variables and Files

	The source provides the following files:
		Parent:
			- README.txt
			- features_info.txt		: Information about the variables used in features.txt.
			- features.txt			: All of the features for the data.
			- activity_labels.txt	: All of the class labels and their activity names.
		test:
			- subject_test.txt		: Data for each subject that performed activity for each sample range (2 to 24).
			- X_test.txt			: Test set data for the subjects.
			- y_test.txt			: Test set data labels.
			Inertia Signals:
				- total_Acc_x-y-z_train.txt		: 128 element acceleration signal reading vectors in units gravitational units 'g' for vectors x, y, and z.
				- body_acc_x-y-z_train.txt		: Body acceleration signals calculated by equation [(total acceleration) - (gravitational acceleration)].
				- body_gyro_x-y-z_train.txt		: Angular velocity measured by the gyroscope for each sample range in units of radians per second.
		train:
			- subject_train.txt		: Identifiers for each subject that performed activity for each sample range (1 to 30).
			- X_train.txt			: Training set data for the subjects.
			- y_train.txt			: Training set data labels.
			Inertia Signals:
				- total_Acc_x-y-z_train.txt		: 128 element acceleration signal reading vectors in units gravitational units 'g' for vectors x, y, and z.
				- body_acc_x-y-z_train.txt		: Body acceleration signals calculated by equation [(total acceleration) - (gravitational acceleration)].
				- body_gyro_x-y-z_train.txt		: Angular velocity measured by the gyroscope for each sample range in units of radians per second.
				
	## Data Transformation
		This program will transform the data via the following method:
			- Merge the training and the test sets to create one data set.
			- Extract only the measurements on the mean and standard deviation for each measurement. 
			- Have descriptive activity names to name the activities in the data set
			- Appropriately labelled data set with descriptive variable names. 
			- Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
			
## How To Run

	1. Download the data source to desired folder.
	2. Download run_analysis.R and save to folder.
	3. Use setwd() function to set the working directory as the desired folder from step 1.
	4. Use source() function to run the program. I.e. source("run_analysis.R").
	5. File UCI_HAR_Clean.txt will be created in the desired folder from step 1.
