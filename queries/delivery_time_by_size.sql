SELECT orderItem.product_id as "Product", count(orderItem.order_id) as "Purchases", products.product_weight_g as "Weight (g)", 
ROUND(AVG(DATEDIFF(orders.order_delivered_customer_date, orders.order_approved_at)), 0) as "Average Delivery Time (Days)",
(products.product_length_cm * products.product_width_cm * products.product_height_cm) as "Size (cm3)"
FROM olist_ecommerce.olist_orders_dataset as orders
Inner Join olist_ecommerce.olist_order_items_dataset as orderItem on orders.order_id = orderItem.order_id
Inner Join olist_ecommerce.olist_products_dataset as products on orderItem.product_id = products.product_id
Group By Product;