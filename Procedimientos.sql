SELECT * FROM tienda3.clientes;
delimiter //
CREATE PROCEDURE practica1(
IN Nombre CHAR(40))
BEGIN
DECLARE NOMBRE1 CHAR(40) DEFAULT 'Edwin';
DECLARE res CHAR(40) DEFAULT '';
IF Nombre = NOMBRE1 THEN
	SELECT CONCAT('HOLA', NOMBRE1) AS Saludo;
ELSE
	SELECT 'EQUIVOCADO' AS Saludo;
END IF;
END//


DELIMITER //

CREATE PROCEDURE Calculadora(
    IN operacion CHAR(1),
    IN num1 INT,
    IN num2 INT
)
BEGIN
    DECLARE resultado DECIMAL(10, 2);

    IF operacion = '+' THEN
        SET resultado = num1 + num2;
        SELECT CONCAT('La suma de los números es: ', resultado) AS Resultado;
    ELSEIF operacion = '-' THEN
        SET resultado = num1 - num2;
        SELECT CONCAT('La resta de los números es: ', resultado) AS Resultado;
    ELSEIF operacion = '*' THEN
        SET resultado = num1 * num2;
        SELECT CONCAT('La multiplicación de los números es: ', resultado) AS Resultado;
    ELSEIF operacion = '/' THEN
        IF num2 = 0 THEN
            SELECT 'Error: No se puede dividir entre 0' AS Resultado;
        ELSE
            SET resultado = num1 / num2;
            SELECT CONCAT('La división de los números es: ', resultado) AS Resultado;
        END IF;
    ELSEIF operacion = '%' THEN
        IF num2 = 0 THEN
            SELECT 'Error: No se puede calcular el módulo con divisor 0' AS Resultado;
        ELSE
            SET resultado = num1 % num2;
            SELECT CONCAT('El módulo de los números es: ', resultado) AS Resultado;
        END IF;
    ELSE
        SELECT 'Operación no válida. Usa +, -, *, / o %.' AS Resultado;
    END IF;
END //

DELIMITER ;

DELIMITER //
CREATE PROCEDURE ejercicosTarea(IN hora INT, IN min INT, IN nombre CHAR(50))

BEGIN
	IF hora < 12 THEN
		SELECT CONCAT("Buenos dias", nombre);
	ELSEIF hora < 18 THEN 
		SELECT CONCAT("Buenas Tardes", nombre);
	ELSEIF hora < 24 THEN 
		SELECT CONCAT("Buenas Noches", nombre);
	ELSE
		SELECT CONCAT("Hora Incorrecta", nombre);
	END IF;
END//
    


