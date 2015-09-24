**Getting and Cleaning Data course project**

Script **run_analysis.R** can be run as long as the Samsung data is in your working directory.

A full description hwo the has been obtaind is available at the site where the data was obtained:
[Human Activity Recognition Using Smartphones Data Set](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

The very data used in the project can is here: [Download Data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

The following steps has been implemented in the script, however more comments you can find in the very script.

1. Read files with results for test and train groups of subjects into two separate dataframes

2. Enrich each dataframe with information about subjects and activities located in the separate files

3. Create a single dataframe from the above two

4. Read column names from a file and select only those containing "mean()" and "std()"

5. Rewrite the names to be more tidy

6. Select only filtered columns from our dataframe and assign those tidy column names

7. From the data set in step 6, create a second, independent tidy data set with the average of each variable (column) for each activity and each subject

8. Output the data set in the .txt file 

9. Additionally, generate a specific dictionary, containing  group name (test, train) and subject, and output to file subject_groups.txt 

Addittionally, file *CodeBook.md* describes the variables, the data and any transformations performed to clean up the data
