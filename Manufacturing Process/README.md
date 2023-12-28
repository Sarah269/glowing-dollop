##  Datacamp Project:  Evaluate Manufacturing Process

<p>Tools:  PostgreSQL</p>

<p>Manufacturing table:  500 rows</p>

</pre>Description:  Using SQL window functions, analyze historical manufacturing data to define the acceptable range for height measurements and identify any points in the process that fall outside of the range.</pre>

Results:  57 items were flagged with Alert set to True because they did not pass tolerance.

![Project Description]()


<p>Strategy:  Create a temporary table to calculate the average and standard deviation for height only using data from the four preceding rows and the current row for each operator.   If there aren't four preceding rows for an entry, average and standard deviation are not calculated.</p>

![Create table for first set of calculations]()









