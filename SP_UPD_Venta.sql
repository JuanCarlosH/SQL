

--select * from venta

EXEC SP_UPD_Venta 1,2,50,'2019-10-16'


CREATE PROC SP_UPD_Venta(
		@idVenta int,
		@idProducto int,
		@cantidad int,
		@fechaVenta datetime
)
AS

UPDATE Venta
SET idProducto = @idProducto,
cantidad = @cantidad,
fechaVenta = @fechaVenta
WHERE idVenta = @idVenta