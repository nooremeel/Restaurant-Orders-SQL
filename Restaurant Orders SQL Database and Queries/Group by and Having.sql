SELECT category, AVG(price) as avg_price
FROM menu_items
GROUP BY category
HAVING AVG(price) > 15;

SELECT category, COUNT(*) as num_of_items
FROM menu_items
GROUP BY category;

