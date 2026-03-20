## Storage Systems

The proposed architecture uses a combination of OLTP databases, a Data Lake, and a Data Warehouse to address the hospital’s diverse data requirements.

For transactional operations such as storing patient records, treatment history, and billing information, an OLTP database like PostgreSQL is used. This system ensures fast, reliable updates and supports real-time operations critical for hospital workflows.

A Data Lake is used to store raw and unstructured data such as ICU device streams, patient reviews, and medical images. These data types do not fit well into structured schemas, and the data lake allows scalable and cost-effective storage. It also preserves raw data for future use in advanced analytics and machine learning.

A Data Warehouse is used for structured reporting and analytics. Cleaned and transformed data from both the OLTP system and the Data Lake is loaded into the warehouse to generate insights such as bed occupancy rates and department-wise costs. This enables fast and efficient querying for management dashboards.

For real-time ICU monitoring, a streaming system such as Kafka is used to ingest continuous vital signals. This data is stored in the Data Lake and simultaneously processed for real-time alerting systems.

## OLTP vs OLAP Boundary

The OLTP system includes operational databases where real-time transactions occur, such as patient admissions, treatments, and billing updates. These systems are optimized for high-frequency inserts and updates with strong consistency.

The OLAP system begins once data is extracted from the OLTP database and moved into analytical storage systems like the Data Warehouse and Data Lake. In this layer, data is cleaned, transformed, and aggregated for reporting, analytics, and machine learning purposes.

The boundary between OLTP and OLAP lies at the data ingestion and transformation layer. This is where transactional data transitions into analytical workflows, enabling both operational efficiency and strategic insights.

## Trade-offs

One significant trade-off in this architecture is increased system complexity due to the use of multiple storage systems and data pipelines. Managing data consistency, synchronization, and pipeline reliability across OLTP systems, Data Lakes, and Data Warehouses can be challenging.

To mitigate this, the system can use orchestration tools such as Apache Airflow to manage data workflows and ensure reliability. Additionally, implementing data validation checks and schema enforcement helps maintain consistency across systems. Monitoring tools can also be used to detect failures and ensure smooth operation.

Despite this complexity, the architecture provides the scalability, flexibility, and performance required to handle real-time data, advanced analytics, and AI workloads in a hospital environment.

