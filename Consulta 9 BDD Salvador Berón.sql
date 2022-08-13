-- // Consulta Numero 9 //
-- Escriba una consulta que permita actualizar la dirección de un dueño. 
-- Su nueva dirección es Libertad 123. 

CREATE DATABASE pelu_canina;
show databases;
use pelu_canina;

CREATE TABLE dueno (
dni int primary key not null,
nombre varchar(25) not null,
apellido varchar(50) not null,
telefono varchar(15),
direccion varchar(50) not null
);

CREATE TABLE perro (
id_perro int primary key,
nombre varchar (50) not null,
fecha_nac date not null,
sexo ENUM ("M", "H") not null,
dni_dueno int,
FOREIGN KEY (dni_dueno) REFERENCES dueno(dni)
);

CREATE TABLE historial(
id_historial int auto_increment primary key,
fecha date not null,
perro int,
FOREIGN KEY (perro) REFERENCES perro(id_perro),
descripcion varchar(100) not null,
monto float UNSIGNED NOT NULL
);

-- // REGISTROS DUEÑOS, PERROS, HISTORIAL //

-- Registro Dueños

INSERT INTO dueno (dni, nombre, apellido, telefono, direccion) VALUES (40845549, "Juan", "Sanchez", 3518498745, "San Martin 548");
INSERT INTO dueno (dni, nombre, apellido, telefono, direccion) VALUES (42456897, "Santiago", "Funes", 351456987, "Alsina 231");
INSERT INTO dueno (dni, nombre, apellido, telefono, direccion) VALUES (43849874, "Gaston", "Gutierrez", 3516645461, "Av. Malvinas 331");

-- Registro Perros

INSERT INTO perro (id_perro, nombre, fecha_nac, sexo, dni_dueno) VALUES (987, "Felix", "12/08/18", "M", 40845549);
INSERT INTO perro (id_perro, nombre, fecha_nac, sexo, dni_dueno) VALUES (654, "Baki", "24/03/16", "M", 42456897 );
INSERT INTO perro (id_perro, nombre, fecha_nac, sexo, dni_dueno) VALUES (321, "Yuri", "28/07/20", "H", 43849874);

-- Registro Historial

INSERT INTO historial (id_historial, fecha, perro, descripcion, monto) VALUES (1, "14/04/19", "987", "basico", 1500);
INSERT INTO historial (id_historial, fecha, perro, descripcion, monto) VALUES (2, "12/06/19", "654", "alto", 3000);
INSERT INTO historial (id_historial, fecha, perro, descripcion, monto) VALUES (3, "21/07/19", "321","medio", 2000);

SELECT * FROM dueno;

-- // Actualización direccion de Dueño //

UPDATE dueno SET direccion = "libertad 123" where dni = 40845549;

SELECT * FROM dueno;

 -- // Consulta Numero 9 realizada. //
 -- Escriba una consulta que permita actualizar la dirección de un dueño. 
 -- Su nueva dirección es Libertad 123. 
 --   Berón Salvador 

 