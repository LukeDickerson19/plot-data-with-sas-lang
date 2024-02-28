

/* price data for crude oil futures */
data CrudeOilPrices;
    input Date mmddyy10. Price;
    format Date mmddyy10.;
    datalines;
11/21/2023 75.64
11/24/2023 78.84
11/28/2023 68.84
12/1/2023 68.02
12/5/2023 68.66
12/8/2023 71.83
12/12/2023 72.00
12/15/2023 69.92
12/19/2023 69.41
;

/* line chart */
proc sgplot data=CrudeOilPrices;
    series x=Date y=Price / markers;
    title 'Crude Oil WTI Jan 22 (CLF22) Price Data';
    xaxis label='Date';
    yaxis label='Price';
run;


