----------------------------------------------------------------------------------------------------------
-- ESTRUCTURA DDL
-- ----------------------------------------------------------------------------------------------------------
CREATE SCHEMA IF NOT EXISTS mascotisados DEFAULT CHARACTER SET utf8;
USE mascotisados;
-- ----------------------------------------------------------------------------------------------------------
-- TABLA ROLES
-- ----------------------------------------------------------------------------------------------------------
CREATE TABLE roles (
  codigo_rol INT UNSIGNED NOT NULL,
  nombre_rol CHAR(10) NOT NULL,
  PRIMARY KEY (codigo_rol)
  )ENGINE = InnoDB;
-- ----------------------------------------------------------------------------------------------------------
-- TABLA USUARIO
-- ----------------------------------------------------------------------------------------------------------
CREATE TABLE usuario (
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
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- ----------------------------------------------------------------------------------------------------------
-- TABLA INVENTARIO
-- ----------------------------------------------------------------------------------------------------------
CREATE TABLE inventario (
  codigo_inventario INT NOT NULL AUTO_INCREMENT,
  id_usuario INT NOT NULL,
  cant_product_vendidos INT UNSIGNED NOT NULL,
  stock_disponible INT NOT NULL,
  gastos_inversion DECIMAL(10,2) UNSIGNED NOT NULL,
  total_venta DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (codigo_inventario),
  INDEX fk_inventario_usuario1_idx (id_usuario),
  CONSTRAINT fk_inventario_usuario
    FOREIGN KEY (id_usuario)
    REFERENCES usuario (id_usuario)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- ----------------------------------------------------------------------------------------------------------
-- TABLA BARRIO
-- ----------------------------------------------------------------------------------------------------------
CREATE TABLE barrio(
  codigo_barrio SMALLINT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  barrio CHAR(10) NOT NULL,
  PRIMARY KEY (codigo_barrio)
  )ENGINE = InnoDB;


-- ----------------------------------------------------------------------------------------------------------
-- TABLA CREDENCIAL
-- ----------------------------------------------------------------------------------------------------------
CREATE TABLE credencial(
  id_usuario_credencial INT NOT NULL AUTO_INCREMENT,
  codigo_barrio SMALLINT(5) UNSIGNED NOT NULL,
  sexo TINYINT NOT NULL,
  fecha_nacimiento DATE NOT NULL,
  numero_tel INT UNSIGNED NOT NULL,
  identificacion INT UNSIGNED NOT NULL,
  estado TINYINT NOT NULL,
  PRIMARY KEY (id_usuario_credencial),
  UNIQUE INDEX numero_tel_UNIQUE (numero_tel),
  INDEX ind_credencial_usuario1_idx (id_usuario_credencial),
  INDEX fk_credencial_barrio (codigo_barrio),
  UNIQUE INDEX identificacion_UNIQUE (identificacion),
  CONSTRAINT fk_credencial_usuario
    FOREIGN KEY (id_usuario_credencial)
    REFERENCES usuario (id_usuario)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_credencial_barrio
    FOREIGN KEY (codigo_barrio)
    REFERENCES barrio (codigo_barrio)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- ----------------------------------------------------------------------------------------------------------
-- TABLA CLIENTE
-- ----------------------------------------------------------------------------------------------------------
CREATE TABLE cliente(
  clientel_id_usuario INT NOT NULL,
  PRIMARY KEY (clientel_id_usuario),
  INDEX fk_cliente_credencial1_idx (clientel_id_usuario),
  CONSTRAINT fk_cliente_credencial
    FOREIGN KEY (clientel_id_usuario)
    REFERENCES credencial (id_usuario_credencial)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- ----------------------------------------------------------------------------------------------------------
-- TABLA METODO DE PAGO
-- ----------------------------------------------------------------------------------------------------------
CREATE TABLE metodo_pago(
  codigo_estado INT UNSIGNED NOT NULL,
  tipo_de_pago CHAR(20) NOT NULL,
  estado_pago VARCHAR(30) NOT NULL,
  PRIMARY KEY (codigo_estado))
ENGINE = InnoDB;


-- ----------------------------------------------------------------------------------------------------------
-- TABLA PEDIDO
-- ----------------------------------------------------------------------------------------------------------
CREATE TABLE pedido(
  codigo_pedido INT NOT NULL AUTO_INCREMENT,
  cliente_id_usuario INT NOT NULL,
  fecha_pedido DATE NOT NULL,
  precio_subtotal DECIMAL(10,2) UNSIGNED NOT NULL,
  direccion_envio VARCHAR(100) NULL DEFAULT 'no_aplica',
  iva DECIMAL(5,2) NULL DEFAULT 0,
  codigo_estado INT UNSIGNED NOT NULL,
  PRIMARY KEY (codigo_pedido),
  INDEX ind_pedido_cliente (cliente_id_usuario),
  INDEX ind_pedido_metodo_pago (codigo_estado),
  CONSTRAINT fk_pedido_cliente
    FOREIGN KEY (cliente_id_usuario)
    REFERENCES cliente (clientel_id_usuario)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_pedido_metodo_pago
    FOREIGN KEY (codigo_estado)
    REFERENCES metodo_pago (codigo_estado)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- ----------------------------------------------------------------------------------------------------------
-- TABLA MARCA_PRODUCTO
-- ----------------------------------------------------------------------------------------------------------
CREATE TABLE marca_producto(
  id_marca INT NOT NULL AUTO_INCREMENT,
  tipo_marca VARCHAR(30) NOT NULL,
  PRIMARY KEY (id_marca))
ENGINE = InnoDB;


-- ----------------------------------------------------------------------------------------------------------
-- TABLA CATEGORIA
-- ----------------------------------------------------------------------------------------------------------
CREATE TABLE categoria(
  id_categoria INT NOT NULL AUTO_INCREMENT,
  clase VARCHAR(30) NOT NULL,
  PRIMARY KEY (id_categoria))
ENGINE = InnoDB;


-- ----------------------------------------------------------------------------------------------------------
-- TABLA PRODUCTO
-- ----------------------------------------------------------------------------------------------------------
CREATE TABLE producto(
  id_producto INT UNSIGNED NOT NULL AUTO_INCREMENT,
  id_marca INT NOT NULL,
  _id_categoria INT NOT NULL,
  nombre VARCHAR(100) NOT NULL,
  img_producto BLOB NOT NULL,
  unidad_de_medida CHAR(5) NOT NULL,
  precio_unitario_compra DECIMAL(10,2) UNSIGNED NOT NULL,
  precio_unitario_venta DECIMAL(10,2) NOT NULL,
  descripcion_gneral VARCHAR(255) NOT NULL,
  PRIMARY KEY (id_producto),
  INDEX ind_producto_marca_producto (id_marca),
  INDEX ind_producto_categoria (_id_categoria),
  CONSTRAINT fk_producto_marca_producto
    FOREIGN KEY (id_marca)
    REFERENCES marca_producto (id_marca)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_producto_categoria
    FOREIGN KEY (_id_categoria)
    REFERENCES categoria (id_categoria)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- ----------------------------------------------------------------------------------------------------------
-- TABLA DETALLE_COMPRA
-- ----------------------------------------------------------------------------------------------------------
CREATE TABLE detalle_compra(
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
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- ----------------------------------------------------------------------------------------------------------
-- TABLA FECHA_CONSULTA
-- ----------------------------------------------------------------------------------------------------------
CREATE TABLE fecha_consulta(
  codigo_inventario INT NOT NULL,
  producto_id_producto INT UNSIGNED NOT NULL,
  INDEX ind_fecha_consulta_inventario (codigo_inventario),
  INDEX fk_fecha_consulta_producto1_idx (producto_id_producto),
  CONSTRAINT fk_fecha_consulta_inventario
    FOREIGN KEY (codigo_inventario)
    REFERENCES inventario (codigo_inventario)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_fecha_consulta_producto1
    FOREIGN KEY (producto_id_producto)
    REFERENCES producto (id_producto)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;
