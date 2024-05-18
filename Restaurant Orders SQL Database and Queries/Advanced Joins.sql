SELECT order_id, item_name, category, price
FROM order_details LEFT JOIN menu_items ON item_id = menu_item_id;
