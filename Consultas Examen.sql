USE db_examen;
#1
SELECT nombre_equipo, marca, modelo, numero_serie, estado FROM equipos;

#2
SELECT mantenimientos.id AS MantenimientoID, equipos.nombre_equipo AS NombreEquipo, equipos.marca AS Marca, mantenimientos.tipo_mantenimiento AS TipoMantenimiento,
mantenimientos.descripcion AS Deascripcion,mantenimientos.fecha AS Fecha, usuarios.nombre AS RealizadoPor FROM mantenimientos JOIN equipos ON mantenimientos.id_equipo = equipos.id JOIN usuarios ON mantenimientos.realizado_por = usuarios.id;

#3
SELECT nombre_equipo AS NombreEquipo, marca, modelo, estado FROM equipos WHERE estado = 'En Reparación';

#4
SELECT tipo_mantenimiento, COUNT(*) AS cantidad FROM mantenimientos GROUP BY tipo_mantenimiento;

#5
SELECT equipos.nombre_equipo AS NombreEquipo, mantenimientos.tipo_mantenimiento AS TipoMantenimiento, mantenimientos.fecha AS Fecha FROM mantenimientos 
JOIN equipos ON mantenimientos.id_equipo = equipos.id WHERE mantenimientos.fecha >= '2025-01-15';

#7
SELECT usuarios.nombre AS Usuario, usuarios.correo AS Correo, roles.nombre_rol AS Rol FROM usuarios JOIN roles ON usuarios.id_rol = roles.id;

#8
SELECT equipos.nombre_equipo AS NombreEquipo, MAX(mantenimientos.fecha) AS UltimoMantenimiento FROM mantenimientos JOIN equipos ON mantenimientos.id_equipo = equipos.id
GROUP BY equipos.nombre_equipo;

#9
SELECT mantenimientos.id AS "Id Mantenimiento", equipos.nombre_equipo AS NombreEquipo , mantenimientos.tipo_mantenimiento AS TipoMantenimiento, mantenimientos.descripcion AS Descripcion,
mantenimientos.fecha AS Fecha FROM mantenimientos JOIN equipos ON mantenimientos.id_equipo = equipos.id JOIN usuarios ON mantenimientos.realizado_por = usuarios.id 
WHERE usuarios.nombre = 'Marco García';

#10
SELECT equipos.nombre_equipo AS NombreEquipo, equipos.marca AS Marca, equipos.modelo AS Modelo FROM equipos LEFT JOIN mantenimientos ON equipos.id = mantenimientos.id_equipo
WHERE mantenimientos.id = 2;

