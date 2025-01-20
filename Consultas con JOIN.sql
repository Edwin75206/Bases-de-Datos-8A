USE db_youtube2025;
SELECT*FROM tb_videos A INNER JOIN tr_videos_tienen_restricciones B ON A.ID=B.Video_ID;
SELECT A.ID,A.Nombre,A.titulo,B.Restriccion_ID FROM tb_videos A INNER JOIN tr_videos_tienen_restricciones B ON A.Usuario_ID = B.Video_ID;
SELECT A.Nombre, A.Apellido_paterno, A.Apellido_materno, B.Estatus FROM tb_usuarios A LEFT JOIN tb_canales B ON A.ID = B.Usuario_ID;
SELECT A.Nombre, A.Apellido_paterno, A.Apellido_materno, B.Estatus FROM tb_usuarios A RIGHT JOIN tb_canales B ON A.ID = B.Usuario_ID;


SELECT A.Nombre, A.Apellido_paterno, A.Apellido_materno, B.Estatus FROM tb_usuarios A LEFT JOIN tb_canales B ON A.ID = B.Usuario_ID
UNION
SELECT A.Nombre, A.Apellido_paterno, A.Apellido_materno, B.Estatus FROM tb_usuarios A RIGHT JOIN tb_canales B ON A.ID = B.Usuario_ID;

SELECT A.ID, A.Pais, B.Estatus FROM tb_ubicaciones A INNER JOIN tb_usuarios B ON A.ID = B.id;
SELECT A.ID, A.Nombre, B.Restriccion_ID FROM tb_videos A INNER JOIN tr_videos_tienen_restricciones B ON B.Restriccion_ID =2;
SELECT*FROM tb_usuarios A INNER JOIN tr_usuarios_suscriben_canales B ON B.Usuario_ID = A.ID;


SELECT* 
FROM tb_ubicaciones
INNER JOIN tb_usuarios
ON tb_ubicaciones.ID = tb_usuarios.Ubicacion_ID
INNER JOIN tb_reproducciones
ON tb_usuarios.ID = tb_reproducciones.Ubicacion_ID;
