CREATE TABLE cuentas (
  numero_cuenta char(5) not NULL,
  cedula_propietario char(5) NOT NULL,
  fecha_creacion date NOT NULL,
  saldo money NOT NULL,
  constraint cuentas_pk primary key (numero_cuenta)

);
