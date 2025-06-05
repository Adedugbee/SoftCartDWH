To Alter table and add foreign keys
Begin;

--- Add foreign key for DateID referencing DimDate
ALTER TABLE public."FactSales" 
ADD CONSTRAINT "fk_factsales_date"
FOREIGN KEY (dateid)
REFERENCES "DimDate"(dateid);

-- Add foreign key for CountryID referencing DimCountry
ALTER TABLE public."FactSales" 
ADD CONSTRAINT "fk_factsales_country"
FOREIGN KEY (countryid)
REFERENCES "DimCountry"(countryid);

-- Add foreign key for CategoryID referencing DimCategory
ALTER TABLE public."FactSales" 
ADD CONSTRAINT "fk_factsales_category"
FOREIGN KEY (categoryid)
REFERENCES "DimCategory"(categoryid);

End;
