#README

## Assignment: Getting and Cleaning Data Course Project

	The purpose of this code is to collect, work with, and clean a data set.

## Required Functions

	reshape2

## Program Functionality

This program will do the following:

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
