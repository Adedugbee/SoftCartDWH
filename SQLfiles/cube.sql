--Cube
-- Task: Create a cube query using the columns year, country, and average sales

select year, country, avg(amount) as Avg_Sales
from "FactSales"
left join "DimCountry"
on "FactSales".countryid = "DimCountry".countryid
left join "DimDate"
on "FactSales".dateid = "DimDate".dateid
group by cube(year, country, amount)
order by year;
