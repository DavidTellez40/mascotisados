
/* ************************************************************************************* */
/* ---------------------------------------- DML ---------------------------------------- */
/* ---------------------------- DATA MANIPULATION LANGUAGE ----------------------------- */
/* ------------------------- LENGUAJE DE MANIPULACIÓN DE DATOS ------------------------- */
/* ------------------------------------- UNA TABLA ------------------------------------- */
/* ------------------------------------------------------------------------------------- */
/* ************************************************************************************* */
/* ------------------------------------------------------------------------------------- */
/* 1. CONSULTAS DE ACCIÓN [Inicio] : . INSERT INTO, UPDATE, DELETE                       */
/* 1.1. Crear o Registrar : .......... INSERT INTO __ VALUES ( __ , __ )                 */
/* 1.1.1. Datos Correctos : .......... INSERT INTO __ VALUES ( __ , __ )                 */
/* 1.1.2. Datos Incorrectos : ........ INSERT INTO __ VALUES ( __ , __ )                 */
/* 1.2. Actualizar : ................. UPDATE __ SET __ = __ WHERE __ = __               */
/* 1.3. Eliminar : ................... DELETE FROM __ WHERE __ = __                      */
/* 2. CONSULTAS DE SELECCIÓN : ....... SELECT                                            */
/* 2.1. Generales : .................. SELECT * FROM __                                  */
/* 2.2. Específicas : ................ SELECT __ , __ FROM __                            */
/* 2.3. Con Criterios: ............... SELECT __ FROM __ WHERE __ = __                   */
/* 2.4. Con Operadores Lógicos : ..... OR, AND, NOT                                      */
/* 2.4.1. 0 [OR] : ................... SELECT __ FROM __ WHERE __ = __ OR __ = __        */
/* 2.4.2. Y [AND] : .................. SELECT __ FROM __ WHERE __ = __ AND __ = __       */
/* 2.4.3. No [NOT] : ................. SELECT __ FROM __ WHERE __ NOT IN ( __ )          */
/* 2.5. Con Operadores Comparación : . <>, <, <=, >, >=                                  */
/* 2.5.1. Diferente [<>] : ........... SELECT __ FROM __ WHERE __ <> __                  */
/* 2.5.2. Menor que [<] : ............ SELECT __ FROM __ WHERE __ <  __                  */
/* 2.5.3. Mayor que [>] : ............ SELECT __ FROM __ WHERE __ >  __                  */
/* 2.5.4. Menor o igual [<=] : ....... SELECT __ FROM __ WHERE __ <=  __                 */
/* 2.5.5. Mayor o igual [>=] : ....... SELECT __ FROM __ WHERE __ >=  __                 */
/* 2.6. Con otros Operadores : ....... LIKE '_%' , BETWEEN __ AND __ , IN ( __ , __ )    */
/* 2.6.1. Comodín [LIKE '_%'] : ...... SELECT __ FROM __ WHERE __ LIKE '_%'              */
/* 2.6.2. Entre [BETWEEN] : .......... SELECT __ FROM __ WHERE __ BETWEEN __ AND __      */
/* 2.6.3. Lista [IN ( __ )] : ........ SELECT __ FROM __ WHERE __ IN( __ , __ )          */
/* 2.7. Ordenadas : .................. ORDER BY __                                       */
/* 2.7.1. Ascendente [ASC] : ......... SELECT __ FROM __ WHERE __ = __ ORDER BY __ ASC   */
/* 2.7.2. Descendente [DESC] : ....... SELECT __ FROM __ WHERE __ = __ ORDER BY __ DESC  */
/* 2.7.3. Combinadas : ............... SELECT __ FROM __ WHERE __ = __ ORDER BY __       */
/* 2.8. Calculadas con Funciones: .... GROUP BY __                                       */
/* 2.8.1. Suma [SUM()] : ............. SELECT __ , SUM( __ ) FROM __ GROUP BY __         */
/* 2.8.2. Promedio [AVG()] : ......... SELECT __ , AVG( __ ) FROM __ GROUP BY __         */
/* 2.8.3. Máximo [MAX()] : ........... SELECT __ , MAX( __ ) FROM __ GROUP BY __         */
/* 2.8.4. Mínimo [MIN()] : ........... SELECT __ , MIN( __ ) FROM __ GROUP BY __         */
/* 2.8.5. Conteo [COUNT()] : ......... SELECT __ , COUNT( __ ) FROM __ GROUP BY __       */
/* 2.9. Calculadas con Alias : ....... SELECT __ , FUN( __ ) AS __ FROM __               */
/* 2.10. Calculadas Condicionantes : . GROUP BY __ HAVING __ = __ OR __ = __             */
/* 2.11. Calculadas con Operadores : . SELECT __ , __ , ROUND( __ * 0.19) AS __ FROM __  */
/* 2.12. Calculadas con Fechas : ..... NOW(), DATE_FORMAT(), DATEDIFF()                  */
/* 2.12.1. Fecha Actual : ............ NOW()                                             */
/* 2.12.2. Formato Fecha : ........... DATE_FORMAT(NOW(), '%Y-%m-%d')                    */
/* 2.12.3. Direfencia Fechas : ....... TIMESTAMPDIFF(DAY, __ , NOW())                    */
/* 3. CONSULTAS DE ACCIÓN [Final] : .. INSERT INTO, UPDATE, DELETE                       */
/* ------------------------------------------------------------------------------------- */
/* ************************************************************************************* */
/* EN CONSOLA: XAMPP / SHELL / cd mysql/bin / mysql -h localhost -u root -p / ENTER      */
/* ************************************************************************************* */
/* ************************************************************************************* */
/* -------------------------- 1. CONSULTAS DE ACCIÓN [Inicio] -------------------------- */
/* ---------------------------- INSERT INTO, UPDATE, DELETE ---------------------------- */
/* ************************************************************************************* */
-- ------------------------------------------------------------------------------------- --
-- 1.1. Crear o Registrar. ------------------------------------------------------------- --
--      INSERT INTO __ VALUES ( __ , __ ) : -------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- 1.1.1. Datos Correctos -------------------------------------------------------------- --
--        INSERT INTO __ VALUES ( __ , __ ) : ------------------------------------------ --
-- ------------------------------------------------------------------------------------- --
INSERT INTO ROLES VALUES 
(null, 'admin'),
(null, 'user'),
(null, 'customer'),
(null, 'seller');
INSERT INTO USUARIOS VALUES 
(1, 'admin-1', 'Albeiro', 'Ramos', 'profealbeiro2020@gmail.com'),
(3, 'customer-1', 'Marinita', 'García', 'marinita@gmail.com'),
(4, 'seller-1', 'Jesús', 'Briceño', 'jesus@gmail.com'),
(2, 'person-1', 'Ezequiel', 'Pantoja', 'ezequiel@gmail.com'),
(2, 'person-2', 'Camilo', 'Céspedes', 'camilo@gmail.com'),
(3, 'customer-2', 'Jorge', 'Campos', 'jorge@gmail.com'),
(1, 'admin-2', 'Pepito', 'Perez', 'pepito@gmail.com'),
(4, 'seller-2', 'Alfonso', 'Camacho', 'alfonso@gmail.com');
INSERT INTO CATEGORIAS VALUES 
(null, 'Mercado'),
(null, 'Alimentos'),
(null, 'Bebidas'),
(null, 'Aseo');
INSERT INTO PRODUCTOS VALUES 
(1, 'prod-1', 'Papa', 950.03, 1.00, 'libra'),
(1, 'prod-2', 'Zanahoria', 630.33, 1.00, 'libra'),
(1, 'prod-3', 'Tomate', 750.55, 1.00, 'libra'),
(2, 'prod-4', 'Arroz', 2500.00, 500.00, 'gramos'),
(2, 'prod-5', 'aceite', 10500.00, 1.00, 'litro'),
(2, 'prod-6', 'Lentejas', 3500.00, 1000.00, 'gramos'),
(3, 'prod-7', 'Agua', 3000.00, 1.50, 'litro'),
(3, 'prod-8', 'Gaseosa', 3500.00, 2.50, 'litro'),
(3, 'prod-9', 'Cerveza', 2500.00, 1.00, 'botella'),
(4, 'prod-10', 'Jabón Baño', 1200.00, 285.00, 'gramos'),
(4, 'prod-11', 'Jabón Ropa', 12000.00, 1000.00, 'gramos'),
(4, 'prod-12', 'Shampoo', 18500.00, 750.00, 'mililitros');

INSERT INTO CREDENCIALES VALUES
('admin-1', 123456, "2022-06-11", sha1('12345'), 1),
('customer-1', 456789, "2022-07-12", sha1('12345'), 0),
('seller-1', 987654, "2022-08-13", sha1('12345'), 1),
('seller-2', 852963, "2022-08-28", sha1('12345'), 1),
('customer-2', 654321, "2022-08-28", sha1('12345'), 0);

INSERT INTO MENSAJES VALUES
('person-1', '2022-08-15', 'Solicitud de Información', 'Quisiera saber sobre... '),
('seller-1', '2022-08-27', 'Reunión Vendedores', 'El próximo fin de semana...'),
('person-2', '2022-08-27', 'Productos a crédito', 'Qué papeles piden para...'),
('admin-1', '2022-08-31', 'Mantenimiento Sistema', 'Se informa a los usuarios...'),
('customer-1', '2022-09-01', 'No tengo el producto', 'Aun no llega el producto'),
('customer-1', '2022-10-02', 'Devolución Dinero', 'Aun no llega el producto');
('customer-1', '2022-10-02', 'Devolución Dinero', 'Aun no llega el producto'),
('seller-2', '2022-10-02', 'Reunión por Cumpleaños', 'El próximo 6 de Octubre...');

INSERT INTO CREDENCIALES VALUES
('admin-1', 123456, "2022-06-11", sha1('12345'), 1),
('customer-1', 456789, "2022-07-12", sha1('12345'), 0),
('seller-1', 987654, "2022-08-13", sha1('12345'), 1),
('seller-1', 852963, "2022-08-28", 'Bogotá', 'Carrera 5 con 7', sha1('12345'), 1),
('customer-2', 654321, "2022-08-28", 'Medellín', 'Tv 8 con 15', sha1('12345'), 0);

INSERT INTO VENDEDORES VALUES
('seller-1', 1500000.00),
('seller-2', 1800000.00);
INSERT INTO CLIENTES VALUES
('customer-1', '2005-05-05'),
INSERT INTO CLIENTES VALUES
('customer-1', '2005-05-05'),
INSERT INTO CLIENTES VALUES
('customer-1', '2005-05-05'),
('customer-2', '1983-04-1');

INSERT INTO PEDIDOS VALUES
('pedido-1','2022-10-13','Bogotá','Av Siempre Viva',23850.90,4531.67,28382.57,'entregado'),
('pedido-2','2022-10-14','Cali','Calle 3 con 4',3500.00,665.00,4165.00,'enviado'),
('pedido-3','2022-10-14','Bogotá','Carrera 5 con 7',6952.85,1321.04,8273.89,'por_pagar'),
('pedido-4','2022-10-15','Cali','Calle 2 con 8',46100.00,8759.00,54859.00,'en_cotización'),
('pedido-5','2022-11-02','Medellín','Tv 8 con 15',74000.00,14060.00,88060.00,'enviado');
('customer-1','pedido-1','2022-10-13','Bogotá','Av Siempre Viva',23850.90,4531.67,28382.57,'entregado'),
('customer-2','pedido-2','2022-10-14','Cali','Calle 3 con 4',3500.00,665.00,4165.00,'enviado'),
('customer-1','pedido-3','2022-10-14','Bogotá','Carrera 5 con 7',6952.85,1321.04,8273.89,'por_pagar'),
('customer-2','pedido-4','2022-10-15','Cali','Calle 2 con 8',46100.00,8759.00,54859.00,'en_cotización'),
('customer-1','pedido-5','2022-11-02','Medellín','Tv 8 con 15',74000.00,14060.00,88060.00,'enviado');

INSERT INTO LISTA_PRODUCTOS VALUES
('pedido-1', 'producto-1', 3),
('pedido-1', 'producto-5', 2),
('pedido-2', 'producto-6', 1),
('pedido-3', 'producto-2', 5),
('pedido-3', 'producto-1', 4),
('pedido-4', 'producto-10', 3),
('pedido-4', 'producto-11', 2),
('pedido-4', 'producto-6', 1),
('pedido-4', 'producto-7', 5),
('pedido-5', 'producto-12', 4);

INSERT INTO LISTA_PRODUCTOS VALUES
('customer-1', 'pedido-1'),
('pedido-1', 'prod-1', 3),
('pedido-1', 'prod-5', 2),
('pedido-2', 'prod-6', 1),
('pedido-3', 'prod-2', 5),
('pedido-3', 'prod-1', 4),
('pedido-4', 'prod-10', 3),
('pedido-4', 'prod-11', 2),
('pedido-4', 'prod-6', 1),
('pedido-4', 'prod-7', 5),
('pedido-5', 'prod-12', 4);

INSERT INTO VENDEDORES_PEDIDOS VALUES
('seller-1', 'pedido-1'),
('customer-2', 'pedido-2'),
('customer-1', 'pedido-3'),
('customer-2', 'pedido-4'),
('seller-2', 'pedido-4'),
('customer-1', 'pedido-5');
('seller-2', 'pedido-4');


-- ------------------------------------------------------------------------------------- --
-- 1.1.2. Datos Incorrectos ------------------------------------------------------------ --
--        INSERT INTO __ VALUES ( __ , __ ) : ------------------------------------------ --
-- ------------------------------------------------------------------------------------- --
INSERT INTO USUARIOS VALUES 
(5, 'customer-3', 'Alejandra', 'Martínez', 'alejandra@gmail.com');
INSERT INTO USUARIOS VALUES 
-- 1.1.2. Datos Incorrectos ------------------------------------------------------------ --
--        INSERT INTO __ VALUES ( __ , __ ) : ------------------------------------------ --
-- ------------------------------------------------------------------------------------- --
INSERT INTO USUARIOS VALUES 
(5, 'customer-3', 'Alejandra', 'Martínez', 'alejandra@gmail.com');
INSERT INTO USUARIOS VALUES 
-- 1.1.2. Datos Incorrectos ------------------------------------------------------------ --
--        INSERT INTO __ VALUES ( __ , __ ) : ------------------------------------------ --
-- ------------------------------------------------------------------------------------- --
INSERT INTO USUARIOS VALUES 
(5, 'customer-3', 'Alejandra', 'Martínez', 'alejandra@gmail.com');
INSERT INTO USUARIOS VALUES 
(3, 'customer-1', 'Wilson', 'Cifuentes', 'wilson@gmail.com');

INSERT INTO USUARIOS VALUES 
(4, 'seller-2', 'Marina', 'Roncancio', 'marinita@gmail.com');
(4, 'seller-3', 'Marina', 'Roncancio', 'marinita@gmail.com');

INSERT INTO MENSAJES VALUES
('person-3', '2022-08-15', 'Solicitud de Información', 'Quisiera saber sobre... ');

INSERT INTO CREDENCIALES VALUES
('admin-1', 666555, '2022-09-25', 'Bucaramanga', 'Av Matamoros', sha1('45678'), 1);
('admin-1', 666555, '2022-09-25', sha1('45678'), 1);

INSERT INTO CREDENCIALES VALUES
('admin-2', 987654, "2022-06-11", 'Bogotá', 'Av Siempre Viva', sha1('12345'), 1);
('admin-2', 987654, "2022-06-11", sha1('12345'), 1);

-- Datos válidos para demostrar la actualización y eliminación en Cascada
INSERT INTO CREDENCIALES VALUES
('admin-2', 213456, "2022-06-11", 'Medellín', 'Calle 1 con 2', sha1('12345'), 0);
('admin-2', 213456, "2022-06-11", sha1('12345'), 0);

INSERT INTO CREDENCIALES VALUES 
('person-1', 666555, '2022-09-25', 'Bucaramanga', 'Av Matamoros', sha1('45678'), 1);
('person-1', 666555, '2022-09-25', sha1('45678'), 1);

INSERT INTO VENDEDORES_PEDIDOS VALUES
('seller-1', 'pedido-4');

-- ------------------------------------------------------------------------------------- --
-- 1.2. Actualizar. -------------------------------------------------------------------- --
--      UPDATE __ SET __ = __ WHERE __ = __ : ------------------------------------------ --
-- ------------------------------------------------------------------------------------- --
UPDATE ROLES SET 
nombre_rol = 'person'
WHERE codigo_rol = 2;
UPDATE USUARIOS SET 
codigo_user = 'admin-3'
WHERE codigo_user = 'admin-2';
-- ------------------------------------------------------------------------------------- --
-- 1.3. Eliminar. ---------------------------------------------------------------------- --
--      DELETE FROM __ WHERE __ = __ : ------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
DELETE FROM USUARIOS 
WHERE codigo_user = 'admin-3';
/* ************************************************************************************* */
/* ----------------------------- 2. CONSULTAS DE SELECCIÓN ----------------------------- */
/* --------------------------------------- SELECT -------------------------------------- */
/* ************************************************************************************* */
-- ------------------------------------------------------------------------------------- --
-- 2.1. Generales. --------------------------------------------------------------------- --
--      SELECT * FROM __ : ------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM USUARIOS;
-- ------------------------------------------------------------------------------------- --
-- 2.2. Específicas. ------------------------------------------------------------------- --
--      SELECT __ , __ FROM __ : ------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_user, correo_user, codigo_rol FROM USUARIOS;
-- ------------------------------------------------------------------------------------- --
-- 2.3. Con Criterios. ----------------------------------------------------------------- --
--      SELECT __ , __ FROM __ WHERE __ = __ : ----------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_rol, codigo_user, correo_user FROM USUARIOS
WHERE codigo_rol = 3;
-- ------------------------------------------------------------------------------------- --
-- 2.4. Con Operadores Lógicos. -------------------------------------------------------- --
--      OR, AND, NOT : ----------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- 2.4.1. O [OR] . --------------------------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ = __ OR __ = __ : ---------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_rol, codigo_user, correo_user FROM USUARIOS 
WHERE codigo_rol = 2 OR codigo_rol = 3;
-- ------------------------------------------------------------------------------------- --
-- 2.4.2. Y [AND] . -------------------------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ = __ AND __ = __ : --------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_cred, ciudad_cred FROM CREDENCIALES 
WHERE ciudad_cred = 'Bogotá' AND estado_cred = 1;
-- ------------------------------------------------------------------------------------- --
-- 2.4.3. NO [NOT] . ------------------------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ = __ AND __ = __ : --------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_cred, ciudad_cred FROM CREDENCIALES 
WHERE ciudad_cred NOT IN ('Bogotá');
-- ------------------------------------------------------------------------------------- --
-- 2.5. Con Operadores de Comparación. --------------------------------------- --
--      <>, <, <=, >, >= : ------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- 2.5.1. Diferente [<>] . ------------------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ <> __ : -------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM PRODUCTOS WHERE precio_producto <> 3500;
-- ------------------------------------------------------------------------------------- --
-- 2.5.2. Menor que [<] . -------------------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ < __ : --------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM PRODUCTOS WHERE precio_producto < 3500;
-- ------------------------------------------------------------------------------------- --
-- 2.5.3. Mayor que [>] . -------------------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ > __ : --------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM PRODUCTOS WHERE precio_producto > 3500;
-- ------------------------------------------------------------------------------------- --
-- 2.5.4. Menor o igual que [<=] . ----------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ > __ : --------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM PRODUCTOS WHERE precio_producto <= 3500;
-- ------------------------------------------------------------------------------------- --
-- 2.5.5. Mayor o igual que [>=] . ----------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ > __ : --------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM PRODUCTOS WHERE precio_producto >= 3500;
-- ------------------------------------------------------------------------------------- --
-- 2.6. Con otros Operadores. ---------------------------------------------------------- --
--      LIKE, BETWEEN, IN -------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- 2.6.1. Comodín [LIKE '_%'] . -------------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ LIKE '_%' : ---------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM PRODUCTOS WHERE nombre_producto LIKE 'j%';
SELECT * FROM PRODUCTOS WHERE nombre_producto LIKE '_a%';
-- ------------------------------------------------------------------------------------- --
-- 2.6.2. Entre [BETWEEN] . ------------------------------------------------------------ --
--        SELECT __ , __ FROM __ WHERE __ BETWEEN __ AND __ : -------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM CREDENCIALES 
WHERE fecha_ingreso_cred BETWEEN '2022-08-01' AND '2022-08-31';
SELECT * FROM CREDENCIALES 
WHERE fecha_ingreso_cred >= '2022-08-01' AND fecha_ingreso_cred <= '2022-08-31';
-- ------------------------------------------------------------------------------------- --
-- 2.6.3. Lista [IN ( __ )] . ---------------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ IN( __ , __ ) : ------------------------------ --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM PRODUCTOS 
WHERE unidad_producto IN (1,500);
-- ------------------------------------------------------------------------------------- --
-- 2.7. Ordenadas. --------------------------------------------------------------------- --
--      ORDER BY, ASC, DESC : ---------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- 2.7.1. Ascendente [ASC] . ----------------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ = __ ORDER BY __ ASC; : ---------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM PRODUCTOS 
WHERE codigo_categoria = 2 
ORDER BY codigo_categoria;
SELECT * FROM PRODUCTOS
WHERE codigo_categoria = 2 OR codigo_categoria = 3 
ORDER BY codigo_categoria ASC;
SELECT * FROM PRODUCTOS
WHERE codigo_categoria = 2 OR codigo_categoria = 3 
ORDER BY precio_producto ASC;
-- ------------------------------------------------------------------------------------- --
-- 2.7.2. Descendente [DESC] . --------------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ = __ ORDER BY __ DES; : ---------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM PRODUCTOS 
WHERE codigo_categoria = 2 
ORDER BY codigo_categoria DESC;
SELECT * FROM PRODUCTOS
WHERE codigo_categoria = 2 OR codigo_categoria = 3 
ORDER BY codigo_categoria DESC;
SELECT * FROM PRODUCTOS
WHERE codigo_categoria = 2 OR codigo_categoria = 3 
ORDER BY precio_producto DESC;
-- ------------------------------------------------------------------------------------- --
-- 2.7.3. Combinadas . ----------------------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ = __ ORDER BY __ DES; : ---------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM PRODUCTOS 
WHERE codigo_categoria = 2 OR codigo_categoria = 3 
ORDER BY codigo_categoria ASC, precio_producto DESC;
-- ------------------------------------------------------------------------------------- --
-- 2.8. Calculadas con Funciones. ------------------------------------------------------ --
--      GROUP BY : --------------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- 2.8.1. Suma [SUM()] . --------------------------------------------------------------- --
--        SELECT __ , SUM( __ ) FROM __ GROUP BY __ : ---------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_categoria, SUM(precio_producto) FROM PRODUCTOS 
WHERE codigo_categoria = 3;
SELECT codigo_categoria, SUM(precio_producto) FROM PRODUCTOS 
GROUP BY codigo_categoria;
-- ------------------------------------------------------------------------------------- --
-- 2.8.2. Promedio [AVG()] . ----------------------------------------------------------- --
--        SELECT __ , AVG( __ ) FROM __ GROUP BY __ : ---------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_categoria, AVG(precio_producto) FROM PRODUCTOS 
WHERE codigo_categoria = 3;
SELECT codigo_categoria, AVG(precio_producto) FROM PRODUCTOS 
GROUP BY codigo_categoria;
-- ------------------------------------------------------------------------------------- --
-- 2.8.3. Máximo [MAX()] . ------------------------------------------------------------- --
--        SELECT __ , MAX( __ ) FROM __ GROUP BY __ : -------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_categoria, MAX(precio_producto) FROM PRODUCTOS 
WHERE codigo_categoria = 3;
SELECT codigo_categoria, MAX(precio_producto) FROM PRODUCTOS 
GROUP BY codigo_categoria;
-- ------------------------------------------------------------------------------------- --
-- 2.8.4. Mínimo [MIN()] . ------------------------------------------------------------- --
--        SELECT __ , MIN( __ ) FROM __ GROUP BY __ : -------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_categoria, MIN(precio_producto) FROM PRODUCTOS 
WHERE codigo_categoria = 3;
SELECT codigo_categoria, MIN(precio_producto) FROM PRODUCTOS 
GROUP BY codigo_categoria;
-- ------------------------------------------------------------------------------------- --
-- 2.8.5. Conteo [COUNT()] . ----------------------------------------------------------- --
--        SELECT __ , COUT( __ ) FROM __ GROUP BY __ : --------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT ciudad_cred, COUNT(codigo_cred) FROM CREDENCIALES 
WHERE ciudad_cred = 'Bogotá';
SELECT ciudad_cred, COUNT(codigo_cred) FROM CREDENCIALES 
GROUP BY ciudad_cred;
-- ------------------------------------------------------------------------------------- --
-- 2.9. Calculadas con Alias. ---------------------------------------------------------- --
--      SELECT __ , FUN( __ ) AS __ : -------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_categoria, SUM(precio_producto) AS suma_productos 
FROM PRODUCTOS 
GROUP BY codigo_categoria 
ORDER BY suma_productos ASC;
SELECT codigo_categoria, AVG(precio_producto) AS promedio_productos 
FROM PRODUCTOS 
GROUP BY codigo_categoria 
ORDER BY promedio_productos DESC;
SELECT codigo_categoria, MAX(precio_producto) AS maximo_productos 
FROM PRODUCTOS 
GROUP BY codigo_categoria 
ORDER BY maximo_productos ASC;
SELECT codigo_categoria, MAX(precio_producto) AS minimo_productos 
FROM PRODUCTOS 
GROUP BY codigo_categoria 
ORDER BY minimo_productos DESC;
SELECT ciudad_cred, COUNT(codigo_cred) AS cant_clientes 
FROM CREDENCIALES 
GROUP BY ciudad_cred 
ORDER BY cant_clientes ASC;
-- ------------------------------------------------------------------------------------- --
-- 2.10. Calculadas Condicionantes. ---------------------------------------------------- --
--      SELECT __ , FUN( __ ) AS __ FROM __ GROUP BY __ HAVING __ = __ OR __ = __ : ---- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_categoria, SUM(precio_producto) AS suma_productos 
FROM PRODUCTOS 
GROUP BY codigo_categoria HAVING codigo_categoria = 2 OR codigo_categoria = 3 
ORDER BY suma_productos DESC;
SELECT codigo_categoria, AVG(precio_producto) AS promedio_productos 
FROM PRODUCTOS 
GROUP BY codigo_categoria HAVING codigo_categoria = 2 OR codigo_categoria = 3 
ORDER BY promedio_productos ASC;
SELECT codigo_categoria, MAX(precio_producto) AS maximo_productos 
FROM PRODUCTOS 
GROUP BY codigo_categoria HAVING codigo_categoria = 2 OR codigo_categoria = 3 
ORDER BY maximo_productos DESC;
SELECT codigo_categoria, MIN(precio_producto) AS maximo_productos 
FROM PRODUCTOS 
GROUP BY codigo_categoria HAVING codigo_categoria = 2 OR codigo_categoria = 3 
ORDER BY maximo_productos ASC;
SELECT ciudad_cred, COUNT(codigo_cred) AS cant_clientes 
FROM CREDENCIALES 
GROUP BY ciudad_cred HAVING ciudad_cred = "Bogotá" OR ciudad_cred = "Cali"
ORDER BY cant_clientes DESC;
-- ------------------------------------------------------------------------------------- --
-- 2.11. Calculadas con Operadores. ---------------------------------------------------- --
--        SELECT __ , __ , __*0.19 AS __ FROM __ : ------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT nombre_producto, precio_producto, precio_producto * 0.19 
FROM PRODUCTOS;
SELECT nombre_producto, precio_producto, precio_producto * 0.19 AS iva_producto 
FROM PRODUCTOS;
SELECT nombre_producto, precio_producto, ROUND(precio_producto*0.19,2) AS iva_producto 
FROM PRODUCTOS;
-- ------------------------------------------------------------------------------------- --
-- 2.12. Calculadas con Fechas. -------------------------------------------------------- --
--       NOW(), DATE_FORMAT(), DATEDIFF() : -------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- 2.12.1. Fecha Actual. --------------------------------------------------------------- --
--         SELECT __ , __ , NOW() AS __ FROM __ : -------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT nombre_producto, precio_producto, NOW() FROM PRODUCTOS;
SELECT nombre_producto, precio_producto, NOW() AS fecha_actual FROM PRODUCTOS;
-- ------------------------------------------------------------------------------------- --
-- 2.12.2. Formato de Fecha. ----------------------------------------------------------- --
--         SELECT __ , __ , DATE_FORMAT(NOW(), '%Y-%m-%d') AS __ FROM __ : ------------- --
-- ------------------------------------------------------------------------------------- --
SELECT nombre_producto, precio_producto, 
DATE_FORMAT(NOW(),'%Y-%m-%d') AS fecha_actual 
FROM PRODUCTOS;
-- ------------------------------------------------------------------------------------- --
-- 2.12.3. Diferencia Fechas. ---------------------------------------------------------- --
--         SELECT __ , fecha , --------------------------------------------------------- --
--         DATE_FORMAT(NOW(), '%Y-%m-%d') AS __ , -------------------------------------- --
--         TIMESTAMPDIFF(DAY, __ , NOW()) AS __ , -------------------------------------- --
--         FROM __ : ------------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_cred, estado_cred, fecha_ingreso_cred,
DATE_FORMAT(NOW(),'%Y-%m-%d') AS fecha_actual,
TIMESTAMPDIFF(YEAR, fecha_ingreso_cred, NOW()) AS años_transcurridos,
TIMESTAMPDIFF(MONTH, fecha_ingreso_cred, NOW()) AS meses_transcurridos, 
TIMESTAMPDIFF(DAY, fecha_ingreso_cred, NOW()) - 
TIMESTAMPDIFF(MONTH, fecha_ingreso_cred, NOW()) * 30 AS dias_transcurridos
FROM CREDENCIALES;
/* ************************************************************************************* */
/* -------------------------- 3. CONSULTAS DE ACCIÓN [Final] --------------------------- */
/* ---------------------------- INSERT INTO, UPDATE, DELETE ---------------------------- */
/* ************************************************************************************* */
INSERT INTO MENSAJES VALUES
('admin-1',DATE_FORMAT(NOW(),'%Y-%m-%d'),'Mantenimiento Sistema','Se informa a los ...');
INSERT INTO USUARIOS VALUES 
(1, 'admin-2', 'Pepito', 'Perez', 'pepito@gmail.com');
INSERT INTO CREDENCIALES VALUES
('admin-2',
213456,
DATE_FORMAT(NOW(),'%Y-%m-%d'),
'Medellín',
'Calle 1 con 2',
sha1('12345'),
0);
--      UPDATE __ SET __ = __ WHERE __ = __ : ------------------------------------------ --
-- ------------------------------------------------------------------------------------- --
UPDATE ROLES SET 
nombre_rol = 'person'
WHERE codigo_rol = 2;
UPDATE USUARIOS SET 
codigo_user = 'admin-3'
WHERE codigo_user = 'admin-2';
-- ------------------------------------------------------------------------------------- --
-- 1.3. Eliminar. ---------------------------------------------------------------------- --
--      DELETE FROM __ WHERE __ = __ : ------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
DELETE FROM USUARIOS 
WHERE codigo_user = 'admin-3';
/* ************************************************************************************* */
/* ----------------------------- 2. CONSULTAS DE SELECCIÓN ----------------------------- */
/* --------------------------------------- SELECT -------------------------------------- */
/* ************************************************************************************* */
-- ------------------------------------------------------------------------------------- --
-- 2.1. Generales. --------------------------------------------------------------------- --
--      SELECT * FROM __ : ------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM USUARIOS;
-- ------------------------------------------------------------------------------------- --
-- 2.2. Específicas. ------------------------------------------------------------------- --
--      SELECT __ , __ FROM __ : ------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_user, correo_user, codigo_rol FROM USUARIOS;
-- ------------------------------------------------------------------------------------- --
-- 2.3. Con Criterios. ----------------------------------------------------------------- --
--      SELECT __ , __ FROM __ WHERE __ = __ : ----------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_rol, codigo_user, correo_user FROM USUARIOS
WHERE codigo_rol = 3;
-- ------------------------------------------------------------------------------------- --
-- 2.4. Con Operadores Lógicos. -------------------------------------------------------- --
--      OR, AND, NOT : ----------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- 2.4.1. O [OR] . --------------------------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ = __ OR __ = __ : ---------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_rol, codigo_user, correo_user FROM USUARIOS 
WHERE codigo_rol = 2 OR codigo_rol = 3;
-- ------------------------------------------------------------------------------------- --
-- 2.4.2. Y [AND] . -------------------------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ = __ AND __ = __ : --------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_cred, ciudad_cred FROM CREDENCIALES 
WHERE ciudad_cred = 'Bogotá' AND estado_cred = 1;
-- ------------------------------------------------------------------------------------- --
-- 2.4.3. NO [NOT] . ------------------------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ = __ AND __ = __ : --------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_cred, ciudad_cred FROM CREDENCIALES 
WHERE ciudad_cred NOT IN ('Bogotá');
-- ------------------------------------------------------------------------------------- --
-- 2.5. Con Operadores de Comparación. --------------------------------------- --
--      <>, <, <=, >, >= : ------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- 2.5.1. Diferente [<>] . ------------------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ <> __ : -------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM PRODUCTOS WHERE precio_producto <> 3500;
-- ------------------------------------------------------------------------------------- --
-- 2.5.2. Menor que [<] . -------------------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ < __ : --------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM PRODUCTOS WHERE precio_producto < 3500;
-- ------------------------------------------------------------------------------------- --
-- 2.5.3. Mayor que [>] . -------------------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ > __ : --------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM PRODUCTOS WHERE precio_producto > 3500;
-- ------------------------------------------------------------------------------------- --
-- 2.5.4. Menor o igual que [<=] . ----------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ > __ : --------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM PRODUCTOS WHERE precio_producto <= 3500;
-- ------------------------------------------------------------------------------------- --
-- 2.5.5. Mayor o igual que [>=] . ----------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ > __ : --------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM PRODUCTOS WHERE precio_producto >= 3500;
-- ------------------------------------------------------------------------------------- --
-- 2.6. Con otros Operadores. ---------------------------------------------------------- --
--      LIKE, BETWEEN, IN -------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- 2.6.1. Comodín [LIKE '_%'] . -------------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ LIKE '_%' : ---------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM PRODUCTOS WHERE nombre_producto LIKE 'j%';
SELECT * FROM PRODUCTOS WHERE nombre_producto LIKE '_a%';
-- ------------------------------------------------------------------------------------- --
-- 2.6.2. Entre [BETWEEN] . ------------------------------------------------------------ --
--        SELECT __ , __ FROM __ WHERE __ BETWEEN __ AND __ : -------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM CREDENCIALES 
WHERE fecha_ingreso_cred BETWEEN '2022-08-01' AND '2022-08-31';
SELECT * FROM CREDENCIALES 
WHERE fecha_ingreso_cred >= '2022-08-01' AND fecha_ingreso_cred <= '2022-08-31';
-- ------------------------------------------------------------------------------------- --
-- 2.6.3. Lista [IN ( __ )] . ---------------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ IN( __ , __ ) : ------------------------------ --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM PRODUCTOS 
WHERE unidad_producto IN (1,500);
-- ------------------------------------------------------------------------------------- --
-- 2.7. Ordenadas. --------------------------------------------------------------------- --
--      ORDER BY, ASC, DESC : ---------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- 2.7.1. Ascendente [ASC] . ----------------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ = __ ORDER BY __ ASC; : ---------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM PRODUCTOS 
WHERE codigo_categoria = 2 
ORDER BY codigo_categoria;
SELECT * FROM PRODUCTOS
WHERE codigo_categoria = 2 OR codigo_categoria = 3 
ORDER BY codigo_categoria ASC;
SELECT * FROM PRODUCTOS
WHERE codigo_categoria = 2 OR codigo_categoria = 3 
ORDER BY precio_producto ASC;
-- ------------------------------------------------------------------------------------- --
-- 2.7.2. Descendente [DESC] . --------------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ = __ ORDER BY __ DES; : ---------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM PRODUCTOS 
WHERE codigo_categoria = 2 
ORDER BY codigo_categoria DESC;
SELECT * FROM PRODUCTOS
WHERE codigo_categoria = 2 OR codigo_categoria = 3 
ORDER BY codigo_categoria DESC;
SELECT * FROM PRODUCTOS
WHERE codigo_categoria = 2 OR codigo_categoria = 3 
ORDER BY precio_producto DESC;
-- ------------------------------------------------------------------------------------- --
-- 2.7.3. Combinadas . ----------------------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ = __ ORDER BY __ DES; : ---------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM PRODUCTOS 
WHERE codigo_categoria = 2 OR codigo_categoria = 3 
ORDER BY codigo_categoria ASC, precio_producto DESC;
-- ------------------------------------------------------------------------------------- --
-- 2.8. Calculadas con Funciones. ------------------------------------------------------ --
--      GROUP BY : --------------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- 2.8.1. Suma [SUM()] . --------------------------------------------------------------- --
--        SELECT __ , SUM( __ ) FROM __ GROUP BY __ : ---------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_categoria, SUM(precio_producto) FROM PRODUCTOS 
WHERE codigo_categoria = 3;
SELECT codigo_categoria, SUM(precio_producto) FROM PRODUCTOS 
GROUP BY codigo_categoria;
-- ------------------------------------------------------------------------------------- --
-- 2.8.2. Promedio [AVG()] . ----------------------------------------------------------- --
--        SELECT __ , AVG( __ ) FROM __ GROUP BY __ : ---------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_categoria, AVG(precio_producto) FROM PRODUCTOS 
WHERE codigo_categoria = 3;
SELECT codigo_categoria, AVG(precio_producto) FROM PRODUCTOS 
GROUP BY codigo_categoria;
-- ------------------------------------------------------------------------------------- --
-- 2.8.3. Máximo [MAX()] . ------------------------------------------------------------- --
--        SELECT __ , MAX( __ ) FROM __ GROUP BY __ : -------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_categoria, MAX(precio_producto) FROM PRODUCTOS 
WHERE codigo_categoria = 3;
SELECT codigo_categoria, MAX(precio_producto) FROM PRODUCTOS 
GROUP BY codigo_categoria;
-- ------------------------------------------------------------------------------------- --
-- 2.8.4. Mínimo [MIN()] . ------------------------------------------------------------- --
--        SELECT __ , MIN( __ ) FROM __ GROUP BY __ : -------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_categoria, MIN(precio_producto) FROM PRODUCTOS 
WHERE codigo_categoria = 3;
SELECT codigo_categoria, MIN(precio_producto) FROM PRODUCTOS 
GROUP BY codigo_categoria;
-- ------------------------------------------------------------------------------------- --
-- 2.8.5. Conteo [COUNT()] . ----------------------------------------------------------- --
--        SELECT __ , COUT( __ ) FROM __ GROUP BY __ : --------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT ciudad_cred, COUNT(codigo_cred) FROM CREDENCIALES 
WHERE ciudad_cred = 'Bogotá';
SELECT ciudad_cred, COUNT(codigo_cred) FROM CREDENCIALES 
GROUP BY ciudad_cred;
-- ------------------------------------------------------------------------------------- --
-- 2.9. Calculadas con Alias. ---------------------------------------------------------- --
--      SELECT __ , FUN( __ ) AS __ : -------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_categoria, SUM(precio_producto) AS suma_productos 
FROM PRODUCTOS 
GROUP BY codigo_categoria 
ORDER BY suma_productos ASC;
SELECT codigo_categoria, AVG(precio_producto) AS promedio_productos 
FROM PRODUCTOS 
GROUP BY codigo_categoria 
ORDER BY promedio_productos DESC;
SELECT codigo_categoria, MAX(precio_producto) AS maximo_productos 
FROM PRODUCTOS 
GROUP BY codigo_categoria 
ORDER BY maximo_productos ASC;
SELECT codigo_categoria, MAX(precio_producto) AS minimo_productos 
FROM PRODUCTOS 
GROUP BY codigo_categoria 
ORDER BY minimo_productos DESC;
SELECT ciudad_cred, COUNT(codigo_cred) AS cant_clientes 
FROM CREDENCIALES 
GROUP BY ciudad_cred 
ORDER BY cant_clientes ASC;
-- ------------------------------------------------------------------------------------- --
-- 2.10. Calculadas Condicionantes. ---------------------------------------------------- --
--      SELECT __ , FUN( __ ) AS __ FROM __ GROUP BY __ HAVING __ = __ OR __ = __ : ---- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_categoria, SUM(precio_producto) AS suma_productos 
FROM PRODUCTOS 
GROUP BY codigo_categoria HAVING codigo_categoria = 2 OR codigo_categoria = 3 
ORDER BY suma_productos DESC;
SELECT codigo_categoria, AVG(precio_producto) AS promedio_productos 
FROM PRODUCTOS 
GROUP BY codigo_categoria HAVING codigo_categoria = 2 OR codigo_categoria = 3 
ORDER BY promedio_productos ASC;
SELECT codigo_categoria, MAX(precio_producto) AS maximo_productos 
FROM PRODUCTOS 
GROUP BY codigo_categoria HAVING codigo_categoria = 2 OR codigo_categoria = 3 
ORDER BY maximo_productos DESC;
SELECT codigo_categoria, MIN(precio_producto) AS maximo_productos 
FROM PRODUCTOS 
GROUP BY codigo_categoria HAVING codigo_categoria = 2 OR codigo_categoria = 3 
ORDER BY maximo_productos ASC;
SELECT ciudad_cred, COUNT(codigo_cred) AS cant_clientes 
FROM CREDENCIALES 
GROUP BY ciudad_cred HAVING ciudad_cred = "Bogotá" OR ciudad_cred = "Cali"
ORDER BY cant_clientes DESC;
-- ------------------------------------------------------------------------------------- --
-- 2.11. Calculadas con Operadores. ---------------------------------------------------- --
--        SELECT __ , __ , __*0.19 AS __ FROM __ : ------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT nombre_producto, precio_producto, precio_producto * 0.19 
FROM PRODUCTOS;
SELECT nombre_producto, precio_producto, precio_producto * 0.19 AS iva_producto 
FROM PRODUCTOS;
SELECT nombre_producto, precio_producto, ROUND(precio_producto*0.19,2) AS iva_producto 
FROM PRODUCTOS;
-- ------------------------------------------------------------------------------------- --
-- 2.12. Calculadas con Fechas. -------------------------------------------------------- --
--       NOW(), DATE_FORMAT(), DATEDIFF() : -------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- 2.12.1. Fecha Actual. --------------------------------------------------------------- --
--         SELECT __ , __ , NOW() AS __ FROM __ : -------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT nombre_producto, precio_producto, NOW() FROM PRODUCTOS;
SELECT nombre_producto, precio_producto, NOW() AS fecha_actual FROM PRODUCTOS;
-- ------------------------------------------------------------------------------------- --
-- 2.12.2. Formato de Fecha. ----------------------------------------------------------- --
--         SELECT __ , __ , DATE_FORMAT(NOW(), '%Y-%m-%d') AS __ FROM __ : ------------- --
-- ------------------------------------------------------------------------------------- --
SELECT nombre_producto, precio_producto, 
DATE_FORMAT(NOW(),'%Y-%m-%d') AS fecha_actual 
FROM PRODUCTOS;
-- ------------------------------------------------------------------------------------- --
-- 2.12.3. Diferencia Fechas. ---------------------------------------------------------- --
--         SELECT __ , fecha , --------------------------------------------------------- --
--         DATE_FORMAT(NOW(), '%Y-%m-%d') AS __ , -------------------------------------- --
--         TIMESTAMPDIFF(DAY, __ , NOW()) AS __ , -------------------------------------- --
--         FROM __ : ------------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_cred, estado_cred, fecha_ingreso_cred,
DATE_FORMAT(NOW(),'%Y-%m-%d') AS fecha_actual,
TIMESTAMPDIFF(YEAR, fecha_ingreso_cred, NOW()) AS años_transcurridos,
TIMESTAMPDIFF(MONTH, fecha_ingreso_cred, NOW()) AS meses_transcurridos, 
TIMESTAMPDIFF(DAY, fecha_ingreso_cred, NOW()) - 
TIMESTAMPDIFF(MONTH, fecha_ingreso_cred, NOW()) * 30 AS dias_transcurridos
FROM CREDENCIALES;
/* ************************************************************************************* */
/* -------------------------- 3. CONSULTAS DE ACCIÓN [Final] --------------------------- */
/* ---------------------------- INSERT INTO, UPDATE, DELETE ---------------------------- */
/* ************************************************************************************* */
INSERT INTO MENSAJES VALUES
('admin-1',DATE_FORMAT(NOW(),'%Y-%m-%d'),'Mantenimiento Sistema','Se informa a los ...');
INSERT INTO USUARIOS VALUES 
(1, 'admin-2', 'Pepito', 'Perez', 'pepito@gmail.com');
INSERT INTO CREDENCIALES VALUES
('admin-2',
213456,
DATE_FORMAT(NOW(),'%Y-%m-%d'),
'Medellín',
'Calle 1 con 2',
sha1('12345'),
0);
--      UPDATE __ SET __ = __ WHERE __ = __ : ------------------------------------------ --
-- ------------------------------------------------------------------------------------- --
UPDATE ROLES SET 
nombre_rol = 'person'
WHERE codigo_rol = 2;
UPDATE USUARIOS SET 
codigo_user = 'admin-3'
WHERE codigo_user = 'admin-2';
-- ------------------------------------------------------------------------------------- --
-- 1.3. Eliminar. ---------------------------------------------------------------------- --
--      DELETE FROM __ WHERE __ = __ : ------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
DELETE FROM USUARIOS 
WHERE codigo_user = 'admin-3';
/* ************************************************************************************* */
/* ----------------------------- 2. CONSULTAS DE SELECCIÓN ----------------------------- */
/* --------------------------------------- SELECT -------------------------------------- */
/* ************************************************************************************* */
-- ------------------------------------------------------------------------------------- --
-- 2.1. Generales. --------------------------------------------------------------------- --
--      SELECT * FROM __ : ------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM USUARIOS;
-- ------------------------------------------------------------------------------------- --
-- 2.2. Específicas. ------------------------------------------------------------------- --
--      SELECT __ , __ FROM __ : ------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_user, correo_user, codigo_rol FROM USUARIOS;
-- ------------------------------------------------------------------------------------- --
-- 2.3. Con Criterios. ----------------------------------------------------------------- --
--      SELECT __ , __ FROM __ WHERE __ = __ : ----------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_rol, codigo_user, correo_user FROM USUARIOS
WHERE codigo_rol = 3;
-- ------------------------------------------------------------------------------------- --
-- 2.4. Con Operadores Lógicos. -------------------------------------------------------- --
--      OR, AND, NOT : ----------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- 2.4.1. O [OR] . --------------------------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ = __ OR __ = __ : ---------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_rol, codigo_user, correo_user FROM USUARIOS 
WHERE codigo_rol = 2 OR codigo_rol = 3;
-- ------------------------------------------------------------------------------------- --
-- 2.4.2. Y [AND] . -------------------------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ = __ AND __ = __ : --------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_cred, ciudad_cred FROM CREDENCIALES 
WHERE ciudad_cred = 'Bogotá' AND estado_cred = 1;
-- ------------------------------------------------------------------------------------- --
-- 2.4.3. NO [NOT] . ------------------------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ = __ AND __ = __ : --------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_cred, ciudad_cred FROM CREDENCIALES 
WHERE ciudad_cred NOT IN ('Bogotá');
-- ------------------------------------------------------------------------------------- --
-- 2.5. Con Operadores de Comparación. --------------------------------------- --
--      <>, <, <=, >, >= : ------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- 2.5.1. Diferente [<>] . ------------------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ <> __ : -------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM PRODUCTOS WHERE precio_producto <> 3500;
-- ------------------------------------------------------------------------------------- --
-- 2.5.2. Menor que [<] . -------------------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ < __ : --------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM PRODUCTOS WHERE precio_producto < 3500;
-- ------------------------------------------------------------------------------------- --
-- 2.5.3. Mayor que [>] . -------------------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ > __ : --------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM PRODUCTOS WHERE precio_producto > 3500;
-- ------------------------------------------------------------------------------------- --
-- 2.5.4. Menor o igual que [<=] . ----------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ > __ : --------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM PRODUCTOS WHERE precio_producto <= 3500;
-- ------------------------------------------------------------------------------------- --
-- 2.5.5. Mayor o igual que [>=] . ----------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ > __ : --------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM PRODUCTOS WHERE precio_producto >= 3500;
-- ------------------------------------------------------------------------------------- --
-- 2.6. Con otros Operadores. ---------------------------------------------------------- --
--      LIKE, BETWEEN, IN -------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- 2.6.1. Comodín [LIKE '_%'] . -------------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ LIKE '_%' : ---------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM PRODUCTOS WHERE nombre_producto LIKE 'j%';
SELECT * FROM PRODUCTOS WHERE nombre_producto LIKE '_a%';
-- ------------------------------------------------------------------------------------- --
-- 2.6.2. Entre [BETWEEN] . ------------------------------------------------------------ --
--        SELECT __ , __ FROM __ WHERE __ BETWEEN __ AND __ : -------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM CREDENCIALES 
WHERE fecha_ingreso_cred BETWEEN '2022-08-01' AND '2022-08-31';
SELECT * FROM CREDENCIALES 
WHERE fecha_ingreso_cred >= '2022-08-01' AND fecha_ingreso_cred <= '2022-08-31';
-- ------------------------------------------------------------------------------------- --
-- 2.6.3. Lista [IN ( __ )] . ---------------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ IN( __ , __ ) : ------------------------------ --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM PRODUCTOS 
WHERE unidad_producto IN (1,500);
-- ------------------------------------------------------------------------------------- --
-- 2.7. Ordenadas. --------------------------------------------------------------------- --
--      ORDER BY, ASC, DESC : ---------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- 2.7.1. Ascendente [ASC] . ----------------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ = __ ORDER BY __ ASC; : ---------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM PRODUCTOS 
WHERE codigo_categoria = 2 
ORDER BY codigo_categoria;
SELECT * FROM PRODUCTOS
WHERE codigo_categoria = 2 OR codigo_categoria = 3 
ORDER BY codigo_categoria ASC;
SELECT * FROM PRODUCTOS
WHERE codigo_categoria = 2 OR codigo_categoria = 3 
ORDER BY precio_producto ASC;
-- ------------------------------------------------------------------------------------- --
-- 2.7.2. Descendente [DESC] . --------------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ = __ ORDER BY __ DES; : ---------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM PRODUCTOS 
WHERE codigo_categoria = 2 
ORDER BY codigo_categoria DESC;
SELECT * FROM PRODUCTOS
WHERE codigo_categoria = 2 OR codigo_categoria = 3 
ORDER BY codigo_categoria DESC;
SELECT * FROM PRODUCTOS
WHERE codigo_categoria = 2 OR codigo_categoria = 3 
ORDER BY precio_producto DESC;
-- ------------------------------------------------------------------------------------- --
-- 2.7.3. Combinadas . ----------------------------------------------------------------- --
--        SELECT __ , __ FROM __ WHERE __ = __ ORDER BY __ DES; : ---------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT * FROM PRODUCTOS 
WHERE codigo_categoria = 2 OR codigo_categoria = 3 
ORDER BY codigo_categoria ASC, precio_producto DESC;
-- ------------------------------------------------------------------------------------- --
-- 2.8. Calculadas con Funciones. ------------------------------------------------------ --
--      GROUP BY : --------------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- 2.8.1. Suma [SUM()] . --------------------------------------------------------------- --
--        SELECT __ , SUM( __ ) FROM __ GROUP BY __ : ---------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_categoria, SUM(precio_producto) FROM PRODUCTOS 
WHERE codigo_categoria = 3;
SELECT codigo_categoria, SUM(precio_producto) FROM PRODUCTOS 
GROUP BY codigo_categoria;
-- ------------------------------------------------------------------------------------- --
-- 2.8.2. Promedio [AVG()] . ----------------------------------------------------------- --
--        SELECT __ , AVG( __ ) FROM __ GROUP BY __ : ---------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_categoria, AVG(precio_producto) FROM PRODUCTOS 
WHERE codigo_categoria = 3;
SELECT codigo_categoria, AVG(precio_producto) FROM PRODUCTOS 
GROUP BY codigo_categoria;
-- ------------------------------------------------------------------------------------- --
-- 2.8.3. Máximo [MAX()] . ------------------------------------------------------------- --
--        SELECT __ , MAX( __ ) FROM __ GROUP BY __ : -------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_categoria, MAX(precio_producto) FROM PRODUCTOS 
WHERE codigo_categoria = 3;
SELECT codigo_categoria, MAX(precio_producto) FROM PRODUCTOS 
GROUP BY codigo_categoria;
-- ------------------------------------------------------------------------------------- --
-- 2.8.4. Mínimo [MIN()] . ------------------------------------------------------------- --
--        SELECT __ , MIN( __ ) FROM __ GROUP BY __ : -------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_categoria, MIN(precio_producto) FROM PRODUCTOS 
WHERE codigo_categoria = 3;
SELECT codigo_categoria, MIN(precio_producto) FROM PRODUCTOS 
GROUP BY codigo_categoria;
-- ------------------------------------------------------------------------------------- --
-- 2.8.5. Conteo [COUNT()] . ----------------------------------------------------------- --
--        SELECT __ , COUT( __ ) FROM __ GROUP BY __ : --------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT ciudad_cred, COUNT(codigo_cred) FROM CREDENCIALES 
WHERE ciudad_cred = 'Bogotá';
SELECT ciudad_cred, COUNT(codigo_cred) FROM CREDENCIALES 
GROUP BY ciudad_cred;
-- ------------------------------------------------------------------------------------- --
-- 2.9. Calculadas con Alias. ---------------------------------------------------------- --
--      SELECT __ , FUN( __ ) AS __ : -------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_categoria, SUM(precio_producto) AS suma_productos 
FROM PRODUCTOS 
GROUP BY codigo_categoria 
ORDER BY suma_productos ASC;
SELECT codigo_categoria, AVG(precio_producto) AS promedio_productos 
FROM PRODUCTOS 
GROUP BY codigo_categoria 
ORDER BY promedio_productos DESC;
SELECT codigo_categoria, MAX(precio_producto) AS maximo_productos 
FROM PRODUCTOS 
GROUP BY codigo_categoria 
ORDER BY maximo_productos ASC;
SELECT codigo_categoria, MAX(precio_producto) AS minimo_productos 
FROM PRODUCTOS 
GROUP BY codigo_categoria 
ORDER BY minimo_productos DESC;
SELECT ciudad_cred, COUNT(codigo_cred) AS cant_clientes 
FROM CREDENCIALES 
GROUP BY ciudad_cred 
ORDER BY cant_clientes ASC;
-- ------------------------------------------------------------------------------------- --
-- 2.10. Calculadas Condicionantes. ---------------------------------------------------- --
--      SELECT __ , FUN( __ ) AS __ FROM __ GROUP BY __ HAVING __ = __ OR __ = __ : ---- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_categoria, SUM(precio_producto) AS suma_productos 
FROM PRODUCTOS 
GROUP BY codigo_categoria HAVING codigo_categoria = 2 OR codigo_categoria = 3 
ORDER BY suma_productos DESC;
SELECT codigo_categoria, AVG(precio_producto) AS promedio_productos 
FROM PRODUCTOS 
GROUP BY codigo_categoria HAVING codigo_categoria = 2 OR codigo_categoria = 3 
ORDER BY promedio_productos ASC;
SELECT codigo_categoria, MAX(precio_producto) AS maximo_productos 
FROM PRODUCTOS 
GROUP BY codigo_categoria HAVING codigo_categoria = 2 OR codigo_categoria = 3 
ORDER BY maximo_productos DESC;
SELECT codigo_categoria, MIN(precio_producto) AS maximo_productos 
FROM PRODUCTOS 
GROUP BY codigo_categoria HAVING codigo_categoria = 2 OR codigo_categoria = 3 
ORDER BY maximo_productos ASC;
SELECT ciudad_cred, COUNT(codigo_cred) AS cant_clientes 
FROM CREDENCIALES 
GROUP BY ciudad_cred HAVING ciudad_cred = "Bogotá" OR ciudad_cred = "Cali"
ORDER BY cant_clientes DESC;
-- ------------------------------------------------------------------------------------- --
-- 2.11. Calculadas con Operadores. ---------------------------------------------------- --
--        SELECT __ , __ , __*0.19 AS __ FROM __ : ------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT nombre_producto, precio_producto, precio_producto * 0.19 
FROM PRODUCTOS;
SELECT nombre_producto, precio_producto, precio_producto * 0.19 AS iva_producto 
FROM PRODUCTOS;
SELECT nombre_producto, precio_producto, ROUND(precio_producto*0.19,2) AS iva_producto 
FROM PRODUCTOS;
-- ------------------------------------------------------------------------------------- --
-- 2.12. Calculadas con Fechas. -------------------------------------------------------- --
--       NOW(), DATE_FORMAT(), DATEDIFF() : -------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
-- 2.12.1. Fecha Actual. --------------------------------------------------------------- --
--         SELECT __ , __ , NOW() AS __ FROM __ : -------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT nombre_producto, precio_producto, NOW() FROM PRODUCTOS;
SELECT nombre_producto, precio_producto, NOW() AS fecha_actual FROM PRODUCTOS;
-- ------------------------------------------------------------------------------------- --
-- 2.12.2. Formato de Fecha. ----------------------------------------------------------- --
--         SELECT __ , __ , DATE_FORMAT(NOW(), '%Y-%m-%d') AS __ FROM __ : ------------- --
-- ------------------------------------------------------------------------------------- --
SELECT nombre_producto, precio_producto, 
DATE_FORMAT(NOW(),'%Y-%m-%d') AS fecha_actual 
FROM PRODUCTOS;
-- ------------------------------------------------------------------------------------- --
-- 2.12.3. Diferencia Fechas. ---------------------------------------------------------- --
--         SELECT __ , fecha , --------------------------------------------------------- --
--         DATE_FORMAT(NOW(), '%Y-%m-%d') AS __ , -------------------------------------- --
--         TIMESTAMPDIFF(DAY, __ , NOW()) AS __ , -------------------------------------- --
--         FROM __ : ------------------------------------------------------------------- --
-- ------------------------------------------------------------------------------------- --
SELECT codigo_cred, estado_cred, fecha_ingreso_cred,
DATE_FORMAT(NOW(),'%Y-%m-%d') AS fecha_actual,
TIMESTAMPDIFF(YEAR, fecha_ingreso_cred, NOW()) AS años_transcurridos,
TIMESTAMPDIFF(MONTH, fecha_ingreso_cred, NOW()) AS meses_transcurridos, 
TIMESTAMPDIFF(DAY, fecha_ingreso_cred, NOW()) - 
TIMESTAMPDIFF(MONTH, fecha_ingreso_cred, NOW()) * 30 AS dias_transcurridos
FROM CREDENCIALES;
/* ************************************************************************************* */
/* -------------------------- 3. CONSULTAS DE ACCIÓN [Final] --------------------------- */
/* ---------------------------- INSERT INTO, UPDATE, DELETE ---------------------------- */
/* ************************************************************************************* */
INSERT INTO MENSAJES VALUES
('admin-1',DATE_FORMAT(NOW(),'%Y-%m-%d'),'Mantenimiento Sistema','Se informa a los ...');
INSERT INTO USUARIOS VALUES 
(1, 'admin-2', 'Pepito', 'Perez', 'pepito@gmail.com');
INSERT INTO CREDENCIALES VALUES
('admin-2',
213456,
DATE_FORMAT(NOW(),'%Y-%m-%d'),
'Medellín',
'Calle 1 con 2',
sha1('12345'),
0);