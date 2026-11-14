# Project README: Relational Database & Analytical SQL Solution
  
**Project Title:** East African Regional GDP & Population Database  
**Primary Tech Stack:** MySQL, MySQL Workbench, SQL (DDL, DML, Views, Aggregations), Python Data Stack / Git  

---

## Executive Overview
This repository contains a fully normalized relational database and analytical query suite designed to process, model, and evaluate regional economic and demographic trends across Eastern Africa. Built as part of a Master of Science in Data Science curriculum, the project demonstrates end-to-end data pipeline capabilities—transitioning raw staging data through a 3NF logical design to a production-ready MySQL implementation complete with optimized views and humanized analytical insights.

---

## Key Repository Deliverables
The repository is structured into distinct modular components ready for immediate deployment, review, or integration:

1. **`DDL.sql`**  
   * Contains schema definition statements, lookup table configurations, foreign key constraint architectures, and master view definitions (`vw_Country_Statistics` and `vw_ALL`) utilizing `LEFT JOIN` operations to handle historical data gaps and `NULL` values cleanly.
2. **`DML.sql`**  
   * Handles raw data staging (`Bulk_GDP`), iterative data cleansing, distinct entity extraction (`CONTINENT`, `COUNTRY`, `YEAR`), primary-to-foreign key mappings, and fact table population (`COUNTRY_STATISTICS`).
3. **`QUERY.sql`**  
   * Houses five robust analytical queries accompanied by structured `/* */` comment blocks and humanized key insights addressing GDP distributions, peak economic years, population heavyweights, and multi-year regional averages.
4. **`Physical_Diagram`**  
   * The Entity-Relationship Diagram (EER) modeling the primary-to-foreign key relationships and structural constraints.

---

## Database Architecture & Schema Design
The project normalizes flat-file metrics into a structured relational format to eliminate data redundancy and preserve analytical integrity:
* **`Bulk_GDP` (Staging):** Ingestion layer for raw regional indicators.
* **`CONTINENT` (Lookup):** Stores regional classifications.
* **`COUNTRY` (Dimension):** Links individual countries to their respective continent foreign keys.
* **`YEAR` (Dimension):** Maintains temporal boundaries for time-series evaluations.
* **`COUNTRY_STATISTICS` (Fact Table):** Central repository mapping `Country_ID` and `Year_ID` to quantitative metrics (`Population`, `GDP_USD`).
* **`vw_ALL` (Master View):** A unified abstraction layer combining all normalized tables to streamline downstream querying and reporting.

---

## Analytical Queries & Key Insights Highlighted
* **Query 1 (GDP Leaders):** Isolates economic powerhouses by ranking total nominal GDP outputs.
* **Query 2 & 3 (Peak Performance & Temporal Tracking):** Pinpoints peak economic recording years per nation using aggregate functions (`MAX`, `GROUP BY`).
* **Query 4 (Demographic Threshold Filtering):** Filters records by demographic heavyweights (`Population > 9,000,000`) to evaluate scale-to-GDP correlations.
* **Query 5 (Macro-Averages):** Tracks multi-year trajectories of regional averages while accounting for historical null reporting intervals.

---

## Getting Started & Local Deployment
To deploy and query this database locally using MySQL Workbench:
1. Execute the setup script to create and select your custom schema:
   ```sql
   CREATE DATABASE IF NOT EXISTS aem432_custom;
   USE aem432_custom;
