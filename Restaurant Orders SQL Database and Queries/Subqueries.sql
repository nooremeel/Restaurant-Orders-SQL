SELECT item_name
FROM menu_items
WHERE price > 
(SELECT AVG(price)
FROM menu_items)