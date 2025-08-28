SELECT orderItem.product_id as "Product", count(orderItem.order_id) as "Purchases", 
ROUND(AVG(DATEDIFF(orders.order_delivered_customer_date, orders.order_approved_at)), 0) as "Average Delivery Time (Days)",
products.product_name_length as "Product Name Length", products.product_description_length as "Product Description Length",
products.product_photos_qty as "Product Photo Quantity"
FROM olist_ecommerce.olist_orders_dataset as orders
Inner Join olist_ecommerce.olist_order_items_dataset as orderItem on orders.order_id = orderItem.order_id
Inner Join olist_ecommerce.olist_products_dataset as products on orderItem.product_id = products.product_id
Group By Product;