create database peluqueria_canina;

use peluqueria_canina;

create table dueno
(
dni int,
nombre varchar (30),
apellido varchar (30),
telefono int,
direccion varchar (50),
constraint id_dueno_pk primary key (dni)
);

create table perro
(
id_perro int,
nombre varchar (30),
fecha_nac date,
sexo varchar (20),
dni_dueno int,
constraint id_perro_pk primary key (id_perro),
constraint dni_dueno_fk foreign key (dni_dueno) references dueno (dni)
);

create table historial
(
id_historial int,
fecha date,
perro int,
descripcion varchar (250),
monto float,
constraint id_historial_pk primary key (id_historial),	 
constraint perro_fk foreign key (perro) references perro (id_perro)
);


insert into dueno (dni, nombre, apellido, telefono, direccion) values
(33456789, "Laura", "Perez", 56987842, "Mackinlay 545"),
(26951753, "Jose", "Gomez", 57325461, "Belgrano 1189"),
(31842684, "Ramiro", "Medina", 55148962, "Yaktemi 885"),
(24951368, "Luciana", "Andrade", 56258914, "9 de Julio 943"),
(39658145, "Damian", "Ariosti", 55937183, "Piedrabuena 452"),
(37147963, "Marianela", "Olmos", 57324985, "Bilbao 736");


insert into perro (id_perro, nombre, fecha_nac, sexo, dni_dueno) values
(1, "Cody", '2012-01-23', "macho", 33456789),
(2, "Amira", '2022-02-16', "hembra", 26951753),
(3, "Fiona", '2013-09-13', "hembra", 31842684),
(4, "Dexter", '2021-09-27', "macho", 24951368),
(5, "Chimuelo", '2020-01-04', "macho", 39658145),
(6, "Zafiro", '2022-07-11', "macho", 37147963);


insert into historial (id_historial, fecha, perro, descripcion, monto) values
(100, '2021-11-13', 2, "Baño", 2050.50),
(101, '2022-06-16', 5, "Baño y corte pelo", 3500.80),
(102, '2022-03-28', 4, "Corte pelo y uñas", 2750.45),
(103, '2021-04-05', 1, "Baño", 2050.50),
(104, '2021-08-15', 3, "Baño y corte de uñas", 2250.60),
(105, '2022-08-09', 6, "Corte de pelo", 1500);


select id_perro, nombre
from perro
where sexo = "macho" and fecha_nac between '2020-01-01' and '2022-12-31';

