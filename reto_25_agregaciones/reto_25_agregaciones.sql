--Cuentas 
select * from cuentas
select avg(cast(saldo as numeric)) as saldo_promedio from cuentas
where cedula_propietario = '52349'

select count (tipo_cuenta) , tipo_cuenta from usuario
Group by (tipo_cuenta)

--clientes comrpas
select  cedula, Sum(monto) from compras
group by(cedula)

select count(cedula) as total_compras, fecha_compra from compras
group by(fecha_compra)


--estudiantes profesor
select count(es.nombre) , pro.codigo from estudiantes es,profesores pro
group by(pro.codigo)

select round(AVG((EXTRACT(YEAR FROM CURRENT_date)) - (EXTRACT( YEAR FROM fecha_nacimiento)))) as edad_promedio 
FROM estudiantes;

--personsa y prestamos
select pre.cedula, sum(monto) as monto_total_prestamo from prestamo pre 
group by(cedula)
select count(per.numero_hijos) as total_personsa from personas per
where numero_hijos >1

--productos y ventas
select max(precio) as precio_maximo from productos
select sum(cantidad) as cantidad_vendida from ventas

--transaciones y banco 
select count(codigo) as transacciones from transacciones
where tipo= 'c'

select numero_cuenta , round(avg(cast(monto as decimal)),2) as monto_promedio from transacciones 
group by( numero_cuenta)

--videos juegos y platafora
select  video.codigo ,count(id_plataforma) as tatal from plataforma , videojuegos video
group by(codigo);

select round(avg(valoracion),2) as valoracion_promedio from videojuegos

--registro de entrada
select cedula_empleado, count(codigo_registro)  from registro_entrada, empleado
group by(cedula_empleado);

select max(fecha) as fecha_maxima , min(fecha) as fecha_minima from registro_entrada
