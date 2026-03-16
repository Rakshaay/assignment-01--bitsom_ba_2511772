### Anomaly Analysis

The dataset `orders_flat.csv` stores information related to orders, customers, products, and sales representatives in a single denormalized table. Because multiple entities are combined within one structure, the dataset is prone to insert, update, and delete anomalies.

### Insert Anomaly

The table structure requires order-related fields such as `order_id` and `order_date` for every record. As a result, product information stored in the columns `product_id`, `product_name`, `category`, and `unit_price` cannot be inserted independently unless an order exists. Similarly, sales representative information contained in `sales_rep_id`, `sales_rep_name`, `sales_rep_email`, and `office_address` cannot be stored without associating it with an order record. This dependency prevents the independent insertion of new products or sales representatives.

### Update Anomaly

Customer and sales representative information appears repeatedly across multiple rows in the dataset. The columns `customer_id`, `customer_name`, `customer_email`, and `customer_city` are duplicated whenever a customer places multiple orders. Similarly, `sales_rep_id`, `sales_rep_name`, `sales_rep_email`, and `office_address` repeat for each order handled by the same sales representative. If any of these details change, the update must be performed in every row containing that information. If some rows are not updated, the dataset will contain inconsistent values for the same entity.

### Delete Anomaly

Product and sales representative information is stored only within order records. If a row containing a particular `order_id` is deleted and that row represents the only occurrence of a specific `product_id`, all associated product information stored in `product_name`, `category`, and `unit_price` will also be removed. Similarly, deleting rows that contain the only occurrence of a `sales_rep_id` would remove the associated `sales_rep_name`, `sales_rep_email`, and `office_address`. This results in unintended loss of important data unrelated to the deleted order.

