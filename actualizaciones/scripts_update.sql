#productos 
select *from productos
update productos set stock = 0
where descripcion is null

#cuentas

select *from cuentas
update cuentas set saldo = 10.0
where cedula_propietario like '17%'

#estudiantes

select *from estudiantes
update estudiantes set apellido = 'Hernadez'
where cedula like '17%'

#registros_entradas

select *from registros_entrada
UPDATE registros_entrada SET cedula_empleado = '082345679'
WHERE DATE_PART('month', fecha) = 8;


#videos juegos 
select *from videojuegos
UPDATE videojuegos SET descripcion = 'Mejor puntuado'
WHERE valoracion > 9;


# transacion 

select *from transacciones

UPDATE transacciones SET tipo = 'T'
WHERE monto BETWEEN money(100) AND money(500)
  AND DATE_PART('month', fecha) = 9
  AND hora BETWEEN '14:00' AND '20:00';



