--usuario y cuentas 
select usu.nombre, cu.numero_cuenta from usuario usu, cuentas cu
where  saldo>money(100) and saldo<money(1000);

SELECT * 
FROM cuentas cu 
INNER JOIN usuario u ON cu.cedula_propietario = u.cedula
WHERE fecha_creacion BETWEEN '2022-09-21' AND '2023-09-21';

-- cliente y compras
--select *from clientes
select cli.nombre, cli.apellido from clientes cli , compras com
where cli.cedula = com.cedula 
and cli.cedula like '%7%'

select cli.cedula,cli.nombre,cli.apellido from clientes cli , compras com
where cli.cedula = com.cedula 
and cli.nombre like '%Monica%'

--estudiantes-profesor

select pro.codigo, est.nombre, est.apellido from estudiantes est , profesores pro
where est.apellido like '%n'

select *from profesores

select *from estudiantes est , profesores pro
where est.codigo_profesor = pro.codigo
and  pro.codigo = 1115



--personas y prestamo
select *from prestamo
select per.cantidad_ahorrada , pre.monto ,pre.grante from prestamo pre, personas per
where monto >money(100) and monto< money(1000)

select per.cedula, per.nombre, per.apellido, per.estatura,per.cantidad_ahorrada
from personas per , prestamo pre
where per.cedula = pre.cedula
and per.nombre like '%Sean%'

--productos y ventas

select pro.nombre, pro.stock, ven.cantidad from productos pro, ventas ven
where pro.nombre like 'm%' or pro.descripcion = 'O'

select *from productos
select *from ventas

select pro.nombre , pro.stock  from productos pro, ventas v
where v.codigo_producto = pro.codigo
and v.cantidad = 5

--transacciones y bancos
select *from transacciones where tipo ='C' and CAST(numero_cuenta AS INT) 
BETWEEN 22004 AND 222001;

select *from transacciones,banco

select * from transacciones tran, banco ban
where tran.codigo = ban.codidigo_transaccion
and ban.codidigo_transaccion= 1






