

EXEC SP_INS_Venta 2,10
select * from venta

CREATE PROC SP_INS_Venta(
		@idProducto int,
		@cantidad int
)
AS

INSERT INTO Venta VALUES(@idProducto,@cantidad,getdate())