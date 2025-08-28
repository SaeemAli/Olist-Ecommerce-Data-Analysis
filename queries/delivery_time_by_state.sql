SELECT customers.customer_state as "State", COUNT(orders.order_id) as "Number of Purchases",
ROUND(AVG(DATEDIFF(orders.order_delivered_customer_date, orders.order_approved_at)), 0) as "Average Delivery Time"
FROM olist_ecommerce.olist_order_customer_dataset AS customers
INNER JOIN olist_ecommerce.olist_orders_dataset AS orders ON orders.customer_id = customers.customer_id
GROUP By customers.customer_state
ORDER BY "Number of Purchases" DESC