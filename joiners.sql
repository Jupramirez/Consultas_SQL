-- inner join --
SELECT ventas.Ventas_Fecha,clientes.Cli_RazonSocial,productos.Prod_Precio,(VD_Cantidad * VD_Precio) as Parcial
	from ventas
		join 
		ventas_detalle 
			on 
			ventas_detalle.VD_VentasId = Ventas_Id
		join
        productos
			on
            VD_ProdId = Prod_Id
		join
        proveedores
			on
            Prod_ProvId = Prov_Id
		join
        clientes
			on
            Ventas_CliId = Cli_Id;
            
-- left join --
-- Me realiza la union pòr la ixquierda
SELECT * FROM clientes
left join ventas on Ventas_CliId = clientes.Cli_Id;

-- right join 
select * from clientes
right join ventas on Ventas_CliId = clientes.Cli_Id;

-- fullo join.. union unir dos tablas