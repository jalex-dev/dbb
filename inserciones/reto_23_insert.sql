
-- EJERCICIO TIPOS RELACIONES

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
   
-- creacion de clientesa

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




-- creacion studiantes


insert into profesores(codigo, nombre)
values(1112,'Esthefanny');
insert into profesores(codigo, nombre)
values(1113,'Alex');
insert into profesores(codigo, nombre)
values(1114,'Joao');

insert into profesores(codigo, nombre)
values(1115,'Francisco');


insert into estudiantes(cedula,nombre,apellido,enail,fecha_nacimiento,codigo_profesor)
values('1111487608','luis','Martin','luis@gmail.com','30/12/1990',1112);
insert into estudiantes(cedula,nombre,apellido,enail,fecha_nacimiento,codigo_profesor)
values('1111487611','jose','Delgado','jose@gmail.com','30/12/1990',1112);
insert into estudiantes(cedula,nombre,apellido,enail,fecha_nacimiento,codigo_profesor)
values('1111487622','Maria','neon','maria@gmail.com','30/09/1999',1113);
insert into estudiantes(cedula,nombre,apellido,enail,fecha_nacimiento,codigo_profesor)
values('1111487605','Lucho','anes','luchi@gmail.com','30/12/1990',1112);
insert into estudiantes(cedula,nombre,apellido,enail,fecha_nacimiento,codigo_profesor)
values('1111487616','Ana','Roca','aana@gmail.com','30/11/1995',1112);
insert into estudiantes(cedula,nombre,apellido,enail,fecha_nacimiento,codigo_profesor)
values('1111487623','Rico','martin','rico@gmail.com','12/03/1989',1113);
insert into estudiantes(cedula,nombre,apellido,enail,fecha_nacimiento,codigo_profesor)
values('1111487610','luisa','Gonzale','luisa@gmail.com','30/12/1990',1112);
insert into estudiantes(cedula,nombre,apellido,enail,fecha_nacimiento,codigo_profesor)
values('1111482611','Tonny','Start','tonny@gmail.com','30/12/1990',1112);
insert into estudiantes(cedula,nombre,apellido,enail,fecha_nacimiento,codigo_profesor)
values('1121487612','Hernans','Rabs','josefina@gmail.com','30/09/1999',1113);



-- creacion resgistro-entrada

insert into empleado(codigo_empleado,nombre,fecha,hora)
values(1212,'Joao','2000/01/12','14:00');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2201,'Marcelo','1995/05/12','14:30');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2301,'Maria','2024/08/12','14:00');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2202,'luis','2024/05/12','14:30');


insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora,codigo_empleo)
values(12,'1245774623','28/11/2024','13:00',2201);
insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora,codigo_empleo)
values(13,'1245774233','28/11/2024','13:00',2201);
insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora,codigo_empleo)
values(14,'1245774623','28/11/2024','13:00',1212);





select *from personas p 
insert into personas(cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento ,cantidad_ahorrada,numero_hijos,estado_civil_codigo)
values('1105232978','Sean','morocho',500.0,'1997/08/09','18:00',22.0,0,'S')


insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo, grante)
values('1234567890',500,'2024/01/23','10:00','luis');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo, grante)
values('1105232978',700,'2024/01/23','15:00','pepe');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo, grante)
values('1105232978',350,'2024/01/29','19:00','angela');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo, grante)
values('1234567890',350,'2024/02/1','09:00','angel');

insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo, grante)
values('1234567890',500,'2024/01/23','10:00','luis');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo, grante)
values('1234567890',700,'2024/01/23','15:00','pepe');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo, grante)
values('1234567890',350,'2024/01/29','19:00','angela');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo, grante)
values('1105232978',350,'2024/02/1','09:00','angel');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo, grante)
values('1105232978',500,'2024/01/23','10:00','luis');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo, grante)
values('1105232978',700,'2024/01/23','15:00','pepe');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo, grante)
values('1105232978',350,'2024/01/29','19:00','angela');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo, grante)
values('1105232978',350,'2024/02/1','09:00','angel');


-- creaccion de transacciones


insert into banco(codigo_banco,codidigo_transaccion,detalle)
values(1112,5,'detalle de la tansaccion por motivps de pagos ');
insert into banco(codigo_banco,codidigo_transaccion,detalle)
values(1113,3,'detalle de la tansaccion por pago de deuda ');
insert into banco(codigo_banco,codidigo_transaccion,detalle)
values(1114,6,'detalle de la tansaccion por motivps de pagos ');
insert into banco(codigo_banco,codidigo_transaccion,detalle)
values(1115,8,'detalle de la tansaccion por compra de uan moto ');
insert into banco(codigo_banco,codidigo_transaccion,detalle)
values(1116,1,'detalle de la tansaccion por motivps de pagos ');
insert into banco(codigo_banco,codidigo_transaccion,detalle)
values(1117,3,'detalle de la tansaccion por pago de deuda ');
insert into banco(codigo_banco,codidigo_transaccion,detalle)
values(1118,1,'detalle de la tansaccion por motivps de pagos ');
insert into banco(codigo_banco,codidigo_transaccion,detalle)
values(1119,2,'detalle de la tansaccion por compra de uan moto ');
