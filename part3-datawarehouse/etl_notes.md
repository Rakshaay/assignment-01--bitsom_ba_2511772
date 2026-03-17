## ETL Decisions

### Decision 1 — Standardizing Date Formats

Problem: The raw dataset contained inconsistent date formats such as DD-MM-YYYY and MM/DD/YYYY, making it difficult to perform time-based analysis.

Resolution: All dates were converted into a standard ISO format (YYYY-MM-DD) before loading into the `dim_date` table. This ensures consistency and enables accurate grouping by month and year.

---

### Decision 2 — Handling NULL Values

Problem: Some records contained NULL values in fields such as product category and store information, which could lead to incomplete analysis.

Resolution: Missing values were either filled using logical defaults (e.g., "Unknown") or excluded during transformation to ensure only valid and meaningful records were loaded into the warehouse.

---

### Decision 3 — Standardizing Category Names

Problem: Product categories had inconsistent casing such as "electronics", "Electronics", and "ELECTRONICS".

Resolution: All category values were standardized to a consistent format (Title Case) before inserting into the `dim_product` table. This prevents duplication and ensures accurate aggregation in analytical queries.

