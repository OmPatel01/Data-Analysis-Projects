-- 1. Most Popular Product:
-- What are the top 5 most selling product?

SELECT product_id, SUM(quantity) AS total_quantity_sold
FROM sales_order_items
GROUP BY product_id
ORDER BY total_quantity_sold DESC
LIMIT 5

-- 2. Inventory Status:
-- Provide an overview of the current inventory status, including the count of products in stock for each store.

SELECT ss.store_id, COUNT(ps.quantity) AS quantity
FROM production_stocks AS ps 
JOIN sales_stores AS ss ON ps.store_id = ss.store_id
GROUP BY ss.store_id
ORDER BY ss.store_id

-- 3. Staff Productivity:
-- Calculate the processing time for orders and identify the staff members with slower processing time.

SELECT so.store_id, so.staff_id, CONCAT(ss.first_name,' ',ss.last_name) AS staff_name,
	 MAX(so.shipped_date - so.order_date) AS processing_days 
FROM sales_orders AS so
JOIN sales_staffs AS ss ON ss.staff_id = so.staff_id
GROUP BY so.store_id, so.staff_id, staff_name
ORDER BY processing_days

-- 4. Store Performance:
-- How many orders were placed at each store?

SELECT so.store_id, ss.store_name, SUM(so.order_status) AS total_orders
FROM sales_orders AS so
JOIN sales_stores AS ss ON so.store_id = ss.store_id 
GROUP BY so.store_id, ss.store_name
ORDER BY total_orders DESC

-- 5. Store Comparison:
-- Compare the sales performance of each store in terms of total revenue and average order value.

SELECT ss.store_id, ss.store_name,
    ROUND(SUM(soi.list_price * soi.quantity * (1 - soi.discount))) AS total_revenue,
    ROUND(AVG(soi.list_price * soi.quantity * (1 - soi.discount))) AS avg_order_value
FROM sales_orders so
JOIN sales_order_items soi ON so.order_id = soi.order_id
JOIN sales_stores ss ON so.store_id = ss.store_id
GROUP BY ss.store_id, ss.store_name
ORDER BY total_revenue DESC

-- 6. Sales Growth Over Time:
-- How has the total sales revenue changed over the previous quarters?

SELECT EXTRACT(YEAR FROM so.order_date) AS order_year,
    EXTRACT(QUARTER FROM order_date) AS order_quarter,
    ROUND(SUM(soi.list_price * soi.quantity * (1 - soi.discount))) AS total_sales
FROM sales_orders so
JOIN sales_order_items soi ON so.order_id = soi.order_id
GROUP BY order_quarter, order_year
ORDER BY order_year, order_quarter

-- 7. Customer Loyalty:
-- Identify the top 10 customers who have made the most purchases.

WITH customer_rank AS(SELECT so.customer_id, SUM(so.order_status) AS total_orders,
	RANK() OVER(PARTITION BY so.customer_id ORDER BY SUM(so.order_status) DESC)
	FROM sales_orders AS so
	JOIN sales_customers AS sc ON sc.customer_id = so.customer_id
	GROUP BY so.customer_id
	ORDER BY total_orders DESC
)
SELECT cr.customer_id, sc.first_name, sc.last_name, cr.total_orders
FROM customer_rank as cr
JOIN sales_customers as sc ON sc.customer_id = cr.customer_id
ORDER BY cr.total_orders DESC, cr.customer_id LIMIT 10

-- 8. Category-wise Top Products:
-- For each product category, identify the top-selling product based on total sales.

WITH ranked_products AS (
    SELECT pp.category_id, pp.product_id, pp.product_name, soi.list_price, soi.quantity,
        RANK() OVER (PARTITION BY pp.category_id ORDER BY SUM(soi.list_price * soi.quantity) DESC) AS product_rank
    FROM production_products pp
    JOIN sales_order_items soi ON pp.product_id = soi.product_id
    GROUP BY pp.category_id, pp.product_id, pp.product_name, soi.list_price, soi.quantity
)
SELECT category_id, product_id, product_name, list_price, quantity
FROM ranked_products
WHERE product_rank = 1