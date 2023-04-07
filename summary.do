*This .do file provides the basic summary of the dataset*

pwd
cd /Users/Amangeldiyeva_Botago/Desktop/Assignment

*Task 5*
*Comment: Read .csv data in Stata.*
import delimited "fastfood.csv", varnames(1) bindquotes(strict) encoding("utf-8")
browse
summarize

*Task 6*
*Comment: Fix common data quality errors in Stata (for example, string vs number, missing value)*
*Some numbers are written as string, so we replace them*
**This dataset is taken from website kaggle.com and provides clean and error-free data. But, there are missing values on Fiber, Vitamin A, Vitamin C and Calcium, these missing values are auto omitted by STATA. Still we can delete this missing observations to make data cleaner, we can do it since sample size is large enough, but it can cause to some biases.

destring, replace
drop if fiber == "NA"
drop if vit_a == "NA"
drop if vit_c == "NA"
drop if calcium == "NA"


*Task 7*
*Comment: Prepare a sample for analysis by filtering observations and variables and creating transformations of variables. Demonstrate all three.*
**Comment: We drop unnecessary variables, that are not used in the follow-up analysis.  
**Comment: Drop if any variable equal to zero (no representative value in terms of nutrition)


drop total_fat cal_fat sat_fat trans_fat sodium total_carb fiber sugar salad 
drop if calories == 0
drop if cholesterol == 0
drop if protein == 0
drop if vit_a == 0
drop if vit_c == 0
drop if calcium == 0

*Task 8*
*Comment: Save data in Stata.*
save "fastfood_new.csv"


