

--select * from producto
--EXEC SP_INS_Producto 'Camisa manga corta','Gris',525

CREATE PROC SP_INS_Producto(
	@descripcion varchar(50),
	@color varchar(20),
	@precio money
)
AS
--contenido

INSERT INTO Producto VALUES(@descripcion,@color,@precio)