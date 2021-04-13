-- Order by: Ordena los campos --
use curso;
SELECT * FROM clientes order by Cli_RazonSocial;

SELECT * FROM productos order by Prod_Descripcion,Prod_Precio desc;

SELECT * FROM ventas_detalle,productos where VD_ProdId = Prod_Id
	order by Prod_Id desc;
    
-- suma --
-- Suma las ventas que se tuvieron en el mes 1 año 2018 --
SELECT SUM(ventas.Ventas_Total) as TotalVentas 
	from ventas 
		where MONTH(Ventas_Fecha) = 1 AND YEAR (Ventas_fecha)=2018;

-- count--
-- Cuenta todos los registros --
SELECT COUNT(*) AS cantidad_ventas FROM ventas where month(ventas_Fecha)=1;

-- max --
SELECT MAX(ventas.Ventas_Total) AS VentaMaxima 
	FROM ventas where MONTH(Ventas_Fecha) = 1 and YEAR(Ventas_Fecha)=2018;
    
-- avg--
SELECT AVG(ventas.Ventas_Total) AS VentaPromedio FROM Ventas WHERE MONTH(ventas.ventas_fecha) and year(ventas.ventas_Fecha);


      
