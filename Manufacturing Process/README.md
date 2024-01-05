##  Datacamp Project:  Evaluate Manufacturing Process

<p>Tools:  PostgreSQL</p>

<p>Manufacturing table:  500 rows</p>

</pre>Description:  Using SQL window functions, analyze historical manufacturing data to define the acceptable range for height measurements and identify any points in the process that fall outside of the range.</pre>

Findings:  57 items were flagged as falling outside of the acceptance range for height measurements. 

<p>Project Instructions</p>

![Project Description](https://github.com/Sarah269/glowing-dollop/blob/main/Manufacturing%20Process/Evaluate%20Manufacturing%20Process.png)


<p>Additional instructions:  Calculate the average and standard deviation for height only using data from the four preceding rows and the current row for each operator.   If there aren't four preceding rows for an entry, average and standard deviation are not calculated. </p>

![Create table for first set of calculations](https://github.com/Sarah269/glowing-dollop/blob/main/Manufacturing%20Process/Evaluate%20Manufacturing%20Process%20-%20CTE1.png)




<p> Using the data element from the temporary table, calculate the upper control limit and the lower control limit.  Complete_window indicates whether the entry has four preceding rows.  True:  complete window (has 4 preceding rows).  False:  incomplete window (less than 4 preceding rows).  Drop rows flagged as having an incomplete window.</p>


![Calculate control limits](https://github.com/Sarah269/glowing-dollop/blob/main/Manufacturing%20Process/Evaluate%20Manufacturing%20Process%20-%20Main%20Query.png)


<p>Alert column values: True - height was not within tolerance;  False - height was within tolerance.  Tolerance is between lcl and ucl. 
 57 items were not within tolerance.</p>

![Results](https://github.com/Sarah269/glowing-dollop/blob/main/Manufacturing%20Process/Evalulate%20Manufacturing%20Process%20-%20Results.png)




