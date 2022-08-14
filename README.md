CREATE DATABASE peluqueriacanina;
show databases;
use peluquericanina;

CREATE TABLE dueno (
dni int primary key not null,
nombre varchar(50) not null,
apellido varchar(50) not null,
telefono varchar(15),
direccion varchar(100) not null
);

CREATE TABLE perro (
id_perro int primary key not null,
nombre varchar (50) not null,
fecha_nac date not null,
sexo  not null,
dni_dueno int,
FOREIGN KEY (dni_dueno) REFERENCES dueno(dni)
);

CREATE TABLE historial(
id_historial int auto_increment primary key,
fecha date not null,
perro int,
FOREIGN KEY (perro)  perro(id_perro),
descripcion varchar(100) not null,
monto float UNSIGNED NOT NULL
);

-- //  DUEÑOS, PERROS, HISTORIAL //

-- Dueños

INSERT INTO dueno (dni, nombre, apellido, telefono, direccion) VALUES (50331890, "PEDRO", "NUNEZ", 3514458745, "Maracaibo 50");
INSERT INTO dueno (dni, nombre, apellido, telefono, direccion) VALUES (41127139, "PABLO", "FLORES", 351776887, "Libertad 123");
INSERT INTO dueno (dni, nombre, apellido, telefono, direccion) VALUES (21392614, "MARIA", "GARCIA", 359805461, "Av. Cordoba  3412");

-- Perros

INSERT INTO perro (id_perro, nombre, fecha_nac, sexo, dni_dueno) VALUES (1238, "Toto", "15/05/21", "M", 50331890);
INSERT INTO perro (id_perro, nombre, fecha_nac, sexo, dni_dueno) VALUES (1123, "Jack", "29/08/20", "M", 41127139 );
INSERT INTO perro (id_perro, nombre, fecha_nac, sexo, dni_dueno) VALUES (1436, "Luli", "12/12/21", "H", 21392614);

-- Historial

INSERT INTO historial (id_historial, fecha, perro, descripcion, monto) VALUES (11, "18/02/22", "1238", "comun", 1580);
INSERT INTO historial (id_historial, fecha, perro, descripcion, monto) VALUES (12 "12/04/22", "1123", "comun", 2400);
INSERT INTO historial (id_historial, fecha, perro, descripcion, monto) VALUES (13, "21/06/22", "1436","clasico", 10000);
