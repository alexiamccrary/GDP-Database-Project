USE aem432_custom;
SELECT * FROM Bulk_GDP;
/* smaller tables 
continent
country
year 
*/
INSERT INTO CONTINENT (Continent_Name)
SELECT DISTINCT Continent FROM Bulk_GDP;


INSERT INTO COUNTRY (Country_Name, Continent_ID)
SELECT DISTINCT b.Country, c.Continent_ID 
FROM Bulk_GDP b 
JOIN CONTINENT c ON b.Continent = c.Continent_Name;
SELECT * From CONTINENT;

ALTER TABLE Bulk_GDP
ADD Continent_ID int;

UPDATE Bulk_GDP b, CONTINENT c
SET b.Continent_ID = c.Continent_ID
WHERE b.Continent = c.Continent_Name;
SELECT * FROM CONTINENT;
SELECT * FROM Bulk_GDP;

INSERT INTO YEAR (Year_Value)
SELECT DISTINCT `Year` FROM Bulk_GDP;

ALTER TABLE Bulk_GDP 
ADD Year_ID int;
UPDATE Bulk_GDP b, YEAR y 
SET b.Year_ID = y.Year_ID 
WHERE b.`Year` = y.Year_Value;
SELECT * FROM Bulk_GDP;
ALTER TABLE Bulk_GDP 
ADD Country_ID int;
UPDATE Bulk_GDP b, COUNTRY co 
SET b.Country_ID = co.Country_ID 
WHERE b.Country = co.Country_Name;

SElECT * FROM Bulk_GDP;
SELECT * FROM Bulk_GDP;
SELECT COUNT(*) FROM COUNTRY_STATISTICS;
DESC COUNTRY_STATISTICS;
Desc Bulk_GDP;


INSERT INTO COUNTRY_STATISTICS (Country_ID, Year_ID, Population, GDP_USD)
SELECT co.Country_ID, y.Year_ID, b.Population, b.GDP_USD
FROM Bulk_GDP b
JOIN COUNTRY co ON b.Country = co.Country_Name
JOIN YEAR y ON b.`Year` = y.Year_Value;




