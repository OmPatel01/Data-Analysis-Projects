# Comprehensive BikeStore Analysis: Leveraging SQL for Business Insights

 <h3>Overview</h3>

This SQL data analysis project is based on the BikeStore database, encompassing various aspects of the business, such as production, sales, and customer interactions. The project aims to showcase my SQL skills, analytical thinking, and the ability to derive meaningful insights from the data.

 <h3>Project Structure</h3>

- **Database Schema:**
-The BikeStore database is organized into several tables, each serving a specific purpose within the business context. Here is an overview of the key tables and their respective columns:

1. **production_brands**
   - Columns: "brand_id", "brand_name"

2. **production_categories**
   - Columns: "category_id", "category_name"

3. **production_products**
   - Columns: "product_id", "brand_id", "category_id", "model_year", "list_price", "product_name"

4. **production_stocks**
   - Columns: "store_id", "product_id", "quantity"

5. **sales_customers**
   - Columns: "customer_id", "first_name", "last_name", "phone", "email", "street", "city", "state", "zip_code"

6. **sales_order_items**
   - Columns: "order_id", "item_id", "product_id", "quantity", "list_price", "discount"

7. **sales_orders**
   - Columns: "order_id", "customer_id", "order_status", "order_date", "required_date", "shipped_date", "store_id", "staff_id"

8. **sales_staffs**
   - Columns: "staff_id", "active", "store_id", "manager_id", "phone", "first_name", "last_name", "email"

9. **sales_stores**
   - Columns: "store_id", "store_name", "phone", "email", "street", "city", "state", "zip_code"

- **Queries and Analysis:**
  - SQL queries are employed to extract meaningful insights from the BikeStore dataset. The queries cover a wide range of topics, including sales performance, product analysis, customer behavior, and more.

 <h3>Key Features</h3>

- **SQL Concepts Demonstrated:**
  - The project demonstrates proficiency in various SQL concepts, including SELECT, JOIN, GROUP BY, ORDER BY, aggregate functions, subqueries, and more.

- **Analytical Thinking:**
  - Through the exploration of the BikeStore dataset, the project showcases the ability to think analytically and derive valuable business insights.

 - **Usage:**
    - Before running the SQL queries, ensure you have a PostgreSQL database set up with the BikeStore schema.
    - After creating the schema import all the csv files, I have provided the SQL file for creating the structure of all the 9 tables in 'bikestore create table.sql' file
    - After the above two steps you are ready for performing queries using sql.
- **Usage:**

**1. Set Up the Database:**

- Make sure you have PostgreSQL installed, create a new database, e.g., `bikestore`.
- Use the 'bikestore_create_table.sql' file to set up the structure for all tables.

**2. Import Data:**

- After setting up the database, import data from the CSV files. This step fills the tables with the necessary information for analysis.

**3. Run SQL Queries:**

- Explore the 'queries' directory for various SQL queries.
- Open your SQL client (e.g., pgAdmin).
- Connect to the 'bikestore' database.
- Execute queries to uncover insights from the BikeStore dataset.

That's it! You're ready to explore and analyze the BikeStore data using SQL.


<h3>Results and Findings</h3>

  **1. Most Popular Product:**
  - Identified the top 5 best-selling products based on the quantity sold. This analysis sheds light on customer preferences and helps prioritize product offerings.

  **2. Inventory Status:**
  - Evaluated the current inventory status by providing the number of items available in each store. This insight assists in optimizing stock levels and ensuring product availability. Each Store have 313 items available.

  **3. Staff Productivity:**
  - Analyzed the productivity of the staff, using metric such as the average order processing time. This information aids in staff management and resource allocation.

**4. Store Performance:**
  - Assessed the overall performance of each store, considering total orders placed by customers. This analysis helps identify high-performing stores and areas for improvement.

**5. Store Comparison:**
  - Conducted a comparative analysis of different stores, highlighting variations in total revenue and average order value. This insight facilitates strategic decision-making and resource allocation.

**6. Sales Growth Over Time:**
  - Tracked the total sales for every quarter for 3 years. Understanding the trends in sales performance provides valuable insights for business forecasting and planning.

**7. Customer Loyalty:**
  - Explored customer loyalty metrics, such as repeat purchase rates. This analysis aids in understanding customer behavior and tailoring marketing strategies to enhance loyalty.

**8. Category-wise Top Products:**
  - For each product category, identified and listed the top-selling product based on total sales. This information assists in product category optimization and marketing strategies.

 <h3>Future Enhancements</h3>

- **Visualization Integration:**
  - Consider integrating data visualizations or dashboards to enhance the presentation of insights.
