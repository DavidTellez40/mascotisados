/* ************************************************************************************* */
/* ---------------------------------------- DDL ---------------------------------------- */
/* ----------------------------- DATA DEFINITION LANGUAGE ------------------------------ */
/* -------------------------- LENGUAJE DE DEFINICIÓN DE DATOS -------------------------- */
/* ------------------------------------------------------------------------------------- */
/* ************************************************************************************* */
/* ------------------------------------------------------------------------------------- */
/* 01. Mostrar BBDDs : .................... SHOW DATABASES                               */
/* 02. Usar BBDD : ........................ USE __                                       */
/* 03. Eliminar BBDD : .................... DROP DATABASE __                             */
/* 04. Mostrar Tablas : ................... SHOW TABLES __.                              */
/* 05. Mostar Columnas : .................. SHOW COLUMNS FROM __ . DESCRIBE __           */
/* 06. Agregar Columna : .................. ALTER TABLE __ ADD __ __                     */
/* 07. Renombrar Columna : ................ ALTER TABLE __ CHANGE __ __                  */
/* 08. Eliminar Columna : ................. ALTER TABLE __ DROP __                       */
/* 09. Agregar Valor x Defecto Columna : .. ALTER TABLE __ ALTER __ SET DEFAULT __       */
/* 10. Eliminar Valor x Defecto Columna : . ALTER TABLE __ ALTER __ DROP DEFAULT         */
/* 11. Mostrar Creación Tabla : ........... SHOW CREATE TABLE __                         */
/* 12. Eliminar Restricción : ............. ALTER TABLE __ DROP CONSTRAINT __            */
/* 13. Eliminar Índice : .................. ALTER TABLE __ DROP INDEX __                 */
/* 14. Eliminar Llave Primaria : .......... ALTER TABLE __ DROP PRIMARY KEY              */
/* 15. Limpiar Registros : ................ TRUNCATE __                                  */
/* 16. Eliminar Tabla : ................... DROP TABLE __                                */
/* 17. Crear Tabla : ...................... CREATE TABLE __ ( __ , __ )                  */
/* 18. Renombrar Tabla : .................. RENAME TABLE __ TO __                        */
/* 19. Crear Llave Primaria : ............. ALTER TABLE __ ADD PRIMARY KEY ( __ )        */
/* 20. Crear Índice Campo : ............... CREATE INDEX __ ON __ ( __ )                 */
/* 21. Crear Índice Multicampo : .......... CREATE INDEX _ ON _ ( __ , __ )              */
/* 22. Crear Índice Único : ............... CREATE UNIQUE INDEX __ ON __ ( __ )          */
/* 23. Crear Restricción : ................ ALTER TABLE __ ADD CONSTRAINT __             */
/*     FOREIGN KEY ( __ ) REFERENCES __ ( __ ) ON DELETE CASCADE ON UPDATE CASCADE       */
/* ------------------------------------------------------------------------------------- */
/* ************************************************************************************* */
/* EN CONSOLA: XAMPP / SHELL / cd mysql/bin / mysql -h localhost -u root -p / ENTER      */
/* ************************************************************************************* */
-- ------------------------------------------------------------------------------------- --
-- 01. Mostrar BBDDs. ------------------------------------------------------------------ --
--     SHOW DATABASES : ---------------------------------------------------------------- -- 
-- ------------------------------------------------------------------------------------- --
SHOW DATABASES;
-- ------------------------------------------------------------------------------------- --
-- 02. Usar BBDD. ---------------------------------------------------------------------- --
--     USE __ : ------------------------------------------------------------------------ --
-- ------------------------------------------------------------------------------------- --
USE BBDD_MASCOTISADOS;
-- ------------------------------------------------------------------------------------- --
-- 03. Eliminar BBDD. ------------------------------------------------------------------ --
--     DROP DATABASE __ : -------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
DROP DATABASE BBDD_MASCOTISADOS;
-- ------------------------------------------------------------------------------------- --
-- 04. Mostrar Tablas. ----------------------------------------------------------------- --
--     SHOW TABLES __ : ---------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SHOW TABLES;
-- ------------------------------------------------------------------------------------- --
-- 05. Mostar Columnas. ---------------------------------------------------------------- --
--     SHOW COLUMNS FROM __ . DESCRIBE __ : -------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SHOW COLUMNS FROM USUARIO;
DESCRIBE USUARIO;
-- ------------------------------------------------------------------------------------- --
-- 06. Agregar Columna. ---------------------------------------------------------------- --
--     ALTER TABLE __ ADD __ __ : ------------------------------------------------------ --
-- ------------------------------------------------------------------------------------- --
ALTER TABLE USUARIO ADD email DATE;
-- ------------------------------------------------------------------------------------- --
-- 07. Renombrar Columna. -------------------------------------------------------------- --
--     ALTER TABLE __ CHANGE __ __ : --------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
ALTER TABLE USUARIO CHANGE direccion_user user_direccion VARCHAR(100);
-- ------------------------------------------------------------------------------------- --
-- 08. Eliminar Columna. --------------------------------------------------------------- --
--     ALTER TABLE __ DROP __ : -------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
ALTER TABLE USUARIO DROP imagen_usuario;
-- ------------------------------------------------------------------------------------- --
-- 09. Agregar Valor x Defecto Columna. ------------------------------------------------ --
--     ALTER TABLE __ ALTER __ SET DEFAULT __ :	---------------------------------------- --
-- ------------------------------------------------------------------------------------- --
ALTER TABLE USUARIO ALTER codigo_rol SET DEFAULT 1;
-- ------------------------------------------------------------------------------------- --
-- 10. Eliminar Valor x Defecto Columna. ----------------------------------------------- --
--     ALTER TABLE __ ALTER __ DROP DEFAULT : ------------------------------------------ --
-- ------------------------------------------------------------------------------------- --
ALTER TABLE USUARIO ALTER codigo_rol DROP DEFAULT;
-- ------------------------------------------------------------------------------------- --
-- 11. Mostrar Creación Tabla. --------------------------------------------------------- --
--     SHOW CREATE TABLE __ : ---------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SHOW CREATE TABLE USUARIO;
SHOW CREATE TABLE CREDENCIAL;
SHOW CREATE TABLE PRODUCTO;
-- ------------------------------------------------------------------------------------- --
-- 12. Eliminar Restricción. ----------------------------------------------------------- --
--     ALTER TABLE __ DROP CONSTRAINT __ : --------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
ALTER TABLE USUARIO DROP CONSTRAINT fk_usuario_roles;
ALTER TABLE INVENTARIO DROP CONSTRAINT fk_inventario_usuario;
ALTER TABLE CREDENCIAL DROP CONSTRAINT fk_credencial_usuario;
ALTER TABLE CREDENCIAL DROP CONSTRAINT fk_credencial_barrio;
ALTER TABLE CREDENCIAL DROP CONSTRAINT fk_credencial_ciudad;
ALTER TABLE PRODUCTO DROP CONSTRAINT fk_producto_marca_producto;
ALTER TABLE PRODUCTO DROP CONSTRAINT fk_producto_nombre_producto;
ALTER TABLE PRODUCTO DROP CONSTRAINT fk_producto_metodo_pago;
ALTER TABLE PRODUCTO DROP CONSTRAINT fk_producto_categoria;
ALTER TABLE CLIENTE DROP CONSTRAINT fk_cliente_credencial;
ALTER TABLE PEDIDO DROP CONSTRAINT fk_credencial_cliente;
ALTER TABLE PEDIDO DROP CONSTRAINT fk_credencial_pedido;
ALTER TABLE COMPRA DROP CONSTRAINT fk_detalle_compra_pedido1;
ALTER TABLE COMPRA DROP CONSTRAINT fk_detalle_compra_producto1;


-- ------------------------------------------------------------------------------------- --
-- 13. Eliminar Índice. ---------------------------------------------------------------- --
--     ALTER TABLE __ DROP INDEX __ : -------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
ALTER TABLE USUARIO DROP INDEX email_UNIQUE;
ALTER TABLE USUARIO DROP INDEX nickname_UNIQUE;
ALTER TABLE USUARIO DROP INDEX ind_usuario_roles;
ALTER TABLE INVENTARIO DROP INDEX fk_inventario_usuario1_idx;
ALTER TABLE CEDENCIAL DROP INDEX direccion_UNIQUE;
ALTER TABLE CREDENCIAL DROP INDEX numero_tel_UNIQUE;
ALTER TABLE CREDENCIAL DROP INDEX ind_credencial_usuario1_idx;
ALTER TABLE CREDENCIAL DROP INDEX ind_credencial_ciudad;
ALTER TABLE CREDENCIAL DROP INDEX fk_credencial_barrio;
ALTER TABLE PRODUCTO DROP INDEX ind_producto_marca_producto;
ALTER TABLE PRODUCTO DROP INDEX ind_producto_nombre_producto;
ALTER TABLE PRODUCTO DROP INDEX ind_producto_metodo_pago;
ALTER TABLE PRODUCTO DROP INDEX ind_producto_categoria;
ALTER TABLE CLIENTE DROP INDEX fk_cliente_credencial1_idx;
ALTER TABLE CREDENCIAL_PEDIDO DROP INDEX ind_credencial_pedido_pedido;
ALTER TABLE CREDENCIAL_PEDIDO DROP INDEX ind_credencial_cliente;
ALTER TABLE DETALLE_COMPRA DROP INDEX ind_detalle_compra_pedido;
ALTER TABLE DETALLE_COMPRA DROP INDEX fk_detalle_compra_producto;

-- ------------------------------------------------------------------------------------- --
-- 14. Eliminar Llave Primaria. -------------------------------------------------------- --
--     ALTER TABLE __ DROP PRIMARY KEY : ----------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
ALTER TABLE USUARIO DROP PRIMARY KEY;
ALTER TABLE CREDENCIAL DROP PRIMARY KEY;
ALTER TABLE INVENTARIO DROP PRIMARY KEY;
ALTER TABLE PRODUCTO DROP PRIMARY KEY;
ALTER TABLE PEDIDO DROP PRIMARY KEY;
ALTER TABLE METODO_PAGO DROP PRIMARY KEY;
ALTER TABLE CATEGORIA DROP PRIMARY KEY;
ALTER TABLE CLIENTE DROP PRIMARY KEY;


-- ------------------------------------------------------------------------------------- --
-- 15. Limpiar Registros. -------------------------------------------------------------- --
--     TRUNCATE __ : ------------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
TRUNCATE USUARIO;
TRUNCATE PEDIDO;
TRUNCATE CLIENTE;
TRUNCATE CREDENCIAL;
TRUNCATE PRODUCTO;

-- ------------------------------------------------------------------------------------- --
-- 16. Eliminar Tabla. ----------------------------------------------------------------- --
--     DROP TABLE __ : ----------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
DROP TABLE USUARIO;
DROP TABLE PEDIDO;
DROP TABLE PRODUCTO;
DROP TABLE CLIENTE;
DROP TABLE DETALLE_COMPRA;
DROP TABLE INVENTARIO;
DROP TABLE ROLES;

-- ------------------------------------------------------------------------------------- --
-- 17. Crear Tabla. -------------------------------------------------------------------- --
--     CREATE TABLE __ ( __ , __ ) : --------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --

-- CREAR TABLA ROLES -------------------------------------------------------------------- --
CREATE TABLE roles (
  codigo_rol INT UNSIGNED NOT NULL,
  nombre_rol CHAR(10) NOT NULL,
  PRIMARY KEY (codigo_rol)
  );
-- CREAR TABLA USUARIO -------------------------------------------------------------------- --
CREATE TABLE  usuario (
  id_usuario INT NOT NULL AUTO_INCREMENT,
  codigo_rol INT UNSIGNED NOT NULL,
  img_usuario BLOB NULL,
  primer_nombre CHAR(10) NOT NULL,
  apellido_paterno CHAR(15) NOT NULL,
  apellido_materno CHAR(15) NOT NULL,
  email VARCHAR(30) NOT NULL,
  passaword VARCHAR(15) NOT NULL,
  nickname VARCHAR(10) NOT NULL,
  PRIMARY KEY (id_usuario),
  UNIQUE INDEX email_UNIQUE (email),
  UNIQUE INDEX nickname_UNIQUE (nickname),
  INDEX ind_usuario_roles (codigo_rol),
  CONSTRAINT fk_usuario_roles
    FOREIGN KEY (codigo_rol)
    REFERENCES roles (codigo_rol)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

-- CREAR INVENTARIO -------------------------------------------------------------------- --

CREATE TABLE inventario (
  codigo_inventario INT NOT NULL AUTO_INCREMENT,
  iid_usuario INT NOT NULL,
  fecha_consulta DATE NOT NULL,
  cant_prodtos_vendidos INT UNSIGNED NOT NULL,
  gastos_inversion DECIMAL(10,2) UNSIGNED NOT NULL,
  PRIMARY KEY (codigo_inventario),
  INDEX fk_inventario_usuario1_idx (iid_usuario),
  CONSTRAINT fk_inventario_usuario
    FOREIGN KEY (iid_usuario)
    REFERENCES usuario (id_usuario)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

-- CREAR TABLA CIUDAD -------------------------------------------------------------------- --

CREATE TABLE ciudad (
  codigo_ciudad SMALLINT(5) NOT NULL AUTO_INCREMENT,
  ciudad CHAR(10) NOT NULL,
  PRIMARY KEY (codigo_ciudad));
-- CREAR TABLA BARRIO -------------------------------------------------------------------- --
CREATE TABLE barrio (
  codigo_barrio SMALLINT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  barrio CHAR(10) NOT NULL,
  PRIMARY KEY (codigo_barrio)
  );

  -- CREAR TABLA  CREDENCIAL-------------------------------------------------------------------- --

CREATE TABLE credencial (
  id_usuario_credencial INT NOT NULL,
  edad SMALLINT(2) UNSIGNED NOT NULL,
  direccion VARCHAR(100) NOT NULL,
  sexo TINYINT NOT NULL,
  codigo_ciudad SMALLINT(5) NOT NULL,
  fecha_nacimiento DATE NOT NULL,
  numero_tel INT UNSIGNED NOT NULL,
  codigo_barrio SMALLINT(5) UNSIGNED NOT NULL,
  PRIMARY KEY (id_usuario_credencial),
  UNIQUE INDEX direccion_UNIQUE (direccion),
  UNIQUE INDEX numero_tel_UNIQUE (numero_tel),
  INDEX ind_credencial_usuario1_idx (id_usuario_credencial),
  INDEX ind_credencial_ciudad (codigo_ciudad),
  INDEX fk_credencial_barrio (codigo_barrio),
  CONSTRAINT fk_credencial_usuario
    FOREIGN KEY (id_usuario_credencial)
    REFERENCES usuario (id_usuario)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_credencial_ciudad
    FOREIGN KEY (codigo_ciudad)
    REFERENCES ciudad (codigo_ciudad)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_credencial_barrio
    FOREIGN KEY (codigo_barrio)
    REFERENCES barrio (codigo_barrio)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

	-- CREAR TABLA PEDIDO -------------------------------------------------------------------- --
CREATE TABLE pedido (
  codigo_pedido INT NOT NULL AUTO_INCREMENT,
  fecha_pedido DATE NOT NULL,
  precio_subtotal DECIMAL(10,2) UNSIGNED NOT NULL,
  direccion_envio VARCHAR(100) NULL DEFAULT 'no_aplica',
  precio_total_pedido DECIMAL(10,2) UNSIGNED NOT NULL,
  iva DECIMAL(5,2) NULL DEFAULT 0,
  codigo_estado INT UNSIGNED NOT NULL,
  PRIMARY KEY (codigo_pedido);

-- CREAR TABLA MARCA_PRODUCTO -------------------------------------------------------------------- --

CREATE TABLE marca_producto (
  id_marca INT NOT NULL AUTO_INCREMENT,
  tipo_marca VARCHAR(30) NOT NULL,
  PRIMARY KEY (id_marca)
  );

-- CREAR TABLA NOMBRE_PRODUCTO-------------------------------------------------------------------- --

CREATE TABLE nombre_producto (
  id_nombre INT UNSIGNED NOT NULL,
  nombre VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_nombre)
  );

-- CREAR  TABLA METODO_PAGO -------------------------------------------------------------------- --

CREATE TABLE metodo_pago (
  codigo_estado INT UNSIGNED NOT NULL,
  tipo_de_pago CHAR(20) NOT NULL,
  estado_pago VARCHAR(30) NOT NULL,
  PRIMARY KEY (codigo_estado)
  );

-- CREAR TABLA CATEGORIA -------------------------------------------------------------------- --

CREATE TABLE categoria (
  id_categoria INT NOT NULL AUTO_INCREMENT,
  clase VARCHAR(30) NOT NULL,
  PRIMARY KEY (id_categoria)
  );

-- CREAR TABLA PRODUCTO -------------------------------------------------------------------- --

CREATE TABLE producto (
  id_producto INT UNSIGNED NOT NULL AUTO_INCREMENT,
  id_marca INT NOT NULL,
  codigo_estado INT UNSIGNED NOT NULL,
  _id_categoria INT NOT NULL,
  id_nombre INT UNSIGNED NOT NULL,
  img_producto BLOB NOT NULL,
  unidad_de_medida CHAR(5) NOT NULL,
  precio_unitario DECIMAL(10,2) UNSIGNED NOT NULL,
  descripcion_gneral VARCHAR(255) NOT NULL,
  existencias INT UNSIGNED NOT NULL,
  PRIMARY KEY (id_producto),
  INDEX ind_producto_marca_producto (id_marca),
  INDEX ind_producto_nombre_producto (id_nombre),
  INDEX ind_producto_metodo_pago (codigo_estado),
  INDEX ind_producto_categoria (_id_categoria),
  CONSTRAINT fk_producto_marca_producto
    FOREIGN KEY (id_marca)
    REFERENCES marca_producto (id_marca)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_producto_nombre_producto
    FOREIGN KEY (id_nombre)
    REFERENCES nombre_producto (id_nombre)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_producto_metodo_pago
    FOREIGN KEY (codigo_estado)
    REFERENCES metodo_pago (codigo_estado)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_producto_categoria
    FOREIGN KEY (_id_categoria)
    REFERENCES categoria (id_categoria)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

-- CREAR TABLA CLIENTE -------------------------------------------------------------------- --

CREATE TABLE cliente (
  clientel_id_usuario INT NOT NULL,
  PRIMARY KEY (clientel_id_usuario),
  INDEX fk_cliente_credencial1_idx (clientel_id_usuario),
  CONSTRAINT fk_cliente_credencial
    FOREIGN KEY (clientel_id_usuario)
    REFERENCES credencial (id_usuario_credencial)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

-- CREAR TABLA CREDENCIAL_PEDIDO -------------------------------------------------------------------- --

CREATE TABLE credencial_pedido (
  credencial_id_usuario INT NOT NULL,
  codigo_pedido INT NOT NULL,
  INDEX ind_credencial_cliente (credencial_id_usuario),
  INDEX ind_credencial_pedido_pedido (codigo_pedido),
  CONSTRAINT fk_credencial_cliente
    FOREIGN KEY (credencial_id_usuario)
    REFERENCES cliente (clientel_id_usuario)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_credencial_pedido
    FOREIGN KEY (codigo_pedido)
    REFERENCES pedido (codigo_pedido)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

-- CREAR TABLA DETALLE_COMPRA -------------------------------------------------------------------- --

CREATE TABLE detalle_compra (
  id_producto INT UNSIGNED NOT NULL,
  codigo_pedido INT NOT NULL,
  cant_product SMALLINT(20) UNSIGNED NOT NULL,
  INDEX ind_detalle_compra_pedido (codigo_pedido),
  INDEX fk_detalle_compra_producto (id_producto),
  CONSTRAINT fk_detalle_compra_pedido1
    FOREIGN KEY (codigo_pedido)
    REFERENCES pedido (codigo_pedido)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_detalle_compra_producto1
    FOREIGN KEY (id_producto)
    REFERENCES producto (id_producto)
    ON DELETE CASCADE
    ON UPDATE CASCADE);
-- ------------------------------------------------------------------------------------- --
-- 18. Renombrar Tabla. ---------------------------------------------------------------- --
--     RENAME TABLE __ TO __ : --------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
RENAME TABLE PRODUCTO TO PRODUCTOS;
RENAME TABLE USUARIO TO CLIENTE;
RENAME TABLE CREDENCIAL_PEDIDO TO CREDENCIALES_PEDIDO;

-- ------------------------------------------------------------------------------------- --
-- 19. Crear Llave Primaria. ----------------------------------------------------------- --
--     ALTER TABLE __ ADD PRIMARY KEY ( __ ) : ----------------------------------------- --
-- ------------------------------------------------------------------------------------- --

ALTER TABLE USUARIO ADD PRIMARY KEY (id_usuario);
ALTER TABLE INVENTARIO ADD PRIMARY KEY (codigo_inventario);
ALTER TABLE BARRIO ADD PRIMARY KEY (codigo_barrio);
ALTER TABLE CIUDAD ADD PRIMARY KEY (codigo_ciudad);
ALTER TABLE CREDENCIAL ADD PRIMARY KEY (id_usuario_credencial);
ALTER TABLE PEDIDO ADD PRIMARY KEY (codigo_pedido);
ALTER TABLE MARCA_PRODUCTO ADD PRIMARY KEY (id_marca);
ALTER TABLE NOMBRE_PRODUCTO ADD PRIMARY KEY (id_nombre);
ALTER TABLE METODO_PAGO ADD PRIMARY KEY (codigo_estado);
ALTER TABLE CATEGORIA ADD PRIMARY KEY (id_categoria);
ALTER TABLE INVENTARIO ADD PRIMARY KEY (codigo_inventario);
ALTER TABLE PRODUCTO ADD PRIMARY KEY (id_producto);
ALTER TABLE CLIENTE ADD PRIMARY KEY (clientel_id_usuario);

-- ------------------------------------------------------------------------------------- --
-- 20. Crear Índice Campo. ------------------------------------------------------------- --
--     CREATE INDEX __ ON __ ( __ ) :  ------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --

CREATE INDEX ind_usuario_roles ON USUARIO (codigo_rol);
CREATE INDEX fk_inventario_usuario1_idx ON INVENTARIO (iid_usuario);
CREATE INDEX ind_credencial_usuario1_idx ON CREDENCIAL (id_usuario_credencial);
CREATE INDEX ind_credencial_ciudad ON CREDENCIAL (codigo_ciudad);
CREATE INDEX fk_credencial_barrio ON CREDENCIAL (codigo_barrio);
CREATE INDEX ind_producto_marca_producto  ON PRODUCTO (id_marca);
CREATE INDEX ind_producto_nombre_producto  ON PRODUCTO (id_nombre);
CREATE INDEX ind_producto_metodo_pago ON PRODUCTO (codigo_estado);
CREATE INDEX ind_producto_categoria ON PRODUCTO (id_categoria);
CREATE INDEX fk_cliente_credencial1_idx  ON CLIENTE (clientel_id_usuario);
CREATE INDEX ind_credencial_pedido_pedido ON CREDENCIAL_PEDIDO (codigo_pedido);
CREATE INDEX ind_detalle_compra_pedido ON DETALLE_COMPRA (codigo_pedido);
CREATE INDEX fk_detalle_compra_producto ON DETALLE_COMPRA (id_producto);



-- ------------------------------------------------------------------------------------- --
-- 21. Crear Índice Multicampo. -------------------------------------------------------- --
--     CREATE INDEX _ ON _ ( __ , __ ) : ----------------------------------------------- -- 
-- ------------------------------------------------------------------------------------- --
CREATE INDEX ind_codigo_cred_identificacion_cred
ON CREDENCIALES (codigo_cred, identificacion_cred);
-- ------------------------------------------------------------------------------------- --
-- 22. Crear Índice Único. ------------------------------------------------------------- --
--     CREATE UNIQUE INDEX __ ON __ ( __ ) : ------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
CREATE UNIQUE INDEX email_UNIQUE ON USUARIO (email);
CREATE UNIQUE INDEX nickname_UNIQUE ON USUARIO (nickname);
CREATE UNIQUE INDEX direccion_UNIQUE  ON CREDENCIAL (direccion);
CREATE UNIQUE INDEX numero_tel_UNIQUE  ON CREDENCIAL (numero_tel);

-- ------------------------------------------------------------------------------------- --
-- 23. Crear Restricción. -------------------------------------------------------------- --
--     ALTER TABLE __ ADD CONSTRAINT __ FOREIGN KEY ( __ ) REFERENCES __ ( __ ) -------- --
--     ON DELETE CASCADE ON UPDATE CASCADE : ------------------------------------------- --
-- ------------------------------------------------------------------------------------- --

--------- RESTRICCIÓN TABLA USUARIO---------------------------------------------------- --

ALTER TABLE USUARIOS ADD 
CONSTRAINT fk_usuario_roles
    FOREIGN KEY (codigo_rol)
    REFERENCES roles (codigo_rol)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

--------- RESTRICCIÓN TABLA INVENTARIO---------------------------------------------------- --

ALTER TABLE INVENTARIO ADD
CONSTRAINT fk_inventario_usuario
    FOREIGN KEY (iid_usuario)
    REFERENCES usuario (id_usuario)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

--------- RESTRICCIÓN TABLA CREDENCIAL---------------------------------------------------- --

ALTER TABLE CREDENCIAL ADD
CONSTRAINT fk_credencial_usuario
    FOREIGN KEY (id_usuario_credencial)
    REFERENCES usuario (id_usuario)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_credencial_ciudad
    FOREIGN KEY (codigo_ciudad)
    REFERENCES ciudad (codigo_ciudad)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_credencial_barrio
    FOREIGN KEY (codigo_barrio)
    REFERENCES barrio (codigo_barrio)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

--------- RESTRICCIÓN TABLA PRODUCTO---------------------------------------------------- --

ALTER TABLE PRODUCTO ADD
CONSTRAINT fk_producto_nombre_producto
    FOREIGN KEY (id_nombre)
    REFERENCES nombre_producto (id_nombre)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_producto_metodo_pago
    FOREIGN KEY (codigo_estado)
    REFERENCES metodo_pago (codigo_estado)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_producto_categoria
    FOREIGN KEY (_id_categoria)
    REFERENCES categoria (id_categoria)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

--------- RESTRICCIÓN TABLA CLIENTE---------------------------------------------------- --

ALTER TABLE CLIENTE ADD 
CONSTRAINT fk_cliente_credencial
    FOREIGN KEY (clientel_id_usuario)
    REFERENCES credencial (id_usuario_credencial)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

--------- RESTRICCIÓN TABLA CREDENCIAL_PEDIDO---------------------------------------------------- --

ALTER TABLE CREDENCIAL_PEDIDO ADD
CONSTRAINT fk_credencial_cliente
    FOREIGN KEY (credencial_id_usuario)
    REFERENCES cliente (clientel_id_usuario)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_credencial_pedido
    FOREIGN KEY (codigo_pedido)
    REFERENCES pedido (codigo_pedido)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

--------- RESTRICCIÓN TABLA DETALLE_COMPRA---------------------------------------------------- --

ALTER TABLE DETALLE_COMPRA ADD
CONSTRAINT fk_detalle_compra_pedido1
    FOREIGN KEY (codigo_pedido)
    REFERENCES pedido (codigo_pedido)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_detalle_compra_producto1
    FOREIGN KEY (id_producto)
    REFERENCES producto (id_producto)
    ON DELETE CASCADE
    ON UPDATE CASCADE;
	
-- ------------------------------------------------------------------------------------- --