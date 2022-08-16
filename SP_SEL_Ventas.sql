

--EXEC SP_SEL_Ventas


CREATE PROC SP_SEL_Ventas(
			@idProducto int = 0
)
As

if @idProducto > 0
	SELECT * from Venta V
	INNER JOIN Producto P
	on P.idProducto = V.idProducto
	WHERE V.idProducto = @idProducto
else
	SELECT * from Venta V
	INNER JOIN Producto P
	on P.idProducto = V.idProducto

