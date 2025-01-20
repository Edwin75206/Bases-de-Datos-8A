SELECT * FROM tb_canales;
SELECT Estatus FROM tb_canales;	/*SELECCIONA QUE COLUMNA QUEREMOS MOSTRAR*/
SELECT 'Nombre_canales' , Nombre FROM tb_canales;	/* AGREGA UNA COLUMNA CON ESA NOMBRE*/
SELECT Estatus, Total_Suscriptores * 2 FROM tb_canales;	/*MULTIPLICA POR DOS TODA ESA INFORMACION QUE ESTA*/
SELECT DISTINCT Estatus FROM tb_canales;
SELECT Nombre, Descripcion, Total_Suscriptores FROM tb_canales ORDER BY Total_Suscriptores desc;
SELECT*FROM tb_canales WHERE Estatus = 'Inactivo';
SELECT*FROM tb_canales WHERE Fecha_Creacion > '2019-04-04 18:56:22';
SELECT*FROM tb_canales WHERE ID BETWEEN 285 AND 339 AND ESTATUS = 'Inactivo';
SELECT*FROM tb_canales WHERE ID IN (286,289);
SELECT AVG(Total_Suscriptores), MAX(Total_Suscriptores), MIN(Total_Suscriptores), COUNT(*) FROM tb_canales; 
SELECT SUM(Total_Suscriptores) FROM tb_canales;
SELECT LOWER(Nombre) FROM tb_canales;	/*minusculas*/
SELECT UPPER(Nombre) FROM tb_canales;	/*MAYUSCULAS*/
SELECT LENGTH(Nombre) FROM tb_canales;	/*CONTAR CARACTERERS*/
SELECT CONCAT('Mi Nombre es ', Nombre, ' Y mi estatus ', Estatus) AS CONCATENAR FROM tb_canales;
SELECT REPLACE(Tipo, 'Privado', 'MuyPrivado') AS Nueva_Tipo FROM tb_canales;
SELECT Nombre, SUBSTRING(Nombre, 1 , 2 ) AS PARTE_NAME FROM tb_canales;