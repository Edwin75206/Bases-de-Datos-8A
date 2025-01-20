USE  db_youtube2025;
SELECT*FROM tb_reproducciones;
SELECT*FROM tb_usuarios;
SELECT*FROM tb_reproducciones WHERE Tipo = 'Parcial';
SELECT MAX(Ubicacion_id) AS 'MaxUbicacion' FROM tb_reproducciones;
SELECT*FROM tb_usuarios ORDER BY Fecha_Nacimiento asc;
SELECT COUNT(Usuario_ID) FROM tr_usuarios_suscriben_canales;
SELECT Canal_ID, Estatus, COUNT(*) AS Total FROM tr_usuarios_suscriben_canales GROUP BY Canal_ID, Estatus ORDER BY Canal_ID;
SELECT Estatus, SUM(Canal_ID) FROM tr_usuarios_suscriben_canales GROUP BY Estatus;
SELECT*FROM tb_paises WHERE Continente = 'EUROPA';
SELECT*FROM tb_ubicaciones WHERE Region = 'Centrosur' AND Distrito_Estado = 'Mexico';

SELECT Tipo, AVG(total_suscriptores) as PROMEDIO_SUSCRIPTRES, MAX(total_suscriptores) AS MAXIMO FROM tb_canales GROUP BY Tipo;
SELECT Estatus, SUM(total_suscriptores)  AS TotalSuma FROM tb_canales GROUP BY Estatus;


