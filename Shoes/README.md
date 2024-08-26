# Shoes

## Project
This project analyzes data to gain insights on returns and inventory.

<p float="left">
<img src="https://github.com/Sarah269/glowing-dollop/blob/main/Shoes/Return%20Perc%20By%20Product.png"   width="49%"  />
<img src="https://github.com/Sarah269/glowing-dollop/blob/main/Shoes/Inventory%20to%20Sales%20Ratio.png" width="49%" />
</p>

## Tools
SAS Studio release 3.8.1

## Data
*  sashelp.shoes dataset

## Proc
*  contents, print, means, sgplot, univariate, corr, freq, format, sql, datasets, boxplot

## Macro
*  hbarplot - horizontal bar plot
<p float="left">
<img src="https://github.com/Sarah269/glowing-dollop/blob/main/Shoes/Macro.png" width="49%" height="325" />
<img src="https://github.com/Sarah269/glowing-dollop/blob/main/Shoes/Macro%20Plot.png" width="49%" />
</p>

## Tasks Performed
*  Data Preparation
    -  Added new features
        - percent returned (pct_returned): returns/sales
        - net sales (net_sales): sales - returns
        - inventory to sales ratio (inventory_to_sales): inventory / sales
  
*  Exploratory data analysis
<p float="left">
<img src="https://github.com/Sarah269/glowing-dollop/blob/main/Shoes/Histogram%20NetSales.png" width="49%" />
<img src="https://github.com/Sarah269/glowing-dollop/blob/main/Shoes/Box%20Plot%20Sales.png" width="49%" />
</p>
  
*  Data visualization
<p float="left">
  <img src="https://github.com/Sarah269/glowing-dollop/blob/main/Shoes/Sales%20by%20Product.png" width="49%" />
  <img src="https://github.com/Sarah269/glowing-dollop/blob/main/Shoes/Sales%20by%20Region.png"  width="49%" />
</p>

## [SAS Code](https://github.com/Sarah269/glowing-dollop/blob/main/Shoes/Shoes.sas)
*  Click the link above to view the SAS code

## [SAS Results](https://github.com/Sarah269/glowing-dollop/blob/main/Shoes/shoes.pdf)
*  Click the link above to view SAS output

## Findings
-  The region with the sales is the Middle East ($5,631,779).
-  The product with the highest sales is Men's casual ($7,933,707).
-  The subsidiary with the highest sales is Vancouver ($3,227,768).
-  South America is the region with the highest sales return percentage (4.22%).
-  Sandals is the product with the highest sales return percentage (4.40%).
-  Average sales: $85,700
-  Average returns: $2,967
-  Average net sales: $82,732
-  Average return percentage: 3.9%
-  Average inventory_to_sales ratio: 4.3

## Further Investigation Needed: Returns and Inventory

<b></b>Inventory<b>
<p>
Examine the reasons behind the unusually high inventory-to-sales ratios observed in certain subsidiaries. Determine what the target inventory-to-sales ratio should be and assess how current ratios compare to this target.
</p>

<img src="https://github.com/Sarah269/glowing-dollop/blob/main/Shoes/Highest%20Inventory%20to%20Sales%20Ratio.png" height="400" />

<b>Returns</b>
<p>
Investigate the high return rates for products across many subsidiaries. Specifically, analyze the products with the highest return rates in each region, noting that footwear is the top-returned product in seven out of ten regions. Assess whether there are any quality issues contributing to these high return rates and define an acceptable return percentage for each product category.
</p>

<img src="https://github.com/Sarah269/glowing-dollop/blob/main/Shoes/Highest%20Return.png" height="400" />

