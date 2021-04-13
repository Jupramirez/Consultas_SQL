-- Group BY --
use curso;
-- Agrupacion de la suma segun el dia -- 
SELECT ventas.Ventas_Fecha, sum(ventas.Ventas_Total) as total
	from ventas
    group by Ventas_Fecha;
    
select year(ventas_Fecha) as ano,
		month(ventas_Fecha) as mes,
        sum(v.Ventas_Total) as total
	from curso.ventas as v
    group by ano,mes;
    
-- Clausula IN / NOT IN

SELECT distinct(ventas.Ventas_CliId) from ventas;
-- Mostrar los clientes que no realizaron compras
SELECT clientes.Cli_Id as nro, clientes.Cli_RazonSocial as nombre from clientes
	where clientes.Cli_Id NOT IN
    (select distinct(ventas.Ventas_CliId) as cliente from ventas);
    
-- Si se cambia por In serian los clientes que si compraron --
SELECT clientes.Cli_Id as nro from clientes where clientes.Cli_Id in ( 1,5,6,10);

-- between --
SELECT ventas.Ventas_Fecha, ventas.Ventas_CliId,ventas.Ventas_Total from ventas	
	where ventas.Ventas_Fecha between '2018-02-01' and '2018-04-03';
    
-- like --
-- '%AD' trae los que terminen com AD
-- 'AD%' que comiencen con AD
-- %AD%' que contengan AD
SELECT productos.Prod_Id, productos.Prod_Descripcion,productos.Prod_Color from productos
	where productos.Prod_Descripcion like '%AD';
    
-- CONCAT --
select Prod_Id , Prod_Descripcion, Prod_Color
	from productos
	where concat(productos.Prod_Descripcion,productos.Prod_Color) like '%AD%';
    
