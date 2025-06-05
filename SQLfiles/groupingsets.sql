-- Group set
-- Task: Create a grouping sets query using the columns country, category, totalsales
select country, category, amount as totalsales
from "FactSales"
left join "DimCountry"
on "FactSales".countryid = "DimCountry".countryid
left join "DimCategory"
on "FactSales".categoryid = "DimCategory".categoryid
group by grouping sets(country, category, amount)
