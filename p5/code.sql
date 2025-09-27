DROP FUNCTION IF EXISTS divide_numbers;

DELIMITER //

CREATE FUNCTION divide_numbers(a FLOAT, b FLOAT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
	DECLARE result INT;
    IF b = 0 THEN
        RETURN NULL;
    END IF;
    SET result = a / b;
    RETURN result;
END //

DELIMITER ;

-- Використання функції
SELECT order_id, quantity, divide_numbers(quantity, 2) AS divided_quantity
FROM order_details;