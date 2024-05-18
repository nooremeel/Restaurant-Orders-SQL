SELECT menu_item_id, property AS property_name, value
FROM (SELECT menu_item_id, item_name ,category, CONVERT(VARCHAR(100), price) AS price FROM menu_items) AS menu_items
UNPIVOT (value FOR property IN (item_name, category, price)) AS unpivoted_menu_items;
