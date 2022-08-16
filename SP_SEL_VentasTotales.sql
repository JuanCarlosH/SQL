


--EXEC SP_SEL_VentasTotales

CREATE PROC SP_SEL_VentasTotales
AS

SELECT SUM(precio * cantidad) VentasTotales from Venta V
INNER join Producto P
ON P.idProducto = V.idProducto