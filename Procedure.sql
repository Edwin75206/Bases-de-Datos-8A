DELIMITER $$
CREATE PROCEDURE parametro (IN vContinente CHAR(40))
BEGIN
SELECT COUNT(*) FROM tb_paises
WHERE Continente LIKE vContinente;
END $$

DELIMITER $$
CREATE PROCEDURE parametroOUT (OUT total INT)
BEGIN
SELECT COUNT(Nombre) INTO total
FROM tb_videos;
END $$

DELIMITER $$
CREATE PROCEDURE parametroINOUT (IN N1 float, IN N2 FLOAT , OUT resultado FLOAT)
BEGIN
SELECT  (N1+N2)/2 INTO resultado;
END $$


DELIMITER $$ 
CREATE PROCEDURE parametroIF (IN N1 FLOAT, IN N2 FLOAT, OUT resultado FLOAT)
BEGIN
    IF N1 < N2 THEN
        SET resultado = (N1 + N2) / 2;
    ELSE
        SET resultado = (N1 + N2);
    END IF;
END $$

