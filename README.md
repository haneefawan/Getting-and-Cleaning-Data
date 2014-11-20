Course Project: Getting-and-Cleaning-Data
=========================
Source dataset https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Notes
*  Assumes the dataset is unzipped in the working directory of RStudio.
*  Only vaiables containing mean() & std() are used.
*  The training and test data are available in folders named  train  and  test  respectively.
*  For each of these data sets: ◦Measurements are present in  X_<dataset>.txt  file.
*  Subject information is present in  subject_<dataset>.txt  file.
*  Activity codes are present in  y_<dataset>.txt  file.
*  Rscript <path to>/run_analysis.R.
*  The tidy dataset is created in working directory as  tidy_data.txt.
*  Code book for the tidy dataset is available [here](codebook.md)

Working Configuration:

```R

> version
               _                           
platform       x86_64-w64-mingw32          
arch           x86_64                      
os             mingw32                     
system         x86_64, mingw32             
status                                     
major          3                           
minor          1.1                         
year           2014                        
month          07                          
day            10                          
svn rev        66115                       
language       R                           
version.string R version 3.1.1 (2014-07-10)
nickname       Sock it to Me               
```
