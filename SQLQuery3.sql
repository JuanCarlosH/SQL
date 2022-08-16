USE [Universidad]
GO

/****** Object:  Table [dbo].[Alumnos]    Script Date: 17-06-2022 23:03:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Alumnos](
	[IdAlumno] [int] IDENTITY(1,1) NOT NULL,
	[IdentidadAlumno] [varchar](20) NOT NULL,
	[Nombres] [varchar](50) NULL,
	[Apellidos] [varchar](50) NULL,
	[Genero] [varchar](12) NULL,
	[EstadoCivil] [varchar](20) NULL,
	[Fecha_Nacimiento] [date] NULL,
	[Telefono] [varchar](15) NULL,
	[Correo] [varchar](50) NULL,
	[Direccion] [text] NULL,
 CONSTRAINT [PK_Alumnos] PRIMARY KEY CLUSTERED 
(
	[IdentidadAlumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO




select * from Universidad.dbo.Alumnos
order by IdAlumno

insert  into Alumnos values ('15031990', 'Jairo', 'Galeas', 'Masculino', 'Casado', '19900112', '88779988', 'jairo@jairogaleas.com', 'Barrio el Colegio')
insert  into Alumnos values ('15531870', 'Jaime', 'Aldunate', 'Masculino', 'Soltero', '19920102', '96607314', 'jaldus@gmail.com', 'Gran Bretaña')
insert  into Alumnos values ('14753698', 'Andres', 'Sarmiento', 'Masculino', 'Soltero', '19841002', '9666666', 'ies@gmail.com', 'Algarrobo')
insert  into Alumnos values ('18765235', 'María', 'Gonzalez', 'Femenino', 'Divorciada', '19801102', '9777777', 'imaria@gmail.com', 'Santiago')