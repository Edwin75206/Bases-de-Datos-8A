delimiter //
CREATE PROCEDURE generarAleatorios(
OUT valor1 INT,
OUT valor2 INT)
BEGIN
SET valor1 = 0;
SET valor2 = 0;
WHILE valor1 = valor2 do
SET valor1 = rand()*10;
SET valor2 = rand()*10;
END WHILE;
END//