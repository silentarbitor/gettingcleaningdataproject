gettingcleaningdataproject
==========================

my project

There are 6 different categories of activities which distinguish each type of data collected. These are, "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING". The tidy data set has all the values of the calculated means and standard deviations taken from the categories in which the rows were labeled.

This tidy data set has 80 rows and 10299 columns. Activities are labeled on the far left, and the means and standard deviations to the right of that. 

To get this tidy data set:
1. get the necessary files from the directory "X_test.txt", "y_test.txt", "X_train.txt", "y_train.txt", and "features.txt". 
2. combining the xtest and ytrain will get you with a large data set. the ytest and ytrain will be also combined together and attached to the left side of the large data set. 
3. Then you use the activity labels to replace the number key which is used in the y files to for better descriptive variables for the activities.
4. now you use features to attach to the column names so that you have better variables and a way to search for the data you need.
5. finally you use a for loop and grep function to search through all the descriptive names of columns and find the ones that describe mean and standard deviation. You then create a new dataframe with those columns. 
             
             
             
             


