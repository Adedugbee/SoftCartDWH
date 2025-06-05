#Schema Design and Relationships
##Data Warehouse Schema Design Summary
The data warehouse schema proposed for this project is a **star schema architecture**. This is much more ideal for analytical querying and reporting. At the center of the design is the FactSales table, which captures measurable sales transactions, while surrounding dimension tables provide descriptive context for analysis. This would be lunch on the Amazon Web Services cloud platform. Aurora and RDS are the relational databases employed to host the PostgreSQL database engine. This was chosen to optimize performance and scalability. It is also cost-effective since it utilizes the pay-as-you-go method.

**Fact Table**: FactSales
The FactSales table serves as the central fact table, where each record represents a sales transaction. It includes:
*	orderid: Primary key uniquely identifying each sales record.
*	dateid: Foreign key linking to the DimDate table.
*	countryid: Foreign key linking to the DimCountry table.
*	categoryid: Foreign key linking to the DimCategory table.
*	amount: The quantitative measure of the sale.
This table is optimized for aggregations and is designed to be queried with the dimension tables for slicing and dicing the data by time, geography, or product category.

###**Dimension Tables and Relationships**
1.	**DimDate**
	Provides a rich breakdown of time-related attributes: Year, Quarter, Month, Weekday, and their names.
	The dateid serves as the primary key and connects to FactSales.dateid.
	Enables time-based analysis, such as year-over-year comparisons, monthly trends, and seasonal patterns.
2.	**DimCategory**
	Contains product or sales categories.
	The categoryid is the primary key and maps to FactSales.categoryid.
	Supports category-level aggregations like total sales by product category.
3.	**DimCountry**
	Lists the countries where sales transactions occurred.
	The countryid is the primary key and relates to FactSales.countryid.
	Facilitates geographic segmentation and international sales reporting.

###Relationships
•	The FactSales table maintains foreign key relationships with each dimension:
o	FactSales.dateid → DimDate.dateid
o	FactSales.categoryid → DimCategory.categoryid
o	FactSales.countryid → DimCountry.countryid
These relationships ensure referential integrity and enable efficient joins during analysis. This structure supports powerful OLAP-style queries for dashboards, KPIs, and executive reports.
Summarily, this star schema design provides a clean, intuitive, and performant foundation for business intelligence and reporting. The separation of facts and dimensions allows for scalable, flexible analysis across key business domains—time, location, and product category—while maintaining consistency and simplicity in data management.
