SELECT MONTH(order_date) AS month, COUNT(*) AS num_orders
FROM order_details
GROUP BY MONTH(order_date)