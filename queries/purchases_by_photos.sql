SELECT products.product_photos_qty as "Product Photo Quantity", count(distinct products.product_id) as "Products",
count(orderItem.order_id) as "Orders", count(orderItem.order_id)/count(distinct products.product_id) as "Orders per Item"
FROM olist_ecommerce.olist_orders_dataset as orders
Inner Join olist_ecommerce.olist_order_items_dataset as orderItem on orders.order_id = orderItem.order_id
Inner Join olist_ecommerce.olist_products_dataset as products on orderItem.product_id = products.product_id
Group By products.product_photos_qty
Order By products.product_photos_qty;