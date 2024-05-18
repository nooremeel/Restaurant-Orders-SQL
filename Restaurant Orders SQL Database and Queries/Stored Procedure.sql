--CREATE PROCEDURE average_price
--@category NVARCHAR(255) AS
--BEGIN
--SET NOCOUNT ON;
--SELECT AVG(price) AS average_price 
--FROM menu_items
--WHERE category = @category;
--END;
EXEC average_price 'American';

