WITH items_ranked AS (
SELECT item_name, price, LAG(price) OVER (ORDER BY price) AS prev_price, LEAD(price) OVER (ORDER BY price) AS next_price
FROM menu_items)
SELECT item_name, price, price - prev_price AS price_diff_prev, next_price - price AS price_diff_next
FROM items_ranked;
