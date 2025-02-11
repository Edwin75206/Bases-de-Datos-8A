delimiter //

CREATE PROCEDURE disminuirStockCategoriaLoop(
IN p_categoria VARCHAR(50),
IN p_cantidad INT)

BEGIN 
DECLARE done INT DEFAULT FALSE;
DECLARE v_producto_id INT;
DECLARE cur CURSOR FOR
SELECT producto_id FROM productos WHERE categoria=p_categoria;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

OPEN cur;
read_loop: LOOP 
FETCH cur INTO v_producto_id;
IF done THEN 
LEAVE read_loop;
END IF;
UPDATE productos
SET stock = GREATEST(stock - p_cantidad, 0)
WHERE producto_id = v_producto_id;
END LOOP;
CLOSE cur;
END //



DELIMITER //
CREATE PROCEDURE desactivar_productos_sin_stock()
BEGIN
DECLARE v_producto_id INT;
SELECT producto_id INTO v_producto_id FROM productos WHERE stock=0 LIMIT 1;
REPEAT
UPDATE productos SET estado='inactivo' WHERE producto_id=v_producto_id;
SELECT producto_id INTO v_producto_id FROM productos  WHERE stock=0 LIMIT 1;
UNTIL v_producto_id IS NULL
END REPEAT;

END //








