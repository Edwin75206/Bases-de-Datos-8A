CREATE VIEW tipodescuento AS SELECT*FROM tb_canales WHERE tipo="privado";

CREATE VIEW videosconrestriccion AS SELECT*FROM tb_videos A INNER JOIN tr_videos_tienen_restricciones B ON A.ID=B.Video_ID;

CREATE VIEW SuscriptoresPorCanal AS SELECT Canal_ID, COUNT(Usuario_ID) AS CantidadSuscriptores FROM tr_usuarios_suscriben_canales GROUP BY Canal_id;

CREATE VIEW MaximaReproduccionVideo AS SELECT Video_ID, COUNT(Video_ID) AS Maxima FROM tb_reproducciones  GROUP BY Video_ID;

CREATE VIEW PromedioSuscriptores AS SELECT Tipo, AVG(total_suscriptores) as PROMEDIO_SUSCRIPTRES, MAX(total_suscriptores) AS MAXIMO FROM tb_canales GROUP BY Tipo;

CREATE VIEW Estatus AS SELECT Estatus, SUM(total_suscriptores)  AS TotalSuma FROM tb_canales GROUP BY Estatus;




