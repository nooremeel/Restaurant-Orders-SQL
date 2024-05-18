SELECT item_name, RANK() OVER (ORDER BY price DESC) AS rank
FROM menu_items