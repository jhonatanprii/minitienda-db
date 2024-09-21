-- Categorias
-- Insertar
DELIMITER //
create procedure procInsertCategory(IN v_description VARCHAR(45))
begin
	insert into tbl_categorias(cat_descripcion) values(v_description);
end//
DELIMITER ;
-- Actualizar
DELIMITER //
create procedure procUpdateCategory(IN v_id INT, IN v_description VARCHAR(45))
begin
	update tbl_categorias
    set cat_descripcion = v_description
    where cat_id = v_id;
end//
DELIMITER ;
-- Mostrar
DELIMITER //
create procedure procSelectCategory()
begin
select cat_id, cat_descripcion from tbl_categorias;
end//
DELIMITER ;
-- Eliminar
DELIMITER //
create procedure procDeleteCategory(IN v_id INT)
begin
	delete from tbl_categorias where cat_id = v_id;
end//
DELIMITER ;




-- Proveedores
-- Insertar
DELIMITER //
create procedure procInsertProviders(IN v_nit VARCHAR(45), IN v_nombre VARCHAR(100))
begin
	insert into tbl_proveedores(prov_nit, prov_nombre) values(v_nit, v_nombre);
end//
DELIMITER ;

-- Actualizar
DELIMITER //
create procedure procUpdateProviders(IN v_id INT, IN v_nit VARCHAR(45), IN v_nombre VARCHAR(100))
begin
	update tbl_proveedores
    set prov_nit = v_nit, prov_nombre = v_nombre
    where prov_id = v_id;
end//
DELIMITER ;

-- Mostrar
DELIMITER //
create procedure procSelectProviders()
begin
select prov_id, prov_nit, prov_nombre from tbl_proveedores;
end//
DELIMITER ;

-- Eliminar
DELIMITER //
create procedure procDeleteProviders(IN v_id INT)
begin
	delete from tbl_proveedores where prov_id = v_id;
end//
DELIMITER ;




-- Productos
-- Insertar
DELIMITER //
create procedure procInsertProducts(IN v_codigo VARCHAR(45), IN v_descripcion VARCHAR(100), IN v_cantidad INT, IN v_precio DOUBLE)
begin
	insert into tbl_productos(pro_codigo, pro_descripcion, pro_cantidad, pro_precio) values(v_codigo, v_descripcion, v_cantidad, v_precio);
end//
DELIMITER ;

-- Actualizar
DELIMITER //
create procedure procUpdateProducts(IN v_id INT, IN v_codigo VARCHAR(45), IN v_descripcion VARCHAR(100), IN v_cantidad INT, IN v_precio DOUBLE)
begin
	update tbl_productos
    set pro_codigo = v_codigo, pro_descripcion = v_descripcion, pro_cantidad = v_cantidad, pro_precio = v_precio
    where pro_id = v_id;
end//
DELIMITER ;

-- Mostrar
DELIMITER //
create procedure procSelectProducts()
begin
select pro_id, pro_codigo, pro_descripcion, pro_cantidad, pro_precio from tbl_productos;
end//
DELIMITER ;

-- Eliminar
DELIMITER //
create procedure procDeleteProducts(IN v_id INT)
begin
	delete from tbl_productos where pro_id = v_id;
end//
DELIMITER ;



-- Usuarios
-- Insertar
DELIMITER //
create procedure procInsertUsers(IN v_correo VARCHAR(80), IN v_contrasena TEXT, IN v_salt TEXT, IN v_estado VARCHAR(15))
begin
	insert into tbl_usuarios(usu_correo, usu_contrasena, usu_salt, usu_estado) values(v_correo, v_contrasena, v_salt, v_estado);
end//
DELIMITER ;

-- Actualizar
DELIMITER //
create procedure procUpdateUsers(IN v_id INT, IN v_correo VARCHAR(80), IN v_contrasena TEXT, IN v_salt TEXT, IN v_estado VARCHAR(15))
begin
	update tbl_usuarios
    set usu_correo = v_correo, usu_contrasena = v_contrasena, usu_salt = v_salt, usu_estado = v_estado
    where usu_id = v_id;
end//
DELIMITER ;

-- Mostrar
DELIMITER //
create procedure procSelectUsers()
begin
select usu_id, usu_correo, usu_contrasena, usu_salt, usu_estado from tbl_usuarios;
end//
DELIMITER ;

-- Eliminar
DELIMITER //
create procedure procDeleteUsers(IN v_id INT)
begin
	delete from tbl_usuarios where usu_id = v_id;
end//
DELIMITER ;
