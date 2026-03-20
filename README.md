
##  Overview

This Assignment covers fundamental and advanced concepts in data engineering, including relational databases, NoSQL systems, data warehousing, vector databases, data lakes, and large-scale system design.

The assignment is divided into six parts, each focusing on a different data architecture paradigm and real-world application.

---

##  Part 1 — Relational Databases

* Performed anomaly analysis (Insert, Update, Delete anomalies) on a denormalized dataset
* Designed a fully normalized schema up to Third Normal Form (3NF)
* Implemented SQL queries for business insights such as:

  * Customer order value analysis
  * Product performance
  * Sales representative metrics

---

## Part 2 — NoSQL Databases

* Designed flexible MongoDB documents for different product categories:

  * Electronics
  * Clothing
  * Groceries
* Implemented MongoDB operations including:

  * `insertMany()`
  * `find()` queries with filters
  * `updateOne()`
  * Index creation for performance optimization
* Compared relational vs NoSQL databases using ACID, BASE, and CAP theorem

---

##  Part 3 — Data Warehousing

* Designed a Star Schema with:

  * Fact table: `fact_sales`
  * Dimension tables: `dim_date`, `dim_store`, `dim_product`
* Performed ETL transformations to clean:

  * Inconsistent date formats
  * NULL values
  * Category standardization
* Wrote analytical queries for:

  * Revenue trends
  * Store performance
  * Monthly sales analysis

---

##  Part 4 — Vector Databases

* Generated sentence embeddings using `sentence-transformers`
* Created a cosine similarity matrix to analyze semantic similarity
* Built a simple semantic search system:

  * Given a query, retrieves the most similar sentences
* Demonstrated how embeddings capture meaning beyond keywords

---

##  Part 5 — Data Lakes & DuckDB

* Performed cross-format queries directly on:

  * CSV (`customers.csv`)
  * JSON (`orders.json`)
  * Parquet (`products.parquet`)
* Used DuckDB for querying without pre-loading data
* Designed a Data Lakehouse architecture for scalable analytics

---

##  Part 6 — Capstone Architecture Design

* Designed an AI-powered hospital data system supporting:

  * Patient readmission prediction
  * Natural language queries for doctors
  * Management reporting dashboards
  * Real-time ICU monitoring
* Created a system architecture diagram showing:

  * Data sources
  * Storage layers (OLTP, Data Lake, Data Warehouse)
  * Data flow and processing layers
* Provided design justification covering:

  * Storage choices
  * OLTP vs OLAP boundary
  * Trade-offs and mitigation strategies

---

## Project Structure

```
part1-rdbms/
  normalization.md
  schema_design.sql
  queries.sql

part2-nosql/
  sample_documents.json
  mongo_queries.js
  rdbms_vs_nosql.md

part3-datawarehouse/
  star_schema.sql
  dw_queries.sql
  etl_notes.md

part4-vector-db/
  embeddings_demo.ipynb
  vector_db_reflection.md

part5-datalake/
  duckdb_queries.sql
  architecture_choice.md

part6-capstone/
  architecture_diagram.png
  design_justification.md
```

---

##  Technologies Used

* SQL (PostgreSQL-style)
* DuckDB
* MongoDB
* Python (Google Colab)
* Sentence Transformers (Embeddings)
* Data Warehousing Concepts
* Data Lake / Lakehouse Architecture

---

##  Key Learnings

* Importance of normalization in reducing redundancy and anomalies
* Trade-offs between relational and NoSQL databases
* Designing scalable data pipelines and architectures
* Using embeddings for semantic search
* Querying heterogeneous data formats efficiently
* Building end-to-end data systems for real-world applications

---



