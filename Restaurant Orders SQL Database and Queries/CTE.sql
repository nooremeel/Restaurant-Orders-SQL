WITH expensive_items AS 
(SELECT item_name, price
FROM menu_items
WHERE price > 15)

SELECT COUNT(*) AS num_of_expensive_items
FROM expensive_items;
