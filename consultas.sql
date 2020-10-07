-- Todos select all 1 tabla
SELECT * FROM `rumbabar`.`clientes`;
SELECT * FROM `rumbabar`.`compras`;
SELECT * FROM `rumbabar`.`compra_producto`;
SELECT * FROM `rumbabar`.`mesas`;
SELECT * FROM `rumbabar`.`permisos`;
SELECT * FROM `rumbabar`.`permiso_rol`;
SELECT * FROM `rumbabar`.`productos`;
SELECT * FROM `rumbabar`.`producto_venta`;
SELECT * FROM `rumbabar`.`proveedores`;
SELECT * FROM `rumbabar`.`roles`;
SELECT * FROM `rumbabar`.`usuarios`;
SELECT * FROM `rumbabar`.`ventas`;

-- Todos select all 1 tabla según llave primaria
SELECT * FROM `rumbabar`.`clientes` WHERE `ClienteId` = numero_id;
SELECT * FROM `rumbabar`.`compras` WHERE `CompraId` = numero_id;
SELECT * FROM `rumbabar`.`mesas` WHERE `MesaId` = numero_id;
SELECT * FROM `rumbabar`.`permisos` WHERE `PermisoId` = numero_id;
SELECT * FROM `rumbabar`.`productos` WHERE `ProductoId` = numero_id;
SELECT * FROM `rumbabar`.`proveedores` WHERE `ProveedorId` = numero_id;
SELECT * FROM `rumbabar`.`roles` WHERE `RolId` = numero_id;
SELECT * FROM `rumbabar`.`usuarios` WHERE `UsuarioId` = numero_id;
SELECT * FROM `rumbabar`.`ventas` WHERE `VentaId` = numero_id;

-- Todos delete según llave primaria
DELETE FROM `rumbabar`.`clientes` WHERE `ClienteId` = numero_id;
DELETE FROM `rumbabar`.`compras` WHERE `CompraId` = numero_id;
DELETE FROM `rumbabar`.`mesas` WHERE `MesaId` = numero_id;
DELETE FROM `rumbabar`.`permisos` WHERE `PermisoId` = numero_id;
DELETE FROM `rumbabar`.`productos` WHERE `ProductoId` = numero_id;
DELETE FROM `rumbabar`.`proveedores` WHERE `ProveedorId` = numero_id;
DELETE FROM `rumbabar`.`roles` WHERE `RolId` = numero_id;
DELETE FROM `rumbabar`.`usuarios` WHERE `UsuarioId` = numero_id;
DELETE FROM `rumbabar`.`ventas` WHERE `VentaId` = numero_id;

-- update 1 campo según llave primaria
UPDATE `rumbabar`.`clientes` SET `ClienteNombre`='Rubén Ponce contreras' WHERE `ClienteId` = numero_id;
UPDATE `rumbabar`.`compras` SET `CompraSaldo`=  '105,2' WHERE `CompraId` = numero_id;
UPDATE `rumbabar`.`mesas` SET `MesaPuestos`='6' WHERE `MesaId` = numero_id;
UPDATE `rumbabar`.`permisos` SET `PermisoNombre`='Permisocreate' WHERE `PermisoId` = numero_id;
UPDATE `rumbabar`.`productos` SET `ProductoNombre`='Jugo Marca X 1Lt' WHERE `ProductoId` = numero_id;
UPDATE `rumbabar`.`proveedores` SET `ProveedorNombre`='Empresa S.A.' WHERE `ProveedorId` = numero_id;
UPDATE `rumbabar`.`roles` SET `RolNombre`='admin' WHERE `RolId` = numero_id;
UPDATE `rumbabar`.`usuarios` SET `UsuarioName`='Rubén Ponce contreras' WHERE `UsuarioId` = numero_id;
UPDATE `rumbabar`.`ventas` SET `VentaSaldo`='105,2' WHERE `VentaId` = numero_id;

-- update varios campos según llave primaria
UPDATE `rumbabar`.`usuarios` SET `UsuarioName`='oesquivel1', `UsuarioEmail`='oesquivel1@hotmail.es' WHERE  `UsuarioId`=3;

-- JOINS

-- usuarios con roles
SELECT * FROM `rumbabar`.`usuarios` INNER JOIN `rumbabar`.`roles` ON `usuarios`.`fk_rol` = `roles`.`RolId`;

-- roles con pivot de permiso_rol CROSS JOIN
SELECT * FROM `rumbabar`.`roles`, `rumbabar`.`permiso_rol` WHERE `roles`.`RolId`=`permiso_rol`.`fk_rol`;

-- roles con permisos WHERE
SELECT * FROM `rumbabar`.`roles`, `rumbabar`.`permiso_rol`, `rumbabar`.`permisos` WHERE `roles`.`RolId`=`permiso_rol`.`fk_rol` AND `permisos`.`PermisoId`=`permiso_rol`.`fk_permiso`;

-- roles con permisos INNER JOIN
SELECT * FROM ((`rumbabar`.`roles` INNER JOIN `rumbabar`.`permiso_rol` ON `roles`.`RolId`=`permiso_rol`.`fk_rol`) INNER JOIN `rumbabar`.`permisos` ON `permisos`.`PermisoId`=`permiso_rol`.`fk_permiso`);

-- usuarioname y permisonombre INNER JOIN
SELECT `usuarios`.`UsuarioName`, `permisos`.`PermisoNombre` FROM (`rumbabar`.`usuarios` INNER JOIN `rumbabar`.`permiso_rol` ON `usuarios`.`fk_rol` = `permiso_rol`.`fk_rol`) INNER JOIN `rumbabar`.`permisos` ON `permisos`.`PermisoId` = `permiso_rol`.`fk_permiso`;

--producto con su provedor INNER JOIN busqueda por nombre de producto JUGO
SELECT * FROM (SELECT * FROM `rumbabar`.`productos` WHERE `productos`.`ProductoNombre` LIKE '%jugo%') AS `producto` INNER JOIN `rumbabar`.`proveedores` ON `producto`.`fk_proveedor` = `proveedores`.`ProveedorId`;

--ventas segun rango de fecha
SELECT * FROM `rumbabar`.`ventas` WHERE `ventas`.`updated_at` BETWEEN '2020-10-02' AND '2020-10-06';

--ventas segun fecha
SELECT * FROM `rumbabar`.`ventas` WHERE `ventas`.`updated_at` = '2020-10-02';