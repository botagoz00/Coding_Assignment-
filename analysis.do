*This .do file shows analysis and executes the regression model*

*Task 9*
*Comment: Run ordinary least squares regression in Stata.* 
*We want to see how calories of fast food chains are determined by the level of cholesterol, protein, vitamin a, vitamin c, and calcium of each meal in the data*
reg calories cholesterol protein vit_a vit_c calcium  

*Tasks 10 and 11*
*Comment: Create a graph (of any type) in Stata.*
*Comment: Save graphs as files*
**The first graph shows the calories distribution of fast food 
**The second graph shows the range of of the ticket fare for each passenger class. 
histogram calories
graph export "/Users/Amangeldiyeva_Botago/Desktop/Assignment/graphs/calories_distribution.png"
graph twoway scatter calories cholesterol
graph export "/Users/Amangeldiyeva_Botago/Desktop/Assignment/graphs/calories&cholesterol.png"

