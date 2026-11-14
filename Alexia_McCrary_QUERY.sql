/*Query 1: Average GDP by Country
Key insight: aggregates the non null avg GDP values in countries throughout different years 
*/
SELECT Country, AVG(GDP_USD)
FROM vw_ALL
GROUP BY Country;

/* Query 2: Top 3 Highest GDP Countries in the Region
Key insight: Highlights the countries with better ecenomics. It seems Uganda had the better ecenomics than the other countries. 
*/
SELECT Country, Year, GDP_USD, Population
FROM vw_ALL
ORDER BY GDP_USD DESC
LIMIT 3;


-- Query 3: Highest GDP Recording Year for Each Country
-- Key insight: Pinpoints the exact peak economic year for every country, 

SELECT Country, Year, MAX(GDP_USD) AS Peak_GDP
FROM vw_ALL
GROUP BY Country, Year
ORDER BY Peak_GDP DESC;

/* Query 4: Countries with Population Above 9 Million
Key insight: Filters out smaller nations to focus strictly on larger countries and their corresponding GDPs. Uganda has the largest population which makes sense to have a better GDP throught many years. 
*/
SELECT Country, Year, Population, GDP_USD
FROM vw_ALL
WHERE Population > 9000000
ORDER BY Population DESC;

/* Query 5: Continent Average GDP and Population by Year
Key insight: Gives us a yearly check of averages, letting us see how population and economic output trend over time. There are some null values that would have not been calculated in because GDPs were not taken in some countries in some years.
*/
SELECT Year, AVG(Population) AS Avg_Population, AVG(GDP_USD) AS Avg_GDP
FROM vw_ALL
GROUP BY Year
ORDER BY Year ASC;