# Homework 1
import pandas as pd
import numpy as np
import matplotlib.pyplot as mpl

# Given the list below:
quiz_scores = [78, 85, 92, 67, 88, 95, 73, 84]

'''
Write code to:

    Print the first score.
    Print the last score.
    Calculate the average score.
    Create a new list containing only scores greater than or equal to 80.
    Count how many students scored below 80.

'''
# TODO

'''
Write a function called letter_grade that takes a numeric score and returns:
Score Range 	Grade
90 or above 	A
80–89 	        B
70–79 	        C
60–69 	        D
Below 60 	    F
'''
# TODO

# Create a dataframe using the list quiz score.
# TODO

# Create a new column named Letter_Grade by applying the letter_grade function.
# TODO

# Add the following list as a column named HoursOfStudy:
study_hours = ['1', '1.5', '2.5', '0', '1', '1.5', '0.5', '1']

'''
Once you create the column, do the following:  
9. Change the column to numeric.  
10. Create a plot with HoursOfStudy and quiz_scores.  
11. Make the plot look pretty.
'''
# TODO

################# Data Analysis ##############################
# For this part, we will be working with an actual dataset.
# Load the following dataset https://raw.githubusercontent.com/dblaskey/ML_Course_Code/main/Data/weatherHistory.csv
# Then create a copy
# TODO

'''
Clean the column names of the dataframe:

    Remove spaces at the beginning and end of the column name
    Convert all column names to lowercase.
    Replaces any group of characters that is not a letter or number with an underscore.
    Remove underscores from the beginning and end.
'''
# TODO

'''
Now that you have cleaned column names, it is time to understand and clean the dataset:  
1. Notice there seems to be a typo in the column heading. Change `loud_cover` to `cloud_cover`. 
2. Check for impossible data such as precip, wind speed, visibility, cloud cover, or pressure < 0 and any variable outside of earthly max and min values.
3. Give the count, mean, standard deviation, max, and min values of each of the columns.
4. Count the number of missing values for each column.
5. Create a new column changing `formatted_date` to a datetime column.ß
6. Create new columns for hour, day, month, and year.
'''
# TODO

'''
Now we will create multiple plots to continue to explore the dataset.  
1. Plot a timeseries plot of windspeed.
2. Create a second timeseries plot of air temperature and humidity using two different axes.
3. Plot a daily average temperature (i.e. average all the January 1st, the January 2nds, and so on).
4. Make the plots look pretty.
'''
# TODO

'''
Submit your completed code and your produced figures on Blackboard

Rubric
Component 	           Points
Warm up 	           5
Load and copy data 	   2
Clean column names 	   3
Clean dataset 	       6
Plots (3 points each)  9
Total 	               25
'''
