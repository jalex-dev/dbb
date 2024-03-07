CREATE TABLE registros_entrada (
  codigo_registro INTEGER NOT NULL,
  cedula_empleado CHAR(10) NOT NULL,
  fecha DATE NOT NULL,
  hora TIME NOT NULL,
  constraint registro_entradas_pk primary key(codigo_registro)

);
