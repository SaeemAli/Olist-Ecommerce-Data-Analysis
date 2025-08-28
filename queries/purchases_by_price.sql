SELECT orderItem.product_id as "Product", count(orderItem.order_id) as "Purchases", 
Round(AVG(orderItem.price), 2) as "Average price"
FROM olist_ecommerce.olist_orders_dataset as orders
Inner Join olist_ecommerce.olist_order_items_dataset as orderItem on orders.order_id = orderItem.order_id
Inner Join olist_ecommerce.olist_products_dataset as products on orderItem.product_id = products.product_id
Group By Product;