# Introduction to Engineering Research-ME41125

## What was the impact of the COVID-19 pandemic on the physical activity of students based on different living conditions? by Akhil Chadha (5223121)
Physical activity has been a key factor for analysing how a person has been looking after himself. This is because it has a direct relation with the physical and mental health of an individual; which helps to improve the overall quality of life. In this paper, the effect of the COVID-19 pandemic has been studied to see what impact it has had on the physical activity of students. For this, a comparison is done between individuals who performed a weeks worth of physical activity before and during the pandemic. Different kinds of living conditions are taken into account to analyse this study using an unpaired t-test. IPAQ (International Physical Activity Questionnaire) score calculation is also done to see what effect the pandemic has had on the participants. After performing these studies, it has been observed that the the pandemic has had a negative effect on the physical activity of individuals irrespective of their living conditions; the reasons of which have been listed in great detail. Further, a separate year-wise analysis is also performed to see how living conditions have affected the participants and their physical activity.

#### 1. Introductory information
Download the fitbit dataset from the repository on Gitlab. Do not change anything in the dataset file downloaded. The dataset information is as follows:

Fitbit dataset: Data_IER.csv which then gets saved as **Data_analysis_Data_IER.csv** upon downloading if it isn't zipped as a folder from the repository. In such a case, kindly change the name of the file to **Data_IER.csv** before running the matlab code.

A warning message is also sent at the start of the program to allow you to cross-check the dataset file name.

For questions about the dataset, contact l.hoogendam@erasmusmc.nl

For questions related to the code itself, contact A.Chadha@student.tudelft.nl

#### 2. Methodological information
This dataset is coming from a study with previous students. The students were asked to track the number of steps taken each day, during one week. 
For this study, MATLAB2018b was used to create the code and analyse the data. The code has comments in place along with sections to distribute the code as per the action/test being performed. Upon running the code, all figures and results are obtained as seen in the paper. The different t-test results can be observed from the workspace under stats1 and stats2 structs.

To run the code, open main.m and run the file. It is recommended to have atleast MATLAB version 2018b installed as some functions and commands might not work on previous versions.
Further, you should have the Data_IER.csv file in the same folder as the main.m file and both should be in the current path on MATLAB.

The code is structures in the following way:
- Dataset initialisation and breakup of the data based on year and living conditions
- Finding the average number of steps taken from the app and Omron data and then taking the maximum of the two
- Performing the unpaired t-test
- Plotting results from t-test
- IPAQ score evaluation
- Plotting results from IPAQ score evaluation

#### 3. Data specific information
The dataset used includes:

- Demographics
- Year of data collection (2019 vs 2020)
- Expected number of steps and self-rated physical activity
- Estimate of energy use due to physical activity
- Attitude towards physical activity
- Number of steps per day (app vs activity tracker)
- Distance travelled (activity tracker)
- Calories burned (activity tracker)

A complete description of all variables can be found in the following file:
https://drive.google.com/file/d/16BaDtD3aBvu9bijzOY2Mq_pLzX8K2NiS/view?usp=sharing

A PDF version of this description is also available on Brightspace. 

This dataset is used to calculate the average number of steps taken by participants over the course of one week by observing the app and Omron data.
In some places, data has been characterised according to the specific year and living condition. An abbreviation often used for different living conditions are as follows:

- mo-Moved Out
- li-Living with Parents

Also, numbers 1 and 2 are used to denote app and Omron data in some variable names respectively.

The unpaired t-test is performed using the ttest2 command for both living conditions which are analysed.

#### 4. Sharing and Access information
The students have given consent for the re-use of the data for educational purposes. Therefore the data can be used for only this purpose. Do not share the data with others.
