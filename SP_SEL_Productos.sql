

--EXEC SP_SEL_Productos 4


CREATE PROC SP_SEL_Productos(
	@idProducto int = 0
)
AS

if @idProducto > 0
	SELECT * from Producto WHERE idProducto = @idProducto
else
	SELECT * from Producto ORDER BY descripcion