use curso;
-- Funciones basicas
-- if --
SELECT productos.Prod_Id, productos.Prod_Descripcion,
	if(Prod_Status = 1 , 'Habilitado','Deshabilitado') as estado
    from productos;
    
-- case
SELECT Prod_Id , Prod_Descripcion,
	case when Prod_Status = 1 then 'Habilitado'
		when prod_status = 0 then 'Deshabilitado'
        end as estado
        from productos;
        
-- substring
-- Muestra los caracteres 1 hasta 10 de una cadena de texto
select productos.Prod_Id,productos.Prod_Descripcion,
	substr(Prod_Descripcion,1,10) as parte
    from productos;
-- Si la primera letra es a muestra letra a y lo mismo con  b
select Prod_Id,Prod_Descripcion,
		case substr(Prod_Descripcion,1,1)
			when 'A' THEN 'lETRA A'
            WHEN 'b' THEN 'LETRA b'
            END AS ejercicio
		from productos;
    
-- ucase --
select productos.Prod_Id , productos.Prod_Descripcion,
	case substr(Prod_Descripcion ,1,1)
		when 'A' then 'Letra A'
        when 'B' then 'Letra B'
        end as ejercicio
	from productos;
    
-- current-date: devuelve la fecha
-- datediff
SELECT datediff('2018-01-01','2018-06-01')
	as Fechas , productos.Prod_Id from productos;
    

    
    