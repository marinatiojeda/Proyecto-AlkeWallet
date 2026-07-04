CREATE DATABASE AlkeWallet;

USE AlkeWallet;

SHOW DATABASES;

USE AlkeWallet;

CREATE TABLE usuario (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    contraseña VARCHAR(255) NOT NULL,
    saldo DECIMAL(10,2) NOT NULL
);

DESCRIBE usuario;

CREATE TABLE moneda (
    currency_id INT AUTO_INCREMENT PRIMARY KEY,
    currency_name VARCHAR(50) NOT NULL,
    currency_symbol VARCHAR(10) NOT NULL
);

DESCRIBE moneda;

CREATE TABLE transaccion (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    sender_user_id INT NOT NULL,
    receiver_user_id INT NOT NULL,
    currency_id INT NOT NULL,
    importe DECIMAL(10,2) NOT NULL,
    transaction_date DATETIME NOT NULL,

    CONSTRAINT fk_sender
        FOREIGN KEY (sender_user_id)
        REFERENCES usuario(user_id),

    CONSTRAINT fk_receiver
        FOREIGN KEY (receiver_user_id)
        REFERENCES usuario(user_id),

    CONSTRAINT fk_currency
        FOREIGN KEY (currency_id)
        REFERENCES moneda(currency_id)
);
DESCRIBE transaccion;

INSERT INTO moneda (currency_name, currency_symbol)
VALUES
('Peso Chileno', 'CLP'),
('Dólar Estadounidense', 'USD'),
('Peso Argentino', 'ARS'),
('Peso Mexicano', 'MXN'),
('Euro', 'EUR');

SELECT * FROM moneda;

INSERT INTO usuario (nombre, correo, contraseña, saldo)
VALUES
('Juan Peña','juan.pena@gmail.com','juan123',250000.00),
('Dayana González','dayana.gonzalez@gmail.com','daya123',180000.00),
('Pablo Soto','pablo.soto@gmail.com','pablo123',320000.00),
('Ana López','ana.lopez@gmail.com','ana123',150000.00),
('Carlos ojeda','carlos.ojeda@gmail.com','carlos123',500000.00),
('Camila Herrera','camila.herrera@gmail.com','camila123',275000.00),
('Diego Morales','diego.morales@gmail.com','diego123',410000.00),
('Valentina Muñoz','valentina.munoz@gmail.com','vale123',98000.00),
('Sebastián Fuentes','sebastian.fuentes@gmail.com','seba123',360000.00),
('Fernanda Silva','fernanda.silva@gmail.com','fer123',215000.00),
('Ignacio Castro','ignacio.castro@gmail.com','ignacio123',125000.00),
('Javiera Núñez','javiera.nunez@gmail.com','javi123',305000.00),
('Benjamín Torres','benjamin.torres@gmail.com','benja123',420000.00),
('Daniela Ojeda','daniela.ojeda@gmail.com','dani123',195000.00),
('Matías Reyes','matias.reyes@gmail.com','mati123',280000.00),
('Constanza Díaz','constanza.diaz@gmail.com','cony123',330000.00),
('Felipe Araya','felipe.araya@gmail.com','felipe123',470000.00),
('Catalina Espinoza','catalina.espinoza@gmail.com','cata123',210000.00),
('Nicolás Navarro','nicolas.navarro@gmail.com','nico123',390000.00),
('Francisca Peña','francisca.pena@gmail.com','fran123',175000.00),
('Vicente Salazar','vicente.salazar@gmail.com','vicente123',290000.00),
('Josefa Ramírez','josefa.ramirez@gmail.com','jose123',140000.00),
('Tomás Contreras','tomas.contreras@gmail.com','tomas123',365000.00),
('Antonella Pérez','antonella.perez@gmail.com','anto123',255000.00),
('Gabriel Paredes','gabriel.paredes@gmail.com','gabo123',480000.00),
('Amanda Vergara','amanda.vergara@gmail.com','amanda123',230000.00),
('Cristóbal Herrera','cristobal.herrera@gmail.com','cris123',340000.00),
('Martina Riquelme','martina.riquelme@gmail.com','martina123',205000.00),
('Joaquín Campos','joaquin.campos@gmail.com','joaquin123',315000.00),
('Marta Sánchez','marta.sanchez@gmail.com','marta123',400000.00),
('Isidora Bravo','isidora.bravo@gmail.com','isi123',270000.00),
('Ricardo Fuentes','ricardo.fuentes@gmail.com','ricardo123',285000.00),
('Paula Méndez','paula.mendez@gmail.com','paula123',315000.00),
('Rodrigo Vega','rodrigo.vega@gmail.com','rodrigo123',460000.00),
('Natalia Flores','natalia.flores@gmail.com','natalia123',180500.00),
('Eduardo Castillo','eduardo.castillo@gmail.com','eduardo123',520000.00),
('Karen Morales','karen.morales@gmail.com','karen123',295000.00),
('Álvaro Jiménez','alvaro.jimenez@gmail.com','alvaro123',430000.00),
('Daniel Muñoz','daniel.munoz@gmail.com','daniel123',210000.00),
('Sofía Carrasco','sofia.carrasco@gmail.com','sofia123',350000.00),
('Patricio Leiva','patricio.leiva@gmail.com','patricio123',270000.00),
('Carolina Vargas','carolina.vargas@gmail.com','carolina123',410000.00),
('Esteban Ríos','esteban.rios@gmail.com','esteban123',330000.00),
('Macarena Torres','macarena.torres@gmail.com','macarena123',245000.00),
('Felipe Núñez','felipe.nunez@gmail.com','felipen123',390000.00),
('Lorena Salinas','lorena.salinas@gmail.com','lorena123',305000.00),
('Hugo Fernández','hugo.fernandez@gmail.com','hugo123',465000.00),
('Bárbara Pinto','barbara.pinto@gmail.com','barbara123',195000.00),
('Mauricio Cárdenas','mauricio.cardenas@gmail.com','mauricio123',355000.00),
('Camilo Andrade','camilo.andrade@gmail.com','camilo123',285000.00);

SELECT COUNT(*) AS Total_Usuarios
FROM usuario;
SELECT * FROM usuario;

INSERT INTO transaccion
(sender_user_id, receiver_user_id, currency_id, importe, transaction_date)
VALUES
(1,2,1,50000.00,'2026-06-01 09:15:00'),
(2,3,2,120.50,'2026-06-02 10:30:00'),
(3,4,3,85.75,'2026-06-03 11:45:00'),
(4,5,4,2500.00,'2026-06-04 12:10:00'),
(5,6,5,95.30,'2026-06-05 13:20:00'),
(6,7,1,75000.00,'2026-06-06 14:00:00'),
(7,8,2,200.00,'2026-06-07 15:35:00'),
(8,9,3,60.80,'2026-06-08 16:15:00'),
(9,10,4,1800.00,'2026-06-09 17:40:00'),
(10,11,5,110.25,'2026-06-10 18:05:00'),

(11,12,1,43000.00,'2026-06-11 09:50:00'),
(12,13,2,300.00,'2026-06-12 10:25:00'),
(13,14,3,99.99,'2026-06-13 11:10:00'),
(14,15,4,2200.00,'2026-06-14 12:55:00'),
(15,16,5,150.00,'2026-06-15 13:30:00'),
(16,17,1,67000.00,'2026-06-16 14:45:00'),
(17,18,2,175.40,'2026-06-17 15:05:00'),
(18,19,3,70.20,'2026-06-18 16:35:00'),
(19,20,4,3200.00,'2026-06-19 17:15:00'),
(20,21,5,210.10,'2026-06-20 18:45:00'),

(21,22,1,82000.00,'2026-06-21 09:05:00'),
(22,23,2,260.75,'2026-06-22 10:40:00'),
(23,24,3,130.50,'2026-06-23 11:20:00'),
(24,25,4,4100.00,'2026-06-24 12:35:00'),
(25,26,5,80.00,'2026-06-25 13:10:00'),
(26,27,1,54000.00,'2026-06-26 14:25:00'),
(27,28,2,310.30,'2026-06-27 15:50:00'),
(28,29,3,45.60,'2026-06-28 16:30:00'),
(29,30,4,2600.00,'2026-06-29 17:05:00'),
(30,31,5,190.90,'2026-06-30 18:20:00'),

(31,32,1,91000.00,'2026-07-01 09:30:00'),
(32,33,2,145.00,'2026-07-01 10:45:00'),
(33,34,3,88.80,'2026-07-01 11:55:00'),
(34,35,4,3700.00,'2026-07-01 12:25:00'),
(35,36,5,230.00,'2026-07-01 13:40:00'),
(36,37,1,62000.00,'2026-07-01 14:15:00'),
(37,38,2,199.99,'2026-07-01 15:35:00'),
(38,39,3,75.75,'2026-07-01 16:10:00'),
(39,40,4,2900.00,'2026-07-01 17:25:00'),
(40,41,5,120.60,'2026-07-01 18:50:00'),

(41,42,1,45000.00,'2026-07-02 09:20:00'),
(42,43,2,340.00,'2026-07-02 10:15:00'),
(43,44,3,155.25,'2026-07-02 11:30:00'),
(44,45,4,5100.00,'2026-07-02 12:45:00'),
(45,46,5,95.90,'2026-07-02 13:55:00'),
(46,47,1,73000.00,'2026-07-02 14:35:00'),
(47,48,2,280.20,'2026-07-02 15:45:00'),
(48,49,3,66.60,'2026-07-02 16:25:00'),
(49,50,4,1800.00,'2026-07-02 17:10:00'),
(50,1,5,140.40,'2026-07-02 18:30:00'),

(5,15,1,39000.00,'2026-07-03 09:10:00'),
(10,20,2,225.50,'2026-07-03 10:20:00'),
(15,25,3,115.75,'2026-07-03 11:40:00'),
(20,30,4,2400.00,'2026-07-03 12:50:00'),
(25,35,5,175.00,'2026-07-03 14:00:00'),
(30,40,1,88000.00,'2026-07-03 15:15:00'),
(35,45,2,390.30,'2026-07-03 16:25:00'),
(40,50,3,98.45,'2026-07-03 17:35:00'),
(45,5,4,3300.00,'2026-07-03 18:10:00'),
(50,10,5,205.20,'2026-07-03 19:00:00');


SELECT COUNT(*) AS Total_Transacciones
FROM transaccion;

SELECT
u.user_id,
u.nombre,
m.currency_name,
m.currency_symbol
FROM usuario u
INNER JOIN transaccion t
ON u.user_id = t.sender_user_id
INNER JOIN moneda m
ON t.currency_id = m.currency_id
WHERE u.user_id = 5
AND m.currency_symbol = 'CLP';

SELECT *
FROM transaccion;

SELECT *
FROM transaccion
WHERE sender_user_id = 5;

SELECT *
FROM usuario
WHERE user_id = 20;

UPDATE usuario
SET correo = 'francisca.pena2026@gmail.com'
WHERE user_id = 20;

SELECT *
FROM usuario
WHERE user_id = 20;

SELECT *
FROM transaccion
WHERE transaction_id = 50;

DELETE FROM transaccion
WHERE transaction_id = 50;

SELECT *
FROM transaccion
WHERE transaction_id = 50;

SELECT user_id, nombre, saldo
FROM usuario
WHERE user_id = 5;

UPDATE usuario
SET saldo = saldo + 50000
WHERE user_id = 5;

SELECT user_id, nombre, saldo
FROM usuario
WHERE user_id = 5;

SELECT user_id, nombre, saldo
FROM usuario
WHERE user_id = 2;

START TRANSACTION;

UPDATE usuario
SET saldo = saldo + 10000
WHERE user_id = 2;

COMMIT;

SELECT user_id, nombre, saldo
FROM usuario
WHERE user_id = 2;


SELECT user_id, nombre, saldo
FROM usuario
WHERE user_id = 23;

START TRANSACTION;

UPDATE usuario
SET saldo = saldo + 5000
WHERE user_id = 23;

ROLLBACK;

SELECT user_id, nombre, saldo
FROM usuario
WHERE user_id = 23;

START TRANSACTION;

INSERT INTO transaccion
(sender_user_id, receiver_user_id, currency_id, importe, transaction_date)
VALUES
(999, 1, 1, 10000.00, '2026-07-04 10:00:00');