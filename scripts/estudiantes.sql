CREATE TABLE estudiantes (
  cedula char(10) NOT NULL,
  nombre varchar(50) NOT NULL,
  apellido varchar(50) NOT NULL,
  fecha_nacimiento date NOT NULL,
  email varchar(50) NOT NULL,
  constraint estudiantes_pk primary key(cedula)
);
