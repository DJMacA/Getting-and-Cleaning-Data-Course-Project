## CODEBOOK FOR COURSERA WEEK 4 GETTING AND CLEANING DATA ASSIGNMENT
# Description of output file tidydata.txt

The output file 'tidydata.txt' contains 180 observations of 68 variables. Each row contains averaged variables for subject and activity.

The input variables for the assignment were the mean and standard deviation of each variable only.

# Summary of activities and subject variables
The data were averaged based on subject and activity categories. There were 30 subject categories, numbered 1 to 30 and six activity categories:

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

# Summary of Samsung Galaxy S derived variables variables
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals in the X, Y and Z directions. 

The acceleration signal was separated into body and gravity acceleration signals.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals 

Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing.

These signals were used to estimate mean and standard deviation of the feature vector for each pattern.  

# Brief overview of column combinations
There are 68 columns.The first two columns are the activity and subject as described above. The remaining columns are combinations on the following observed variables:

Axis:
X
Y
Z

Signal:
Gyroscope - Gyroscope signal
Accelerometer - Accelerometer signal
Frequency_Domain - frequency domain signals estimated using a fast fourier transform
Time_Domain - time domain signals
Body - Body acceleration type signal
Gravity - Gravity accelerometer signal
Magnitude - magnitude of each signal type.

Values estimated from above signals:
Mean
Standard_Deviation

# All columns
 [1] "Activity"                                                              
 [2] "Subject"                                                               
 [3] "Time_Domain_Body_Accelerometer_-Mean-X"                                
 [4] "Time_Domain_Body_Accelerometer_-Mean-Y"                                
 [5] "Time_Domain_Body_Accelerometer_-Mean-Z"                                
 [6] "Time_Domain_Body_Accelerometer_-Standard_Deviation-X"                  
 [7] "Time_Domain_Body_Accelerometer_-Standard_Deviation-Y"                  
 [8] "Time_Domain_Body_Accelerometer_-Standard_Deviation-Z"                  
 [9] "Time_Domain_Gravity_Accelerometer_-Mean-X"                             
[10] "Time_Domain_Gravity_Accelerometer_-Mean-Y"                             
[11] "Time_Domain_Gravity_Accelerometer_-Mean-Z"                             
[12] "Time_Domain_Gravity_Accelerometer_-Standard_Deviation-X"               
[13] "Time_Domain_Gravity_Accelerometer_-Standard_Deviation-Y"               
[14] "Time_Domain_Gravity_Accelerometer_-Standard_Deviation-Z"               
[15] "Time_Domain_Body_Accelerometer_Jerk_-Mean-X"                           
[16] "Time_Domain_Body_Accelerometer_Jerk_-Mean-Y"                           
[17] "Time_Domain_Body_Accelerometer_Jerk_-Mean-Z"                           
[18] "Time_Domain_Body_Accelerometer_Jerk_-Standard_Deviation-X"             
[19] "Time_Domain_Body_Accelerometer_Jerk_-Standard_Deviation-Y"             
[20] "Time_Domain_Body_Accelerometer_Jerk_-Standard_Deviation-Z"             
[21] "Time_Domain_Body_Gyroscope_-Mean-X"                                    
[22] "Time_Domain_Body_Gyroscope_-Mean-Y"                                    
[23] "Time_Domain_Body_Gyroscope_-Mean-Z"                                    
[24] "Time_Domain_Body_Gyroscope_-Standard_Deviation-X"                      
[25] "Time_Domain_Body_Gyroscope_-Standard_Deviation-Y"                      
[26] "Time_Domain_Body_Gyroscope_-Standard_Deviation-Z"                      
[27] "Time_Domain_Body_Gyroscope_Jerk_-Mean-X"                               
[28] "Time_Domain_Body_Gyroscope_Jerk_-Mean-Y"                               
[29] "Time_Domain_Body_Gyroscope_Jerk_-Mean-Z"                               
[30] "Time_Domain_Body_Gyroscope_Jerk_-Standard_Deviation-X"                 
[31] "Time_Domain_Body_Gyroscope_Jerk_-Standard_Deviation-Y"                 
[32] "Time_Domain_Body_Gyroscope_Jerk_-Standard_Deviation-Z"                 
[33] "Time_Domain_Body_Accelerometer_Magnitude_-Mean"                        
[34] "Time_Domain_Body_Accelerometer_Magnitude_-Standard_Deviation"          
[35] "Time_Domain_Gravity_Accelerometer_Magnitude_-Mean"                     
[36] "Time_Domain_Gravity_Accelerometer_Magnitude_-Standard_Deviation"       
[37] "Time_Domain_Body_Accelerometer_Jerk_Magnitude_-Mean"                   
[38] "Time_Domain_Body_Accelerometer_Jerk_Magnitude_-Standard_Deviation"     
[39] "Time_Domain_Body_Gyroscope_Magnitude_-Mean"                            
[40] "Time_Domain_Body_Gyroscope_Magnitude_-Standard_Deviation"              
[41] "Time_Domain_Body_Gyroscope_Jerk_Magnitude_-Mean"                       
[42] "Time_Domain_Body_Gyroscope_Jerk_Magnitude_-Standard_Deviation"         
[43] "Frequency_Domain_Body_Accelerometer_-Mean-X"                           
[44] "Frequency_Domain_Body_Accelerometer_-Mean-Y"                           
[45] "Frequency_Domain_Body_Accelerometer_-Mean-Z"                           
[46] "Frequency_Domain_Body_Accelerometer_-Standard_Deviation-X"             
[47] "Frequency_Domain_Body_Accelerometer_-Standard_Deviation-Y"             
[48] "Frequency_Domain_Body_Accelerometer_-Standard_Deviation-Z"             
[49] "Frequency_Domain_Body_Accelerometer_Jerk_-Mean-X"                      
[50] "Frequency_Domain_Body_Accelerometer_Jerk_-Mean-Y"                      
[51] "Frequency_Domain_Body_Accelerometer_Jerk_-Mean-Z"                      
[52] "Frequency_Domain_Body_Accelerometer_Jerk_-Standard_Deviation-X"        
[53] "Frequency_Domain_Body_Accelerometer_Jerk_-Standard_Deviation-Y"        
[54] "Frequency_Domain_Body_Accelerometer_Jerk_-Standard_Deviation-Z"        
[55] "Frequency_Domain_Body_Gyroscope_-Mean-X"                               
[56] "Frequency_Domain_Body_Gyroscope_-Mean-Y"                               
[57] "Frequency_Domain_Body_Gyroscope_-Mean-Z"                               
[58] "Frequency_Domain_Body_Gyroscope_-Standard_Deviation-X"                 
[59] "Frequency_Domain_Body_Gyroscope_-Standard_Deviation-Y"                 
[60] "Frequency_Domain_Body_Gyroscope_-Standard_Deviation-Z"                 
[61] "Frequency_Domain_Body_Accelerometer_Magnitude_-Mean"                   
[62] "Frequency_Domain_Body_Accelerometer_Magnitude_-Standard_Deviation"     
[63] "Frequency_Domain_Body_Accelerometer_Jerk_Magnitude_-Mean"              
[64] "Frequency_Domain_Body_Accelerometer_Jerk_Magnitude_-Standard_Deviation"
[65] "Frequency_Domain_Body_Gyroscope_Magnitude_-Mean"                       
[66] "Frequency_Domain_Body_Gyroscope_Magnitude_-Standard_Deviation"         
[67] "Frequency_Domain_Body_Gyroscope_Jerk_Magnitude_-Mean"                  
[68] "Frequency_Domain_Body_Gyroscope_Jerk_Magnitude_-Standard_Deviation"
