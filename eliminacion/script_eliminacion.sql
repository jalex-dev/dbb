#videos juegos
select *from videojuegos

delete from videojuegos where valoracion < 7

#transacciones 

select *from transacciones

delete from transacciones where fecha BETWEEN '2024-08-01' AND '2024-08-31'
  AND hora BETWEEN '14:00:00' AND '18:00:00';