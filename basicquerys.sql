use curso;
SELECT Cli_Id FROM curso.clientes WHERE Cli_Id > 10;

SELECT Prod_Id,curso.productos.Prod_Descripcion,curso.productos.Prod_Precio FROM curso.productos
	WHERE Prod_Precio > 0;
    
SELECT * 	FROM productos 
	WHERE Prod_Precio > 0 AND Prod_Status =0;
    
SELECT * FROM curso.productos 
	where Prod_Precio > 0 AND ( Prod_Status = 0 OR ( Prod_Status = 1 AND Prod_ProvId = 97));
    
SELECT curso.ventas.Ventas_Fecha , Ventas_CliId , Ventas_Total FROM ventas 
	WHERE Ventas_Fecha > '2010-01-03' AND Ventas_fecha < '2018-01-10' and ventas_CliId <> 1;
 
 
 
 SELECT Ventas_Fecha AS fecha, v.Ventas_CliId, c.Cli_Id  
	FROM curso.ventas AS v, curso.clientes AS c
    WHERE v.Ventas_CliId = c.Cli_Id;
    

    
    

    
