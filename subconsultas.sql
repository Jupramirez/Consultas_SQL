-- subconsultas
-- Trae el ultimo producto vendido
SELECT productos.Prod_Id as Articulo,
	productos.Prod_Descripcion as Descripcion,
    (select max(ventas.Ventas_Fecha) as ultf from ventas
		join ventas_detalle on ventas.Ventas_Id = VD_VentasId
			where productos.Prod_Id = 1633) as ultfecha
	from productos
		where productos.Prod_Id = 1633;
        
-- trae mas informacion
select productos.Prod_Id as Articulo,
	productos.Prod_Descripcion as Descripcion,
    (select max(ventas.Ventas_Fecha) as ultf
		from ventas
        join ventas_detalle on Ventas_Id = VD_VentasId
			where productos.Prod_Id = 1633) as ultFecha,
	(select count(distinct(ventas.Ventas_CliId))
    as cdd from ventas
			join ventas_detalle on Ventas_Id = VD_VentasId
				where productos.Prod_Id=1633) as CantCli
	from productos
    where Prod_Id = 1633;
    
 -- Having 
 -- Where que se ejecuta despues de datos consultados
 
 -- Ordena por año y mes y filtra el total
select year(Ventas_Fecha) as ano,
		month(Ventas_Fecha) as mes,
        sum(Ventas_Total) as total
        from ventas
        group by ano,mes
        having total > 1000000;
        
select productos.Prod_Id, productos.Prod_Descripcion,productos.Prod_Color,
		sum(VD_cantidad) as unidades
        from productos
			join ventas_detalle on Prod_Id = VD_ProdId
            join ventas on VD_VentasId = Ventas_Id
		where productos.Prod_ProvId = 1 and Ventas_Fecha
        between "2018-01-01" and "2018-02-14" 
        group by Prod_Id
        having unidades > 20
        order by unidades desc;
        