
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



-- creacion studiantes
drop table estudiantes 

create table estudiantes(
	cedula char(10) not null,
	nombre varchar(50)not null,
	apellido varchar (50)not null,
	enail varchar (50) not null,
	fecha_nacimiento date,
	codigo_profesor int not null,
	constraint estudiantes_key primary key (cedula)
)
create table profesores(
	codigo int ,
	nombre varchar,
	constraint profesores_key primary key (codigo)
	
)

alter table estudiantes
add constraint estudiantes_profesores_fk 
foreign key (codigo_profesor)
references profesores (codigo)



-- creacion resgistro-entrada

drop table registro_entrada;
create table registro_entrada(
	codigo_registro int not null,
	cedula_empleado char (10) not null,
	fecha date not null,
	hora time not null,
	codigo_empleo int not null,
	constraint registro_entrada_key primary key(codigo_registro)
)
create table empleado(
	codigo_empleado int,
	nombre varchar(50),
	fecha date,
	hora time, 
	
	constraint empleado_key primary key (codigo_empleado)
	
)

alter table registro_entrada
add constraint registo_entrada_empleado_fk
foreign key (codigo_empleado)
references empleado(codigo_empleado)



create table persona(
	cedula char(10),
	nombre varchar(50),
	apellido varchar(50),
	estatura decimal(10,2),
	fecha_nacimento date ,
	hora_nacimeinto time,
	cantidad_ahorrada money ,
	numeros_hijos int ,
	
	constraint persona_key primary key(cedula)
)

create table prestamo(
	cedula char(10),
	monto money,
	fecha_prestamo date,
	hora_prestamo time,
	grante varchar(50),
	constraint prestamo_key primary key (cedula)
)

alter table prestamo 
add constraint prestamo_persona_fk 
foreign key (cedula)
references personas(cedula)

select *from personas p


-- creaccion de transacciones

create table transacciones(

	codigo int not null,
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1)not null,
	fecha date not null,
	hora time not null,
	
	constraint transacciones_key primary key (codigo)
)

select *from transacciones t 
create table banco(
	codigo_banco int,
	codidigo_transaccion int ,
	detalle varchar(100),
	constraint banco_key primary key (codigo_banco)
)


alter table banco
add constraint banco_transaccion_key 
foreign key (codidigo_transaccion)
references transacciones(codigo)







