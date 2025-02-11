SELECT * FROM tienda3.clientes;
delimiter $$
CREATE PROCEDURE generarDatosAleatorios()
BEGIN
DECLARE i INT DEFAULT 0;
DECLARE rgistros INT DEFAULT 10;
WHILE i < rgistros DO
INSERT INTO clientes(nombre, apellidop, apellidom, correo, telefono)
VALUES(
CONCAT('nombre',FLOOR(1000+(RAND()*9000))),
CONCAT('apellidop',FLOOR(1000+(RAND()*9000))),
CONCAT('apellidom',FLOOR(1000+(RAND()*9000))),
CONCAT('usuario',FLOOR(1000+(RAND()*9000)), '@gmail.com'),
CONCAT('55',FLOOR(100000000+(RAND()*900000000))));
SET i=i+1;
END WHILE;
END$$