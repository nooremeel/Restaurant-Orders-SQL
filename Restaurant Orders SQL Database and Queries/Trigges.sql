CREATE TRIGGER trgAfterInsertOrder
ON order_details	
AFTER INSERT
AS
BEGIN
SET NOCOUNT ON;
DECLARE @order_id INT;
SELECT @order_id = order_id
FROM inserted;
INSERT INTO order_log (order_id, log_message)
VALUES (@order_id, 'New order inserted');
END;
