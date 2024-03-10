select *from personas where nombre = 'Emely'

select numero_hijos,*from personas where numero_hijos = 4 


select *from personas where cedula like '%2%'

select *from personas where estatura > 1.40

select *from personas where fecha_nacimiento >= '20/03/1987'

select *from personas 
where fecha_nacimiento between  '20/03/1987' and '20/07/1990'


select *from personas where hora_nacimiento >= '10:00:00'

select *from personas where fecha_nacimiento is not null

select *from personas where hora_nacimiento is null

select *from personas where apellido like 'C%'

select *from personas where estatura <> 1.78