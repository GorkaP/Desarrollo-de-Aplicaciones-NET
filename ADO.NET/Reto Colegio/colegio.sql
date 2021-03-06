USE CheDB
GO

CREATE SCHEMA cole
GO
/****** Object:  Table [cole].[alumnos]    Script Date: 08/02/2018 7:44:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cole].[alumnos](
	[id] [smallint] NOT NULL,
	[nombre] [varchar](25) NOT NULL,
	[apellido] [varchar](25) NULL,
	[ciudad] [varchar](25) NULL,
	[idTutor] [tinyint] NULL,
 CONSTRAINT [PK_alumnos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cole].[ASIGNATURAS]    Script Date: 08/02/2018 7:44:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cole].[ASIGNATURAS](
	[IDESPECIALIDAD] [char](4) NOT NULL,
	[CODCURSO] [char](1) NOT NULL,
	[CODASIG] [char](5) NOT NULL,
	[DESCRIPCION] [varchar](60) NULL,
	[NOTAMEDIA] [decimal](4, 2) NULL,
	[NUMALUMNOS] [tinyint] NULL,
	[IDPROFESOR] [tinyint] NULL,
 CONSTRAINT [PK_ASIGNATURAS] PRIMARY KEY CLUSTERED 
(
	[IDESPECIALIDAD] ASC,
	[CODCURSO] ASC,
	[CODASIG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cole].[especialidades]    Script Date: 08/02/2018 7:44:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cole].[especialidades](
	[ID] [char](4) NOT NULL,
	[DENOMINACION] [varchar](200) NOT NULL,
 CONSTRAINT [PK_especialidades] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cole].[HistoProfesores]    Script Date: 08/02/2018 7:44:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cole].[HistoProfesores](
	[idProfesor] [tinyint] NULL,
	[num_asignaturas] [tinyint] NULL,
	[nota_media] [decimal](4, 2) NULL,
	[num_alumnos] [smallint] NULL,
	[alumnos_suspendidos] [smallint] NULL,
	[fecha_baja] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [cole].[notas]    Script Date: 08/02/2018 7:44:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cole].[notas](
	[IDALUMNO] [smallint] NOT NULL,
	[IDESPECIALIDAD] [char](4) NOT NULL,
	[CODCURSO] [char](1) NOT NULL,
	[CODASIG] [char](5) NOT NULL,
	[NOTA] [smallint] NULL,
 CONSTRAINT [PK_notas] PRIMARY KEY CLUSTERED 
(
	[IDALUMNO] ASC,
	[IDESPECIALIDAD] ASC,
	[CODCURSO] ASC,
	[CODASIG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cole].[profesores]    Script Date: 08/02/2018 7:44:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cole].[profesores](
	[id] [tinyint] NOT NULL,
	[nombre] [varchar](25) NOT NULL,
	[apellido] [varchar](25) NULL,
	[ciudad] [varchar](25) NULL,
 CONSTRAINT [PK_profesores] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [cole].[alumnos] ([id], [nombre], [apellido], [ciudad], [idTutor]) VALUES (1, N'Segismundo', N'Romanones', N'Valladolid', 2)
INSERT [cole].[alumnos] ([id], [nombre], [apellido], [ciudad], [idTutor]) VALUES (2, N'Margarita', N'Pita', N'Medina del campo', 1)
INSERT [cole].[alumnos] ([id], [nombre], [apellido], [ciudad], [idTutor]) VALUES (3, N'Catalina', N'Margales', N'cabezón de la sal', 3)
INSERT [cole].[alumnos] ([id], [nombre], [apellido], [ciudad], [idTutor]) VALUES (4, N'Raimundo', N'Momo', N'Villafranca del Penedés', 1)
INSERT [cole].[alumnos] ([id], [nombre], [apellido], [ciudad], [idTutor]) VALUES (5, N'Melania', N'Ardores', N'Wisconsin', 2)
INSERT [cole].[alumnos] ([id], [nombre], [apellido], [ciudad], [idTutor]) VALUES (6, N'Emiliano', N'Canales', N'Pisuerga', 1)
INSERT [cole].[alumnos] ([id], [nombre], [apellido], [ciudad], [idTutor]) VALUES (7, N'Rodomiro ', N'Robles', N'Medina del Campo', 1)
INSERT [cole].[alumnos] ([id], [nombre], [apellido], [ciudad], [idTutor]) VALUES (8, N'Hilario', N'Sainz de Vicuña', N'Pamplona', 2)
INSERT [cole].[alumnos] ([id], [nombre], [apellido], [ciudad], [idTutor]) VALUES (9, N'Felipe', N'Hermoso de Mendoza', N'Peralta', 3)
INSERT [cole].[alumnos] ([id], [nombre], [apellido], [ciudad], [idTutor]) VALUES (10, N'Jokine', N'Ugartemendía', N'Abalcisqueta', 1)
INSERT [cole].[alumnos] ([id], [nombre], [apellido], [ciudad], [idTutor]) VALUES (11, N'Eufemiano', N'Cama', N'Pocilgas', 1)
INSERT [cole].[alumnos] ([id], [nombre], [apellido], [ciudad], [idTutor]) VALUES (12, N'Crisanta', N'Cormenzana', N'Calamocos', 1)
INSERT [cole].[alumnos] ([id], [nombre], [apellido], [ciudad], [idTutor]) VALUES (13, N'Liberto', N'Lavarejos', N'Meadero de la Reina', 2)
INSERT [cole].[alumnos] ([id], [nombre], [apellido], [ciudad], [idTutor]) VALUES (14, N'Celestina', N'Pasamar', N'Sordillos', 2)
INSERT [cole].[alumnos] ([id], [nombre], [apellido], [ciudad], [idTutor]) VALUES (15, N'Polonio', N'Sanlés', N'Alcantarilla', 3)
INSERT [cole].[alumnos] ([id], [nombre], [apellido], [ciudad], [idTutor]) VALUES (16, N'Terencio', N'Sobrino', N'Cotillas', 5)
INSERT [cole].[alumnos] ([id], [nombre], [apellido], [ciudad], [idTutor]) VALUES (17, N'Lisardo', N'Trápaga', N'Arrancacepas', 4)
INSERT [cole].[alumnos] ([id], [nombre], [apellido], [ciudad], [idTutor]) VALUES (18, N'Melanio', N'Pisón', N'Cariño', 5)
INSERT [cole].[alumnos] ([id], [nombre], [apellido], [ciudad], [idTutor]) VALUES (19, N'Primitiva', N'Pillado', N'Dolores', 5)
INSERT [cole].[alumnos] ([id], [nombre], [apellido], [ciudad], [idTutor]) VALUES (20, N'Procopio', N'Enamorado', N'Agudo', 5)
INSERT [cole].[alumnos] ([id], [nombre], [apellido], [ciudad], [idTutor]) VALUES (21, N'Oracio', N'Cuchillo', N'Muelas de los Caballeros', 4)
INSERT [cole].[alumnos] ([id], [nombre], [apellido], [ciudad], [idTutor]) VALUES (22, N'Nepomucena', N'Deleito', N'Consuegra', 2)
INSERT [cole].[alumnos] ([id], [nombre], [apellido], [ciudad], [idTutor]) VALUES (23, N'Petronillo', N'Conejos', N'Cachorrilla', 1)
INSERT [cole].[alumnos] ([id], [nombre], [apellido], [ciudad], [idTutor]) VALUES (24, N'Macedonio', N'Frutos', N'Recuerda', 1)
INSERT [cole].[alumnos] ([id], [nombre], [apellido], [ciudad], [idTutor]) VALUES (25, N'Crescencia', N'Caldero', N'Garganta la Olla', 4)
INSERT [cole].[alumnos] ([id], [nombre], [apellido], [ciudad], [idTutor]) VALUES (26, N'Jador', N'Maduro', N'Guarros', 4)
INSERT [cole].[alumnos] ([id], [nombre], [apellido], [ciudad], [idTutor]) VALUES (27, N'Edelmiro', N'Perfume', N'Rascafría', 4)
INSERT [cole].[alumnos] ([id], [nombre], [apellido], [ciudad], [idTutor]) VALUES (28, N'Iluminada', N'Piernavieja', N'Cebolla', 1)
INSERT [cole].[alumnos] ([id], [nombre], [apellido], [ciudad], [idTutor]) VALUES (29, N'cacerolo', N'Pancho', N'Cabezón de la sal', 5)
INSERT [cole].[alumnos] ([id], [nombre], [apellido], [ciudad], [idTutor]) VALUES (30, N'Teresa', N'Blanco', N'España', 1)
INSERT [cole].[ASIGNATURAS] ([IDESPECIALIDAD], [CODCURSO], [CODASIG], [DESCRIPCION], [NOTAMEDIA], [NUMALUMNOS], [IDPROFESOR]) VALUES (N'ASIR', N'1', N'0369 ', N'Implantación de Sistemas Operativos', CAST(8.17 AS Decimal(4, 2)), 12, 1)
INSERT [cole].[ASIGNATURAS] ([IDESPECIALIDAD], [CODCURSO], [CODASIG], [DESCRIPCION], [NOTAMEDIA], [NUMALUMNOS], [IDPROFESOR]) VALUES (N'ASIR', N'1', N'0370 ', N'Planificación y Administración de redes', CAST(4.50 AS Decimal(4, 2)), 8, 2)
INSERT [cole].[ASIGNATURAS] ([IDESPECIALIDAD], [CODCURSO], [CODASIG], [DESCRIPCION], [NOTAMEDIA], [NUMALUMNOS], [IDPROFESOR]) VALUES (N'ASIR', N'1', N'0371 ', N'Fundamentos de Hardware', CAST(5.00 AS Decimal(4, 2)), 8, 5)
INSERT [cole].[ASIGNATURAS] ([IDESPECIALIDAD], [CODCURSO], [CODASIG], [DESCRIPCION], [NOTAMEDIA], [NUMALUMNOS], [IDPROFESOR]) VALUES (N'ASIR', N'1', N'0372 ', N'Gestión de bases de datos', CAST(6.50 AS Decimal(4, 2)), 10, 4)
INSERT [cole].[ASIGNATURAS] ([IDESPECIALIDAD], [CODCURSO], [CODASIG], [DESCRIPCION], [NOTAMEDIA], [NUMALUMNOS], [IDPROFESOR]) VALUES (N'ASIR', N'1', N'0373 ', N'Lenguaje de marcas', CAST(6.18 AS Decimal(4, 2)), 11, 3)
INSERT [cole].[ASIGNATURAS] ([IDESPECIALIDAD], [CODCURSO], [CODASIG], [DESCRIPCION], [NOTAMEDIA], [NUMALUMNOS], [IDPROFESOR]) VALUES (N'ASIR', N'2', N'0374 ', N'Administración de sistemas operativos', CAST(3.53 AS Decimal(4, 2)), 15, 5)
INSERT [cole].[ASIGNATURAS] ([IDESPECIALIDAD], [CODCURSO], [CODASIG], [DESCRIPCION], [NOTAMEDIA], [NUMALUMNOS], [IDPROFESOR]) VALUES (N'ASIR', N'2', N'0375 ', N'Servicios de red e internet', CAST(5.56 AS Decimal(4, 2)), 9, 1)
INSERT [cole].[ASIGNATURAS] ([IDESPECIALIDAD], [CODCURSO], [CODASIG], [DESCRIPCION], [NOTAMEDIA], [NUMALUMNOS], [IDPROFESOR]) VALUES (N'ASIR', N'2', N'0376 ', N'Implantación de aplicaciones web', CAST(5.43 AS Decimal(4, 2)), 7, 4)
INSERT [cole].[ASIGNATURAS] ([IDESPECIALIDAD], [CODCURSO], [CODASIG], [DESCRIPCION], [NOTAMEDIA], [NUMALUMNOS], [IDPROFESOR]) VALUES (N'ASIR', N'2', N'0377 ', N'Administración de sistemas gestores de bases de datos', CAST(6.83 AS Decimal(4, 2)), 6, 2)
INSERT [cole].[ASIGNATURAS] ([IDESPECIALIDAD], [CODCURSO], [CODASIG], [DESCRIPCION], [NOTAMEDIA], [NUMALUMNOS], [IDPROFESOR]) VALUES (N'ASIR', N'2', N'0378 ', N'Seguridad y alta disponibilidad', CAST(5.17 AS Decimal(4, 2)), 6, 3)
INSERT [cole].[ASIGNATURAS] ([IDESPECIALIDAD], [CODCURSO], [CODASIG], [DESCRIPCION], [NOTAMEDIA], [NUMALUMNOS], [IDPROFESOR]) VALUES (N'ASIR', N'2', N'E-200', N'Inglés técnico', CAST(6.50 AS Decimal(4, 2)), 6, 5)
INSERT [cole].[ASIGNATURAS] ([IDESPECIALIDAD], [CODCURSO], [CODASIG], [DESCRIPCION], [NOTAMEDIA], [NUMALUMNOS], [IDPROFESOR]) VALUES (N'DAM ', N'1', N'0373 ', N'Lenguaje de marcas', CAST(5.40 AS Decimal(4, 2)), 5, 3)
INSERT [cole].[ASIGNATURAS] ([IDESPECIALIDAD], [CODCURSO], [CODASIG], [DESCRIPCION], [NOTAMEDIA], [NUMALUMNOS], [IDPROFESOR]) VALUES (N'DAM ', N'1', N'0483 ', N'Sistemas Informáticos', CAST(5.14 AS Decimal(4, 2)), 7, 1)
INSERT [cole].[ASIGNATURAS] ([IDESPECIALIDAD], [CODCURSO], [CODASIG], [DESCRIPCION], [NOTAMEDIA], [NUMALUMNOS], [IDPROFESOR]) VALUES (N'DAM ', N'1', N'0484 ', N'Bases de datos', CAST(0.25 AS Decimal(4, 2)), 4, 2)
INSERT [cole].[ASIGNATURAS] ([IDESPECIALIDAD], [CODCURSO], [CODASIG], [DESCRIPCION], [NOTAMEDIA], [NUMALUMNOS], [IDPROFESOR]) VALUES (N'DAM ', N'1', N'0485 ', N'Programación', CAST(6.57 AS Decimal(4, 2)), 7, 1)
INSERT [cole].[ASIGNATURAS] ([IDESPECIALIDAD], [CODCURSO], [CODASIG], [DESCRIPCION], [NOTAMEDIA], [NUMALUMNOS], [IDPROFESOR]) VALUES (N'DAM ', N'1', N'0487 ', N'Entornos de desarrollo', CAST(5.50 AS Decimal(4, 2)), 6, 3)
INSERT [cole].[ASIGNATURAS] ([IDESPECIALIDAD], [CODCURSO], [CODASIG], [DESCRIPCION], [NOTAMEDIA], [NUMALUMNOS], [IDPROFESOR]) VALUES (N'DAM ', N'1', N'E-200', N'Inglés Técnico', CAST(6.83 AS Decimal(4, 2)), 6, 3)
INSERT [cole].[ASIGNATURAS] ([IDESPECIALIDAD], [CODCURSO], [CODASIG], [DESCRIPCION], [NOTAMEDIA], [NUMALUMNOS], [IDPROFESOR]) VALUES (N'DAM ', N'2', N'0486 ', N'Acceso a Datos', CAST(2.20 AS Decimal(4, 2)), 5, 2)
INSERT [cole].[ASIGNATURAS] ([IDESPECIALIDAD], [CODCURSO], [CODASIG], [DESCRIPCION], [NOTAMEDIA], [NUMALUMNOS], [IDPROFESOR]) VALUES (N'DAM ', N'2', N'0489 ', N'Programación multimedia y dispositivos móviles', NULL, NULL, 1)
INSERT [cole].[ASIGNATURAS] ([IDESPECIALIDAD], [CODCURSO], [CODASIG], [DESCRIPCION], [NOTAMEDIA], [NUMALUMNOS], [IDPROFESOR]) VALUES (N'DAM ', N'2', N'0490 ', N'Programación de servicios y procesos', CAST(7.33 AS Decimal(4, 2)), 3, 5)
INSERT [cole].[ASIGNATURAS] ([IDESPECIALIDAD], [CODCURSO], [CODASIG], [DESCRIPCION], [NOTAMEDIA], [NUMALUMNOS], [IDPROFESOR]) VALUES (N'DAM ', N'2', N'0491 ', N'Sistemas de gestión empresarial', NULL, NULL, 2)
INSERT [cole].[ASIGNATURAS] ([IDESPECIALIDAD], [CODCURSO], [CODASIG], [DESCRIPCION], [NOTAMEDIA], [NUMALUMNOS], [IDPROFESOR]) VALUES (N'DAM ', N'2', N'0492 ', N'Proyecto de desarrollo de aplicaciones multiplataforma', CAST(4.00 AS Decimal(4, 2)), 4, 5)
INSERT [cole].[ASIGNATURAS] ([IDESPECIALIDAD], [CODCURSO], [CODASIG], [DESCRIPCION], [NOTAMEDIA], [NUMALUMNOS], [IDPROFESOR]) VALUES (N'DAM ', N'2', N'0494 ', N'Empresa e iniciativa emprendedora', CAST(6.80 AS Decimal(4, 2)), 5, 1)
INSERT [cole].[ASIGNATURAS] ([IDESPECIALIDAD], [CODCURSO], [CODASIG], [DESCRIPCION], [NOTAMEDIA], [NUMALUMNOS], [IDPROFESOR]) VALUES (N'DAM ', N'2', N'0495 ', N'Formación en centros de trabajo', CAST(7.60 AS Decimal(4, 2)), 5, 4)
INSERT [cole].[especialidades] ([ID], [DENOMINACION]) VALUES (N'ASIR', N'Administración de Sistemas Informáticos en Red')
INSERT [cole].[especialidades] ([ID], [DENOMINACION]) VALUES (N'DAM ', N'Desarrollo de Aplicaciones Multiplataforma')
INSERT [cole].[especialidades] ([ID], [DENOMINACION]) VALUES (N'DAW ', N'Desarrollo Web')
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (1, N'ASIR', N'1', N'0369 ', 9)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (1, N'ASIR', N'1', N'0370 ', 1)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (1, N'ASIR', N'1', N'0371 ', 7)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (1, N'ASIR', N'1', N'0372 ', 8)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (1, N'DAM ', N'1', N'0483 ', 6)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (1, N'DAM ', N'1', N'0485 ', 8)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (1, N'DAM ', N'1', N'0487 ', 9)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (1, N'DAM ', N'1', N'E-200', 6)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (1, N'DAM ', N'2', N'0486 ', 5)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (1, N'DAM ', N'2', N'0490 ', 8)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (1, N'DAM ', N'2', N'0492 ', 1)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (2, N'ASIR', N'1', N'0369 ', 9)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (2, N'ASIR', N'1', N'0370 ', 5)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (2, N'ASIR', N'1', N'0371 ', 8)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (2, N'ASIR', N'1', N'0372 ', 7)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (3, N'ASIR', N'1', N'0369 ', 9)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (3, N'ASIR', N'1', N'0370 ', 6)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (3, N'ASIR', N'1', N'0371 ', 4)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (3, N'ASIR', N'1', N'0372 ', 5)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (4, N'ASIR', N'1', N'0369 ', 9)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (4, N'ASIR', N'1', N'0370 ', 4)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (4, N'ASIR', N'1', N'0371 ', 5)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (4, N'ASIR', N'1', N'0372 ', 5)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (5, N'ASIR', N'1', N'0369 ', 7)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (5, N'ASIR', N'1', N'0370 ', 2)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (5, N'ASIR', N'1', N'0371 ', 1)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (5, N'ASIR', N'1', N'0372 ', 4)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (5, N'DAM ', N'1', N'0373 ', 8)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (5, N'DAM ', N'1', N'0483 ', 4)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (5, N'DAM ', N'1', N'0485 ', 9)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (5, N'DAM ', N'1', N'0487 ', 1)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (5, N'DAM ', N'1', N'E-200', 9)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (5, N'DAM ', N'2', N'0486 ', 4)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (5, N'DAM ', N'2', N'0490 ', 6)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (5, N'DAM ', N'2', N'0492 ', 7)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (5, N'dam ', N'2', N'0494 ', 6)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (5, N'dam ', N'2', N'0495 ', 9)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (7, N'DAM ', N'2', N'0486 ', 2)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (7, N'DAM ', N'2', N'0490 ', 8)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (7, N'DAM ', N'2', N'0492 ', 8)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (8, N'ASIR', N'2', N'0374 ', 5)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (8, N'ASIR', N'2', N'0375 ', 8)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (8, N'ASIR', N'2', N'0378 ', 6)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (8, N'DAM ', N'1', N'0484 ', 1)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (9, N'ASIR', N'2', N'0374 ', NULL)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (9, N'ASIR', N'2', N'0375 ', 7)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (9, N'ASIR', N'2', N'0378 ', 6)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (10, N'ASIR', N'2', N'0374 ', NULL)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (10, N'ASIR', N'2', N'0375 ', 9)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (10, N'ASIR', N'2', N'0378 ', 1)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (11, N'ASIR', N'2', N'0374 ', 7)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (11, N'ASIR', N'2', N'0375 ', 2)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (11, N'ASIR', N'2', N'0378 ', 4)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (11, N'DAM ', N'1', N'0373 ', 9)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (11, N'DAM ', N'1', N'0483 ', 4)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (11, N'DAM ', N'1', N'0484 ', NULL)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (11, N'DAM ', N'1', N'0485 ', 4)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (11, N'DAM ', N'1', N'0487 ', 5)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (11, N'DAM ', N'1', N'E-200', 9)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (11, N'dam ', N'2', N'0494 ', 5)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (11, N'dam ', N'2', N'0495 ', 9)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (12, N'ASIR', N'2', N'0374 ', 8)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (12, N'ASIR', N'2', N'0375 ', 4)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (12, N'ASIR', N'2', N'0378 ', NULL)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (12, N'DAM ', N'1', N'0373 ', 1)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (12, N'DAM ', N'1', N'0483 ', 7)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (12, N'DAM ', N'1', N'0484 ', NULL)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (12, N'DAM ', N'1', N'0485 ', 6)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (12, N'DAM ', N'2', N'0486 ', NULL)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (12, N'dam ', N'2', N'0494 ', 6)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (13, N'ASIR', N'2', N'0374 ', 4)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (13, N'ASIR', N'2', N'0378 ', 10)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (13, N'DAM ', N'1', N'0373 ', 6)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (13, N'DAM ', N'1', N'0483 ', 7)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (13, N'DAM ', N'1', N'0485 ', 6)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (13, N'DAM ', N'1', N'0487 ', 8)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (13, N'DAM ', N'1', N'E-200', 6)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (13, N'DAM ', N'2', N'0486 ', NULL)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (13, N'dam ', N'2', N'0494 ', 8)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (13, N'dam ', N'2', N'0495 ', 6)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (14, N'ASIR', N'1', N'0369 ', 9)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (14, N'ASIR', N'1', N'0372 ', 6)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (15, N'ASIR', N'1', N'0369 ', 6)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (15, N'ASIR', N'1', N'0372 ', 9)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (16, N'ASIR', N'1', N'0369 ', 6)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (16, N'ASIR', N'1', N'0370 ', 5)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (16, N'ASIR', N'1', N'0371 ', 8)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (16, N'ASIR', N'1', N'0372 ', 10)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (16, N'asir', N'1', N'0373 ', 4)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (17, N'asir', N'1', N'0373 ', 10)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (17, N'ASIR', N'2', N'0374 ', NULL)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (17, N'asir', N'2', N'0376 ', 2)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (18, N'ASIR', N'2', N'0374 ', NULL)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (19, N'asir', N'1', N'0373 ', 5)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (19, N'ASIR', N'2', N'0374 ', NULL)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (19, N'asir', N'2', N'E-200', 4)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (20, N'ASIR', N'2', N'0374 ', NULL)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (20, N'DAM ', N'1', N'0373 ', 3)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (20, N'DAM ', N'1', N'0483 ', 6)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (20, N'DAM ', N'1', N'0484 ', NULL)
GO
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (20, N'DAM ', N'1', N'0485 ', 10)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (20, N'DAM ', N'1', N'0487 ', 5)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (20, N'DAM ', N'1', N'E-200', 6)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (20, N'dam ', N'2', N'0494 ', 9)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (20, N'dam ', N'2', N'0495 ', 7)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (21, N'ASIR', N'1', N'0369 ', 9)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (21, N'ASIR', N'1', N'0370 ', 2)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (21, N'ASIR', N'1', N'0371 ', 3)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (21, N'ASIR', N'1', N'0372 ', 3)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (21, N'DAM ', N'1', N'0483 ', 2)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (21, N'DAM ', N'1', N'0485 ', 3)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (21, N'DAM ', N'1', N'0487 ', 5)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (21, N'DAM ', N'1', N'E-200', 5)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (21, N'DAM ', N'2', N'0492 ', NULL)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (21, N'dam ', N'2', N'0495 ', 7)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (22, N'asir', N'1', N'0373 ', 5)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (22, N'ASIR', N'2', N'0374 ', 9)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (22, N'ASIR', N'2', N'0375 ', 10)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (22, N'asir', N'2', N'0376 ', 7)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (22, N'asir', N'2', N'E-200', 8)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (23, N'ASIR', N'1', N'0369 ', 9)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (23, N'ASIR', N'1', N'0370 ', 6)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (23, N'ASIR', N'1', N'0371 ', 4)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (23, N'ASIR', N'1', N'0372 ', 8)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (23, N'asir', N'1', N'0373 ', 7)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (23, N'ASIR', N'2', N'0375 ', 3)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (23, N'asir', N'2', N'0376 ', 8)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (24, N'asir', N'1', N'0373 ', 8)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (24, N'ASIR', N'2', N'0374 ', NULL)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (24, N'ASIR', N'2', N'0375 ', 6)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (24, N'asir', N'2', N'0377 ', 7)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (24, N'asir', N'2', N'E-200', 6)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (25, N'asir', N'1', N'0373 ', 9)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (25, N'ASIR', N'2', N'0374 ', 6)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (25, N'ASIR', N'2', N'0375 ', 1)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (25, N'asir', N'2', N'0376 ', 6)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (25, N'asir', N'2', N'0377 ', 10)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (25, N'asir', N'2', N'E-200', 8)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (26, N'asir', N'1', N'0373 ', 10)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (26, N'ASIR', N'2', N'0374 ', 8)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (26, N'asir', N'2', N'0376 ', 5)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (26, N'asir', N'2', N'0377 ', 8)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (26, N'asir', N'2', N'E-200', 6)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (27, N'asir', N'1', N'0373 ', 4)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (27, N'ASIR', N'2', N'0374 ', 6)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (27, N'asir', N'2', N'0377 ', 8)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (29, N'ASIR', N'1', N'0369 ', 9)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (29, N'asir', N'1', N'0373 ', 4)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (29, N'asir', N'2', N'0376 ', 4)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (29, N'asir', N'2', N'0377 ', 9)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (30, N'ASIR', N'1', N'0369 ', 7)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (30, N'asir', N'1', N'0373 ', 2)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (30, N'asir', N'2', N'0376 ', 6)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (30, N'asir', N'2', N'0377 ', 10)
INSERT [cole].[notas] ([IDALUMNO], [IDESPECIALIDAD], [CODCURSO], [CODASIG], [NOTA]) VALUES (30, N'asir', N'2', N'E-200', 7)
INSERT [cole].[profesores] ([id], [nombre], [apellido], [ciudad]) VALUES (1, N'Hilario', N'Buenanota', N'Adios')
INSERT [cole].[profesores] ([id], [nombre], [apellido], [ciudad]) VALUES (2, N'Cirila', N'Cañas', N'Matalascañas')
INSERT [cole].[profesores] ([id], [nombre], [apellido], [ciudad]) VALUES (3, N'Fulgencio', N'Malo', N'Sordillos')
INSERT [cole].[profesores] ([id], [nombre], [apellido], [ciudad]) VALUES (4, N'Avelina', N'Seco', N'Cañada del Río Seco')
INSERT [cole].[profesores] ([id], [nombre], [apellido], [ciudad]) VALUES (5, N'Secundino', N'Salado', N'Torrelavega')
INSERT [cole].[profesores] ([id], [nombre], [apellido], [ciudad]) VALUES (6, N'Remigia', N'Impronta', N'Cilleruelo de Arriba')
INSERT [cole].[profesores] ([id], [nombre], [apellido], [ciudad]) VALUES (7, N'Ruperto', N'Hermoso', N'Guarromán')
ALTER TABLE [cole].[alumnos]  WITH CHECK ADD  CONSTRAINT [FK_alumnos_profesores] FOREIGN KEY([idTutor])
REFERENCES [cole].[profesores] ([id])
GO
ALTER TABLE [cole].[alumnos] CHECK CONSTRAINT [FK_alumnos_profesores]
GO
ALTER TABLE [cole].[ASIGNATURAS]  WITH NOCHECK ADD  CONSTRAINT [FK_ASIGNATURAS_especialidades] FOREIGN KEY([IDESPECIALIDAD])
REFERENCES [cole].[especialidades] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [cole].[ASIGNATURAS] CHECK CONSTRAINT [FK_ASIGNATURAS_especialidades]
GO
ALTER TABLE [cole].[ASIGNATURAS]  WITH CHECK ADD  CONSTRAINT [FK_ASIGNATURAS_profesores] FOREIGN KEY([IDPROFESOR])
REFERENCES [cole].[profesores] ([id])
GO
ALTER TABLE [cole].[ASIGNATURAS] CHECK CONSTRAINT [FK_ASIGNATURAS_profesores]
GO
ALTER TABLE [cole].[notas]  WITH CHECK ADD  CONSTRAINT [FK_notas_alumnos] FOREIGN KEY([IDALUMNO])
REFERENCES [cole].[alumnos] ([id])
GO
ALTER TABLE [cole].[notas] CHECK CONSTRAINT [FK_notas_alumnos]
GO
ALTER TABLE [cole].[notas]  WITH CHECK ADD  CONSTRAINT [FK_notas_notas] FOREIGN KEY([IDESPECIALIDAD], [CODCURSO], [CODASIG])
REFERENCES [cole].[ASIGNATURAS] ([IDESPECIALIDAD], [CODCURSO], [CODASIG])
GO
ALTER TABLE [cole].[notas] CHECK CONSTRAINT [FK_notas_notas]
GO
ALTER TABLE [cole].[ASIGNATURAS]  WITH CHECK ADD  CONSTRAINT [CK_Curso] CHECK  (([codcurso]='1' OR [codcurso]='2'))
GO
ALTER TABLE [cole].[ASIGNATURAS] CHECK CONSTRAINT [CK_Curso]
GO
/****** Object:  StoredProcedure [cole].[datosAsignatura]    Script Date: 08/02/2018 7:44:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [cole].[datosAsignatura]
   @espe char(4),
   @curso char(1),
   @codAsig char(5)
as
begin
    select nombre + ' ' + apellido as profesor,
	       descripcion, notaMedia, numAlumnos
	from cole.ASIGNATURAS as asig JOIN cole.profesores as profes
	on asig.IDPROFESOR=profes.id
	where IDESPECIALIDAD=@espe AND CODCURSO=@curso AND codasig=@codAsig
end
GO
