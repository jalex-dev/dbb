
-- EJERCICIO TIPOS RELACIONES
-- creacion de tabla cuentas
delete  from cuentas
drop table cuentas
create table cuentas(
	numero_cuenta char(5) not null,
	cedula_propietario char(5) not null,
	fecha_creacion date not null,
	saldo money not null, 
	
	constraint cuentas_key primary key (numero_cuenta)
)

-- creacion de la tabla usuario
create  table usuario(
	
	cedula char(5),
	nombre varchar(25) not NULL ,
	apellido varchar(25) not null,
	Tipo_cuenta varchar(20),
	limite_credito decimal(10,5),
	
	constraint usuario_pk primary key (cedula)
)

-- creacion de foreing key 
alter table cuentas
add constraint cuentas_usuario_fk 
foreign key (cedula_propietario)
references usuario(cedula)

--insercion de usario
INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito)
VALUES
    ('12345', 'Jona', 'Perez', 'ahorro', 12.3),
    ('22346', 'María', 'López', 'corriente', 15.0),
    ('32347', 'Carlos', 'González', 'ahorro', 10.5),
    ('42348', 'Ana', 'Martínez', 'corriente', 20.0),
    ('52349', 'Pedro', 'García', 'corriente', 18.7),
    ('62350', 'Laura', 'Rodríguez', 'corriente', 14.2);
   
   -- insercion de cuenta 
INSERT INTO cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
VALUES
    ('12345', '12345', '2022-08-27', 200),
    ('23456', '22346', '2022-09-15', 500),
    ('34567', '22346', '2022-10-03', 700),
    ('45678', '52349', '2022-11-20', 800),
    ('56789', '52349', '2023-01-05', 300),
    ('67890', '62350', '2023-03-12', 400),
    ('78901', '32347', '2023-05-18', 900),
    ('89012', '32347', '2023-07-01', 600),
    ('90123', '42348', '2023-08-09', 150),
    ('01234', '42348', '2023-09-10', 1000);   
   
-- creacion de clientes

-- Drop table

-- DROP TABLE clientes;

CREATE TABLE public.clientes (
	cedula char(10) NOT NULL,
	nombre varchar(50) NOT NULL,
	apellido varchar(50) NOT NULL,
	CONSTRAINT clientes_pk PRIMARY KEY (cedula)
);

--creacion de tabla compras

create table compras(
	id_compras int,
	cedula char(10),
	fecha_compra date ,
	monto decimal (10,2),
	
	constraint compras_key primary key(id_compras)
	
)

-- creacion de foreing key 
alter table compras
add constraint compras_clientes_fk 
foreign key (cedula)
references clientes(cedula)

INSERT INTO public.clientes (cedula, nombre, apellido)
VALUES
    ('1234567890', 'Juan', 'Perez'),
    ('2345678901', 'María', 'López'),
    ('3456789012', 'Pedro', 'González'),
    ('4567890123', 'Ana', 'Martínez'),
    ('6678901234', 'Monica', 'García');
   
INSERT INTO compras (id_compras, cedula, fecha_compra, monto)
VALUES
    (1, '1234567890', '2022-01-05', 50.00),
    (2, '2345678901', '2022-02-10', 100.50),
   	(3, '3456789012', '2022-03-15', 75.25),
    (4, '4567890123', '2022-04-20', 120.75),
   	(5, '5678901234', '2022-05-25', 90.00),
   	(6, '5678901234', '2022-06-30', 200.00),
   	(7, '5678901234', '2022-07-05', 150.25),
  	(8, '3456789012', '2022-08-10', 80.50),
    (9, '1234567890', '2022-09-15', 175.75),
    (11, '6678901234', '2022-10-20', 300.00);
   
   
--- creacion de tabla producto

drop table productos

create table productos(
	codigo int not null,
	nombre varchar (50) not null,
	descripcion varchar (200) ,
	precio  money not null,
	stock int not null,
	
	constraint producto_key primary key (codigo)
)
   -- creacion de ventas
create table ventas(
	id_ventas int,
	codigo_producto int,
	fecha_venta date ,
	cantidad int,
	
	constraint ventas_key primary key (id_ventas)
)
-- creacion de foreing key 
alter table ventas
add constraint ventas_productos_fk 
foreign key (codigo_producto)
references productos(codigo)



insert into productos(codigo,nombre,descripcion, precio,stock)
values(12,'galleta','sabor chocolate',2.00,12);

insert into productos(codigo,nombre,descripcion, precio,stock)
values(13,'caramelos','sabor fresa',1.00,2);

insert into productos(codigo,nombre,descripcion, precio,stock)
values(14,'bebidas','sabor tropical',2.00,20);

insert into productos(codigo,nombre,descripcion, precio,stock)
values(15,'pera','',1.00,20);

insert into productos(codigo,nombre,descripcion, precio,stock)
values(16,'mazanas','',1.00,16);
insert into productos(codigo,nombre, precio,stock)
values(17,'mandarinas',1.00,34);
insert into productos(codigo,nombre, precio,stock)
values(18,'manzanas verdes',1.50,25);
insert into productos(codigo,nombre, precio,stock)
values(19,'mango',1.34,22);
  


insert into ventas (id_ventas, codigo_producto, fecha_venta, cantidad)
values(1,13,'2024/08/22',12);
insert into ventas (id_ventas, codigo_producto, fecha_venta, cantidad)
values(2,19,'2024/08/29',4);
insert into ventas (id_ventas, codigo_producto, fecha_venta, cantidad)
values(3,13,'2024/08/29',8);

insert into ventas (id_ventas, codigo_producto, fecha_venta, cantidad)
values(5,13,'2024/08/22',12);
insert into ventas (id_ventas, codigo_producto, fecha_venta, cantidad)
values(6,19,'2024/08/29',4);
insert into ventas (id_ventas, codigo_producto, fecha_venta, cantidad)
values(7,13,'2024/08/29',8);
insert into ventas (id_ventas, codigo_producto, fecha_venta, cantidad)
values(8,13,'2024/08/22',12);
insert into ventas (id_ventas, codigo_producto, fecha_venta, cantidad)
values(9,19,'2024/08/29',4);
insert into ventas (id_ventas, codigo_producto, fecha_venta, cantidad)
values(10,13,'2024/08/29',8);
insert into ventas (id_ventas, codigo_producto, fecha_venta, cantidad)
values(11,13,'2024/08/22',12);
insert into ventas (id_ventas, codigo_producto, fecha_venta, cantidad)
values(12,19,'2024/08/29',4);

insert into ventas (id_ventas, codigo_producto, fecha_venta, cantidad)
values(3,13,'2024/08/29',8);


--creacion videojuegos

create table videojuegos(
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	
	constraint vedeojuegos_key primary key (codigo)
)

create table plataforma(
	id_plataforma int,
	nombre_plataforma varchar(50),
	codigo_videojuego int,
	
	constraint plataforma_key primary key (id_plataforma)
	
)

-- foreing key 
alter table plataforma
add constraint palataforma_videojuego_fk
foreign key (codigo_videojuego)
references videojuegos(codigo)


insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(1,'juego1','juego de gerra',10);
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(2,'juego2','juego de carros',20);
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(3,'juego3','juego de aventura',30);
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(4,'juego4','juego de razonamiento',40);
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(5,'juego5','juego de combate',50);

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(30,'juego6','juego de aventura',30);
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(40,'juego45','juego de razonamiento',40);
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(50,'juego50','juego de combate',50);

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(12,'Gof of Work','Guerra',80);
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(13,'Free Fire','juego de guera',40);
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(14,'Mario Kart','juego de aventura',50);


insert into plataforma(id_plataforma, nombre_plataforma, codigo_videojuego)
values(12,'Play Station',1);
insert into plataforma(id_plataforma, nombre_plataforma, codigo_videojuego)
values(13,'Play Station',11);
insert into plataforma(id_plataforma, nombre_plataforma, codigo_videojuego)
values(14,'XBox',11);
insert into plataforma(id_plataforma, nombre_plataforma, codigo_videojuego)
values(15,'Nitenton',8);

insert into plataforma(id_plataforma, nombre_plataforma, codigo_videojuego)
values(1,'Play Station',30);
insert into plataforma(id_plataforma, nombre_plataforma, codigo_videojuego)
values(3,'Play Station',50);
insert into plataforma(id_plataforma, nombre_plataforma, codigo_videojuego)
values(4,'XBox',5);
insert into plataforma(id_plataforma, nombre_plataforma, codigo_videojuego)
values(15,'Nitenton',40);





