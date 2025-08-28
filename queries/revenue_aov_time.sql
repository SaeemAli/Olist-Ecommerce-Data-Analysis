SELECT 
STR_TO_DATE(CONCAT(YEAR(orders.order_purchase_timestamp), '-', MONTH(orders.order_purchase_timestamp), '-01'), '%Y-%m-%d') AS month_start,
ROUND(AVG(order_items.price), 2) AS Average_Order_Value,
SUM(order_items.price) AS Total_Revenue,
COUNT(orders.order_id) AS Total_Purchases
FROM olist_ecommerce.olist_orders_dataset AS orders
INNER JOIN olist_ecommerce.olist_order_items_dataset AS order_items ON orders.order_id = order_items.order_id
GROUP BY month_start
ORDER BY month_start;