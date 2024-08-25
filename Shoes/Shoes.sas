**************************************************;
*  Data Analysis                                 *;
*  Dataset: sashelp.shoes                        *;
*  SAS Version: SAS Studio release 3.8.1         *;
**************************************************;


ods noproctitle;
options mprint;


Data shoes;
set sashelp.shoes;
pct_returned = returns/sales;
net_sales = sales - returns;
inventory_to_sales = inventory/net_sales;
format inventory_to_sales 5.2;
format net_sales dollar12.;
format pct_returned percentn6.2;
run;


title "File Information";
proc contents data=shoes order=varnum;
run;

/* Look at a snapshot of the data */
proc print data=shoes (obs=50);
run;
title;

/* check for duplicates */
title "Check for Duplicates - total rows";
proc sql;
select count(*) as num_rows from shoes;
quit;

title "Check for Duplicates: if distinct_rows = num_rows.  No duplicates";
proc sql;
select count(*) as distinct_rows 
from (
select distinct * from shoes) ;
quit;
title;

/* Categorical */
  /* format to be used with proc freq for missing values */
title "Categorical features";
proc format;
value $missfmt ' '='Missing' other='Not Missing';
value  missfmt  . ='Missing' other='Not Missing';
run;
  
proc freq data=shoes; 
format _CHAR_ $missfmt.; /* apply format for the duration of this PROC */
tables _CHAR_ /  missing missprint nocum nopercent; 
run;

proc freq data=WORK.SHOES;
	tables Region Product Subsidiary / plots=(freqplot);
run;
title;


/* Numeric */
title "Numeric features";
proc means data=shoes  n nmiss min mean median max;
var sales returns net_sales inventory stores pct_returned inventory_to_sales ;
run;
title;

proc freq data=shoes;
tables region * product;
run;

/* Histograms */
title 'Histograms';
proc univariate data=shoes noprint;
histogram sales returns net_sales inventory stores pct_returned inventory_to_sales / normal;
run;
title;

/* Summary */
title "Sales, Returns, & Inventory by Region";
proc sql;

select region, subsidiary, sum(stores) as num_stores, 
sum(sales) as tot_sales format dollar12., 
sum(returns) as tot_returns format dollar12.,
sum(net_sales) as tot_netsales format dollar12.,
sum(inventory) as tot_inventory format dollar12.
from shoes
group by region, subsidiary;
quit;
title;

/* Box Plots */

title "Box Plot";
proc boxplot data=shoes;
plot (sales returns net_sales inventory inventory_to_sales pct_returned) * region/boxstyle=schematic;
inset mean min max /position=nw;
run;
title;

ods graphics / reset width=8in height=6in imagemap;
title "Bar Plots";
%Macro hbarplot(dset, feat, measure);
proc sgplot data=&dset;
hbar &feat / response= &measure datalabel categoryorder=respdesc DATALABELFITPOLICY=NONE;
run;
%Mend;

%hbarplot(shoes,region,sales);
%hbarplot(shoes,product, sales);
%hbarplot(shoes,subsidiary, sales);
title;
ods graphics /reset;

/* Correlation */
ods graphics / reset width=6.4in height=4.8in imagemap;
title 'Correlation';
proc corr data=shoes plots=scatter;
var inventory sales returns net_sales pct_returned inventory_to_sales;
run;
title;

ods graphics /reset;



title 'Sales by Product';
proc sgplot data=shoes;
  styleattrs datacolors=(olive gold);
  vbar product / response=sales 
           dataskin=pressed baselineattrs=(thickness=0) datalabel categoryorder=respdesc;
  vbar product / response=returns
          dataskin=pressed baselineattrs=(thickness=0) datalabel
         barwidth=0.5;
  xaxis display=(nolabel noline noticks);
  yaxis display=(noline) grid;
run;
title;

title 'Sales by Region';
proc sgplot data=shoes;
  styleattrs datacolors=(lightsteelblue greenyellow);
  vbar region / response=sales 
           dataskin=pressed baselineattrs=(thickness=0) datalabel categoryorder=respdesc;
  vbar region / response=returns
          dataskin=pressed baselineattrs=(thickness=0)
         barwidth=0.5 datalabel;
  xaxis display=(nolabel noline noticks);
  yaxis display=(noline) grid;
run;
title;

/* Products as a Percentage of Sales by Region */
ods graphics /reset width=8in height=9in imagemap;
title 'How much does each product contribute to sales?';
proc sgplot data=shoes pctlevel=group;
  vbar region / response =sales group=product groupdisplay=stack stat=pct seglabel dataskin=matte;
  xaxis discreteorder=data;
yaxis grid values=(0 to 1 by 0.1) label="Percentage of Sales";
run;
title;

ods graphics /reset;

/* create a summary table for products */
proc sql;
create table product_summary as
select product, 
sum(sales) as tot_sales, 
sum(returns) as tot_returns,
sum(returns)/sum(sales) as pct_returned
from shoes
group by product;
quit;


title "What percentage of sales are returned for each product?";
proc sgplot data=product_summary;
format pct_returned percentn5.2;
    vbar product / response=pct_returned fillattrs =(color=gold) datalabel
    categoryorder=respdesc dataskin=gloss;
run;
title;

proc datasets library=WORK noprint;
delete product_summary;
run;

/* Create a summary table for region */
proc sql;
create table region_summary as
select region, 
sum(sales) as tot_sales, 
sum(returns) as tot_returns,
sum(returns)/sum(sales) as pct_returned
from shoes
group by region;
quit;

/* Returns as a Percent of Sales by Region */
title "What percentage of sales are returned in each region?";
proc sgplot data=region_summary;
    format pct_returned percentn5.2;
    vbar region / response=pct_returned stat=mean fillattrs =(color=green) datalabel
    categoryorder=respdesc dataskin=gloss;
run; 
 
proc datasets library=WORK noprint;
delete region_summary;
run;

/* Create a table for basic stats for returns by region */
proc sql;
create table high_returns as 
select region, min(pct_returned) as minret format=percentn6.2, 
max(pct_returned) as maxret format=percentn6.2, 
avg(pct_returned) as avgret format=percentn6.2
from shoes
group by region;
quit;

title "What are the min, avg, and max return percentages by Region?";
proc sgplot data=high_returns;
  styleattrs datacolors=(gray rose teal);
  
  label maxret = "Max";
  label minret = "Min";
  label avgret = "Avg";
  vbar region / response=maxret 
           dataskin=pressed baselineattrs=(thickness=0) datalabel categoryorder=respdesc;
  vbar region / response=avgret
          dataskin=pressed baselineattrs=(thickness=0)
         barwidth=0.5 datalabel;
   vbar region / response=minret
          dataskin=pressed baselineattrs=(thickness=0)
         barwidth=0.5 datalabel;      
  xaxis display=(nolabel noline noticks);
  yaxis display=(noline) grid;
  yaxis label = "Percentage";
run;
title;

title "Which product has the highest return percentage in each region?";
proc sql;
select region, product, subsidiary, sales, pct_returned as highest_return_pct format=percentn6.2
from shoes a
where pct_returned in

(
select  
max(pct_returned) 
from shoes b
where b.region = a.region

)
order by pct_returned desc
;
quit;

proc datasets library=WORK noprint;
delete higher_returns;
run;


/* Scatter Plots */

ods graphics / reset width=6.4in height=4.8in imagemap;

title "Return Percentage by Product";
proc sgplot data=WORK.SHOES;
	scatter x=Product y=pct_returned / group=region 
		markerattrs=(symbol=circlefilled);
	xaxis grid;
	yaxis grid;
run;
title;

title "Inventory to Sales Ratio by Product";

proc sgplot data=WORK.SHOES;
	scatter x=Product y=inventory_to_sales / group=region
		markerattrs=(symbol=circlefilled);
	xaxis grid;
	yaxis grid;
run;
title;

ods graphics / reset;


/* High Inventory to Sales Ratio */

title "Where are the highest inventory to sales ratios?";
proc sql;
select * 
from shoes
where inventory_to_sales > 20.0 
order by inventory_to_sales desc;
quit;

