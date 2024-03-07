CREATE TABLE transacciones (
  codigo INTEGER NOT NULL,
  numero_cuenta CHAR(5) NOT NULL,
  monto MONEY NOT NULL,
  tipo CHAR(1) NOT NULL,
  fecha DATE NOT NULL,
  hora TIME NOT NULL,
  constraint transacciones_pk primary key(codigo)

);
