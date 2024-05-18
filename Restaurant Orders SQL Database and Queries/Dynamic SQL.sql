DECLARE @category NVARCHAR(255) = 'Asian';
DECLARE @min_price DECIMAL(10, 2) = 5.99;
DECLARE @max_price DECIMAL(10, 2) = 15.99;

DECLARE @sql NVARCHAR(MAX);

SET @sql = '
    SELECT
        menu_item_id,
        item_name,
        category,
        price
    FROM
        menu_items
    WHERE
        1 = 1';

IF @category IS NOT NULL
    SET @sql = @sql + ' AND category = @category';

IF @min_price IS NOT NULL
    SET @sql = @sql + ' AND price >= @min_price';

IF @max_price IS NOT NULL
    SET @sql = @sql + ' AND price <= @max_price';

EXEC sp_executesql @sql, N'@category NVARCHAR(255), @min_price DECIMAL(10, 2), @max_price DECIMAL(10, 2)', @category, @min_price, @max_price;
