--Rollup
-- Task: Create a rollup query using the columns year, country, and totalsales

select year, country, amount as Total_Sales
from "FactSales"
left join "DimCountry"
on "FactSales".countryid = "DimCountry".countryid
left join "DimDate"
on "FactSales".dateid = "DimDate".dateid
group by rollup(year, country, amount)
order by year, country, amount;
