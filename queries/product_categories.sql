SELECT products.product_category_name as "Category", count(orders.order_id) as "OrderCount", AVG(order_items.price) as "Average Price"
FROM olist_ecommerce.olist_orders_dataset AS orders
INNER JOIN olist_ecommerce.olist_order_items_dataset AS order_items ON orders.order_id = order_items.order_id
INNER JOIN olist_ecommerce.olist_products_dataset AS products ON order_items.product_id = products.product_id
WHERE MONTH(orders.order_purchase_timestamp) = 9 and Year(orders.order_purchase_timestamp) = 2017
GROUP BY Category
Order By OrderCount Desc
