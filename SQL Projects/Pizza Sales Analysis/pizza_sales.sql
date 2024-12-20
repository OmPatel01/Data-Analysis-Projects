-- extract week day and month from date column
SELECT * FROM pizza_orders

ALTER TABLE pizza_orders ADD COLUMN day_of_week VARCHAR(10);
UPDATE pizza_orders
SET day_of_week = TRIM(TO_CHAR(date, 'Day'));

ALTER TABLE pizza_orders ADD COLUMN month_name VARCHAR(10);
UPDATE pizza_orders
SET month_name = TRIM(TO_CHAR(date, 'Month'));

-- 1. Total Orders: How many total orders have been placed?
SELECT COUNT(*) AS total_orders FROM pizza_orders;

-- 2. Order Frequency: How many orders were placed on each date?
SELECT * FROM pizza_orders
SELECT date, day_of_week, COUNT(*) AS order_count FROM pizza_orders 
GROUP BY date, day_of_week ORDER BY order_count DESC;

-- 3. Total Sales: What is the total sales generated from all orders?
SELECT SUM(od.quantity * pd.price)
FROM pizza_details AS pd
JOIN order_details AS od ON pd.pizza_id = od.pizza_id

-- 4. Average Order Value: What is the average value of an order?
WITH order_values AS (
    SELECT po.order_id, SUM(od.quantity * pd.price) AS order_value
    FROM pizza_orders po
    JOIN order_details od ON po.order_id = od.order_id
    JOIN pizza_details pd ON od.pizza_id = pd.pizza_id
    GROUP BY po.order_id
)
SELECT ROUND(AVG(order_value),2) AS average_order_value
FROM order_values;

-- 5. Daily Revenue: What is the daily revenue generated?
SELECT po.date, SUM(od.quantity * pd.price) AS daily_revenue
FROM pizza_orders po
JOIN order_details od ON po.order_id = od.order_id
JOIN pizza_details pd ON od.pizza_id = pd.pizza_id
GROUP BY po.date
ORDER BY po.date;

-- 6. Revenue per Pizza Type: What is the revenue generated from each type of pizza?
SELECT pt.name, SUM(od.quantity * pd.price) AS total_revenue
FROM pizza_types pt
JOIN pizza_details pd ON pt.pizza_type_id = pd.pizza_type_id
JOIN order_details od ON pd.pizza_id = od.pizza_id
GROUP BY pt.name
ORDER BY total_revenue DESC;

-- 7. Rank Pizzas: Rank pizzas based on their popularity.
SELECT name,
    COUNT(order_details_id) AS order_count,
    RANK() OVER (ORDER BY COUNT(order_details_id) DESC) AS popularity_rank
FROM pizza_types
JOIN pizza_details ON pizza_types.pizza_type_id = pizza_details.pizza_type_id
JOIN order_details ON pizza_details.pizza_id = order_details.pizza_id
GROUP BY name;

-- 8. Compare sales between weekdays and weekends
SELECT
    CASE 
        WHEN day_of_week IN ('Saturday', 'Sunday') THEN 'Weekend' 
        ELSE 'Weekday' 
    END AS day_type,
    SUM(od.quantity * pd.price) AS total_sales
FROM pizza_orders po
JOIN order_details od ON po.order_id = od.order_id
JOIN pizza_details pd ON od.pizza_id = pd.pizza_id
GROUP BY day_type;

-- 9. Pizza Size Analysis: Compare the sales and revenue generated by different pizza sizes (small, medium, large)
SELECT size, COUNT(od.quantity) AS total_pizzas_sold, SUM(od.quantity * pd.price) AS total_revenue
FROM order_details od
JOIN pizza_details pd ON od.pizza_id = pd.pizza_id
GROUP BY size;

-- 10. Least sold pizza category: Which category of pizza is least selling?
SELECT pt.category, COUNT(od.order_details_id) AS total_orders
FROM pizza_types pt
LEFT JOIN pizza_details pd ON pt.pizza_type_id = pd.pizza_type_id
LEFT JOIN order_details od ON pd.pizza_id = od.pizza_id
GROUP BY pt.category
ORDER BY total_orders;

