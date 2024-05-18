SELECT item_name, price,
CASE
	WHEN price > 20 THEN 'Yes'
    ELSE 'No'
    END AS Expensive
FROM menu_items;