Begin;

DROP Materialized View IF EXISTS public.Total_Sales_Per_Country CASCADE;

-- Task: Create the materialized view named total_sales_per_country that has the columns country and total_sales
Create Materialized View Total_Sales_Per_Country(country,TotalSales) As
(
Select 
	country, amount
From 
	"FactSales"
Left Join 
	"DimCountry"
on "FactSales".countryid = "DimCountry".countryid
Group By 
	country, amount
);
-- Refresh the materialized view to update the data
Refresh Materialized View Total_Sales_Per_Country;

-- Show 10 rows from the materialized view
Select * from Total_Sales_Per_Country
Limit 10;

Commit;
