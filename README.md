# East African Regional GDP & Population Database

**Author:** Alexia E. McCrary  
**Tech Stack:** MySQL, MySQL Workbench, SQL (DDL, DML, Views, Aggregations), Git  

---

## Welcome to the Project!
This repository houses a fully normalized relational database and analytical query suite built to explore economic and demographic trends across Eastern Africa. Developed as part of my Master of Science in Data Science coursework, this project showcases an end-to-end data pipeline—taking raw staging data, cleaning it up, designing a clean 3NF relational schema, and building out analytical reporting tools.

---

## What’s Inside the Repository?
Here is a breakdown of the files and components included in this project:

1. **`Alexia_McCrary_DDL.sql` & `Table_Creation.sql`**  
   * The foundational scripts that set up the schema, configure lookup tables, enforce foreign key constraints, and create master views (`vw_Country_Statistics` and `vw_ALL`) designed to gracefully handle historical data gaps using `LEFT JOIN` operations.
2. **`Alexia_McCrary_DML.sql`**  
   * Handles raw data ingestion via a staging table (`Bulk_GDP`), extracts clean distinct entities (`CONTINENT`, `COUNTRY`, `YEAR`), maps foreign keys, and populates the central fact table (`COUNTRY_STATISTICS`).
3. **`Alexia_McCrary_QUERY.sql`**  
   * A curated suite of five analytical queries complete with comment blocks and humanized insights tracking GDP distributions, peak economic performance years, demographic heavyweights, and regional yearly averages.
4. **`Alexia_McCrary_Physical_Diagram`**  
   * The Entity-Relationship (EER) diagram mapping out table relationships and structural constraints.

---

## Database Architecture & Design
To eliminate redundancy and keep data clean, the database moves from flat-file records into a structured relational format:
* **`Bulk_GDP` (Staging):** The initial raw data ingestion layer.
* **`CONTINENT` (Lookup):** Stores regional classifications.
* **`COUNTRY` (Dimension):** Links individual countries to their respective continent foreign keys.
* **`YEAR` (Dimension):** Tracks temporal boundaries for time-series analysis.
* **`COUNTRY_STATISTICS` (Fact Table):** Ties `Country_ID` and `Year_ID` to core metrics like population and GDP.
* **`vw_ALL` (Master View):** A combined view that joins everything together to make querying straightforward and clean.

---

## Analytical Highlights & Key Insights
* **Query 1 (GDP Leaders):** Highlights total nominal GDP outputs across countries.
* **Query 2 & 3 (Peak Economic Years):** Pinpoints the exact peak economic recording year for each nation using aggregate functions.
* **Query 4 (Population Filtering):** Focuses on larger countries (`Population > 9,000,000`) to see how scale correlates with economic output.
* **Query 5 (Macro-Averages):** Evaluates multi-year trajectories of regional averages while accounting for historical reporting gaps.

---

