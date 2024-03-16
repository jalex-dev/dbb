--productos
select *from productos where stock = 10 and precio < money(10)

select nombre , stock  from productos where nombre like '%m%' or descripcion like '% %'

select nombre  from productos where descripcion is null or stock =0
--cuentas
select numero_cuenta ,saldo  from cuentas where saldo > money(100) and saldo <money(1000)

select * FROM cuentas WHERE fecha_creacion  >= CURRENT_DATE - INTERVAL '1 year' AND fecha_creacion  <= CURRENT_DATE;

select *from cuentas where saldo = money(0) or cedula_propietario like '%2'

-- estudiantes
select nombre , apellido  from estudiantes where nombre like 'M%' or apellido like '%z' 

select nombre from estudiantes where cedula like '%32%' and cedula like '%18%'

select CONCAT(nombre, ' ', apellido) AS nombre_completo from estudiantes where cedula like '%06' or cedula like '17%'

--registro de entradas
select *from registros_entrada where extract(month from fecha)=9 or cedula_empleado like '17%'

select *from registros_entrada where extract(month from fecha)=8 and cedula_empleado like '17%' and hora between '08:00' and '12:00'

select *from registros_entrada where (extract(month from fecha)=8 and cedula_empleado like '17%' and hora between '08:00' and '12:00') or (extract(month from fecha)=9 and cedula_empleado like '08%' and hora between '09:00' and '13:00')

--video juego

select *from videojuegos where nombre like 'C' or valoracion = 7;
select *from videojuegos WHERE (codigo BETWEEN 3 AND 7) or valoracion =7;
select *from videojuegos WHERE (nombre like  '%Guerra%' AND valoracion > 7 AND nombre LIKE 'C%')
   OR (valoracion > 8 AND nombre LIKE 'D%');
  
--transacciones
  
select *from transacciones where tipo ='C' and CAST(numero_cuenta AS INT) BETWEEN 22004 AND 222001;

SELECT * FROM transacciones WHERE tipo = 'D' AND DATE(fecha) = '2024-05-25' AND numero_cuenta BETWEEN '22007' AND '22010';

SELECT * FROM transacciones WHERE (codigo BETWEEN 1 AND 5)
  AND (numero_cuenta = '22002' OR numero_cuenta = '22004')
  AND (fecha between '2024-05-26' and '2024-05-29');





















