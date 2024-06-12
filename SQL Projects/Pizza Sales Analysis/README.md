# 🍕 Pizza Sales Analysis

## Project Overview
This project aims to analyze pizza sales data using SQL to uncover trends, optimize sales strategies, and make data-driven business decisions. The analysis focuses on understanding customer behavior, identifying revenue drivers, and providing actionable insights for enhancing the pizza store's operations.


## Dataset Structure
The dataset comprises four tables with the following columns:

### 1. order_details
- `order_details_id`: Unique identifier for each order detail
- `order_id`: Identifier linking to the order
- `pizza_id`: Identifier linking to the pizza
- `quantity`: Quantity of pizzas ordered

### 2. pizza_orders
- `order_id`: Unique identifier for each order
- `date`: Date of the order
- `time`: Time of the order

### 3. pizza_types
- `pizza_type_id`: Unique identifier for each pizza type
- `name`: Name of the pizza
- `category`: Category of the pizza (e.g., vegetarian, non-vegetarian)
- `ingredients`: List of ingredients used in the pizza

### 4. pizza_details
- `pizza_id`: Unique identifier for each pizza
- `pizza_type_id`: Identifier linking to the pizza type
- `size`: Size of the pizza (small, medium, large, extra-large)
- `price`: Price of the pizza


## Key Insights
1. **Total Orders**: Calculated the total number of orders placed, providing a clear picture of customer demand.
2. **Order Frequency**: Analyzed the number of orders placed on each date, identifying peak days and trends in customer behavior.
3. **Total Sales**: Determined the total sales generated from all orders, offering a holistic view of revenue performance.
4. **Average Order Value**: Computed the average value of an order, helping to understand customer spending habits.
5. **Daily Revenue**: Assessed the daily revenue generated.
6. **Revenue per Pizza Type**: Evaluated the revenue generated from each type of pizza.
7. **Rank Pizzas**: Ranked pizzas based on their popularity.
8. **Sales Comparison (Weekdays vs. Weekends)**: Weekday sales are almost double those of weekends, indicating higher customer turnout during weekdays.
9. **Pizza Size Analysis**: Large pizzas contribute the most to revenue, while extra-large pizzas are the least popular.
10. **Least Sold Pizza Category**: Identified the least selling category of pizza, which is the chicken category.


## Strategic Recommendations
- **Promote Large Pizzas**: Highlight large pizzas more aggressively due to their significant revenue contribution.
- **Investigate Low Sales Categories**: Conduct customer surveys to understand the low sales in the chicken pizza category and adjust accordingly.
- **Efficient Inventory Management**: Ensure popular items are always in stock with an effective inventory management system.
- **Weekday Specials**: Focus marketing efforts on weekdays to capitalize on higher sales.
- **Introduce Popular Flavor Variations**: Develop new recipes inspired by the top-selling Thai Chicken pizza.
- **Revise Extra-Large Pizza Strategy**: Adjust pricing or introduce special deals for extra-large pizzas to boost their appeal.
- **Optimize Staffing**: Allocate more staff during peak weekday hours to handle increased order volumes efficiently.
- **Targeted Promotions**: Implement targeted promotions for less popular days to boost sales.
- **Customer Loyalty Program**: Introduce a loyalty program to encourage repeat purchases.


## Conclusion
This analysis demonstrates the value of data-driven decision-making in optimizing sales and enhancing customer satisfaction. By leveraging these insights, the pizza store can streamline operations, attract more customers, and boost revenue.
