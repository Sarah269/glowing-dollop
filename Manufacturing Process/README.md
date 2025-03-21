#  Evaluate Manufacturing Process

## Project Description
Using SQL window functions, analyze historical manufacturing data to define the acceptable range for height measurements and identify any points in the process that fall outside of the range.

## Reference
- Datacamp Project:  Evaluate Manufacturing Process
  
## Findings

<img src="https://github.com/Sarah269/glowing-dollop/blob/main/Manufacturing%20Process/Evaluate%20Manufacturing%20Process%20Dashboard.png" width=500/>

- 14% of parts fell outside acceptable control limits
- 63% of operators exhibited above-average fail rates


## Tools
PostgreSQL, Power BI (created measures using DAX)

## Project Instructions

<img src="https://github.com/Sarah269/glowing-dollop/blob/main/Manufacturing%20Process/Evaluate%20Manufacturing%20Process.png" width=400 />


<p>Additional instructions:  Calculate the average and standard deviation for height only using data from the four preceding rows and the current row for each operator.   If there aren't four preceding rows for an entry, average and standard deviation are not calculated. </p>

<img src="https://github.com/Sarah269/glowing-dollop/blob/main/Manufacturing%20Process/Evaluate%20Manufacturing%20Process%20-%20CTE1.png" width=400 />

<p> Using the data element from the temporary table, calculate the upper control limit (ucl) and the lower control limit (lcl).  Complete_window indicates whether the entry has four preceding rows.  True:  complete window (has 4 preceding rows).  False:  incomplete window (less than 4 preceding rows).  Drop rows flagged as having an incomplete window.</p>


<img src="https://github.com/Sarah269/glowing-dollop/blob/main/Manufacturing%20Process/Evaluate%20Manufacturing%20Process%20-%20Main%20Query.png" width=400 />


<p>Alert column values: True - height was not within tolerance;  False - height was within tolerance.  Tolerance is between lower control limit and upper control limit. 
 57 items were not within tolerance.</p>

<img src="https://github.com/Sarah269/glowing-dollop/blob/main/Manufacturing%20Process/Evalulate%20Manufacturing%20Process%20-%20Results.png" width=400 />




