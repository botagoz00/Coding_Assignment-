*Coding Assignment done by Botagoz Amangeldiyeva*

*Task 1*
*Comment: Understand folder structure. Perform operations on files in different folders* 
pwd 
cd /Users/Amangeldiyeva_Botago/Desktop/Assignment

*Task 5*
*Comment: Read .csv data in Stata.*
import delimited "fastfood.csv", varnames(1) bindquotes(strict) encoding("utf-8")
browse

*Task 4*
*Comment: Break up work into smaller components using Stata .do files.*
**Run .do files 

**This .do file provides the basic summary of the dataset and clean making changes to data
do summary.do

**This .do file shows analysis and executes the regression model 
do analysis.do
