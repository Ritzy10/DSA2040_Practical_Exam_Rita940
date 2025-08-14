## Why Star Schema Was Chosen Over Snowflake

The star schema was chosen for this data warehouse because it simplifies query design and improves performance. By keeping dimension tables denormalized and directly connected to the central fact table, analytical queries such as total sales by product category or customer segmentation can be executed more efficiently. In contrast, a snowflake schema requires additional joins due to normalized dimensions, which can slow down query performance and make reporting more complex.
