SELECT item_name, order_date, order_time, category, price
FROM order_details JOIN menu_items ON item_id = menu_item_id