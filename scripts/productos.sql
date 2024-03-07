create table productos(
	codigo int  not null,
	nombre varchar(50)not null,
	descripciom varchar(200) not null,
	precio money not null,
	stock int not null,
	constraint productos_pk primary key (codigo)
)