USE [db_comparape]
GO
/****** Object:  Table [persona].[persona]    Script Date: 5/01/2021 19:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [persona].[persona](
	[ID] [int] NOT NULL,
	[GUID] [uniqueidentifier] NOT NULL,
	[ID_TIPO_DOCUMENTO] [int] NOT NULL,
	[NUMERO_DOCUMENTO] [nvarchar](50) NOT NULL,
	[NOMBRE] [nvarchar](100) NOT NULL,
	[PRIMER_APELLIDO] [nvarchar](100) NOT NULL,
	[SEGUNDO_APELLIDO] [nvarchar](100) NULL,
	[APELLIDO_CASADA] [nvarchar](100) NULL,
	[CD_SEXO] [int] NOT NULL,
	[FECHA_NACIMIENTO] [datetime] NULL,
	[ID_PAIS_NACIMIENTO] [int] NULL,
	[ID_UBIGEO_NACIMIENTO] [int] NULL,
	[ESTA_ACTIVO] [bit] NOT NULL,
	[REGISTRO_ESTA_ELIMINADO] [bit] NOT NULL,
	[REGISTRO_NODO_INFORMACION] [uniqueidentifier] NOT NULL,
	[REGISTRO_USUARIO_CREACION] [uniqueidentifier] NOT NULL,
	[REGISTRO_FECHA_CREACION] [datetime2](7) NOT NULL,
	[REGISTRO_IP_CREACION] [nvarchar](50) NOT NULL,
	[REGISTRO_USUARIO_MODIFICACION] [uniqueidentifier] NULL,
	[REGISTRO_FECHA_MODIFICACION] [datetime2](7) NULL,
	[REGISTRO_IP_MODIFICACION] [nvarchar](50) NULL,
 CONSTRAINT [PK_persona] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [persona].[tipo_documento]    Script Date: 5/01/2021 19:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [persona].[tipo_documento](
	[ID] [int] NOT NULL,
	[GUID] [uniqueidentifier] NOT NULL,
	[ID_PAIS] [int] NOT NULL,
	[NOMBRE] [nvarchar](100) NOT NULL,
	[ESTA_ACTIVO] [bit] NOT NULL,
	[REGISTRO_ESTA_ELIMINADO] [bit] NOT NULL,
	[REGISTRO_NODO_INFORMACION] [uniqueidentifier] NOT NULL,
	[REGISTRO_USUARIO_CREACION] [uniqueidentifier] NOT NULL,
	[REGISTRO_FECHA_CREACION] [datetime2](7) NOT NULL,
	[REGISTRO_IP_CREACION] [nvarchar](50) NOT NULL,
	[REGISTRO_USUARIO_MODIFICACION] [uniqueidentifier] NULL,
	[REGISTRO_FECHA_MODIFICACION] [datetime2](7) NULL,
	[REGISTRO_IP_MODIFICACION] [nvarchar](50) NULL,
 CONSTRAINT [PK_tipo_documento] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [producto].[categoria]    Script Date: 5/01/2021 19:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [producto].[categoria](
	[ID] [int] NOT NULL,
	[GUID] [uniqueidentifier] NOT NULL,
	[ID_CATEGORIA_PADRE] [int] NULL,
	[NOMBRE] [varchar](150) NOT NULL,
	[DESCRIPCION] [text] NULL,
	[ESTA_ACTIVO] [bit] NOT NULL,
	[REGISTRO_ESTA_ELIMINADO] [bit] NOT NULL,
	[REGISTRO_NODO_INFORMACION] [uniqueidentifier] NOT NULL,
	[REGISTRO_USUARIO_CREACION] [uniqueidentifier] NOT NULL,
	[REGISTRO_FECHA_CREACION] [datetime2](7) NOT NULL,
	[REGISTRO_IP_CREACION] [nvarchar](50) NOT NULL,
	[REGISTRO_USUARIO_MODIFICACION] [uniqueidentifier] NULL,
	[REGISTRO_FECHA_MODIFICACION] [datetime2](7) NULL,
	[REGISTRO_IP_MODIFICACION] [nvarchar](50) NULL,
 CONSTRAINT [PK_categoria] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [producto].[mercado]    Script Date: 5/01/2021 19:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [producto].[mercado](
	[ID] [int] NOT NULL,
	[GUID] [uniqueidentifier] NOT NULL,
	[NOMBRE] [varchar](150) NOT NULL,
	[DESCRIPCION] [text] NULL,
	[SEDE] [varchar](50) NULL,
	[DIRECCION] [varchar](100) NOT NULL,
	[LATITUD] [varchar](50) NOT NULL,
	[LONGITUD] [varchar](50) NOT NULL,
	[WEB] [varchar](150) NULL,
	[ESTA_ACTIVO] [bit] NOT NULL,
	[REGISTRO_ESTA_ELIMINADO] [bit] NOT NULL,
	[REGISTRO_NODO_INFORMACION] [uniqueidentifier] NOT NULL,
	[REGISTRO_USUARIO_CREACION] [uniqueidentifier] NOT NULL,
	[REGISTRO_FECHA_CREACION] [datetime2](7) NOT NULL,
	[REGISTRO_IP_CREACION] [nvarchar](50) NOT NULL,
	[REGISTRO_USUARIO_MODIFICACION] [uniqueidentifier] NULL,
	[REGISTRO_FECHA_MODIFICACION] [datetime2](7) NULL,
	[REGISTRO_IP_MODIFICACION] [nvarchar](50) NULL,
 CONSTRAINT [PK_mercado] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [producto].[producto]    Script Date: 5/01/2021 19:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [producto].[producto](
	[ID] [int] NOT NULL,
	[GUID] [uniqueidentifier] NOT NULL,
	[NOMBRE] [varchar](150) NOT NULL,
	[DESCRIPCION] [text] NULL,
	[MARCA] [varchar](100) NOT NULL,
	[PRECIO] [decimal](18, 2) NOT NULL,
	[ESTA_ACTIVO] [bit] NOT NULL,
	[REGISTRO_ESTA_ELIMINADO] [bit] NOT NULL,
	[REGISTRO_NODO_INFORMACION] [uniqueidentifier] NOT NULL,
	[REGISTRO_USUARIO_CREACION] [uniqueidentifier] NOT NULL,
	[REGISTRO_FECHA_CREACION] [datetime2](7) NOT NULL,
	[REGISTRO_IP_CREACION] [nvarchar](50) NOT NULL,
	[REGISTRO_USUARIO_MODIFICACION] [uniqueidentifier] NULL,
	[REGISTRO_FECHA_MODIFICACION] [datetime2](7) NULL,
	[REGISTRO_IP_MODIFICACION] [nvarchar](50) NULL,
 CONSTRAINT [PK_producto] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [producto].[producto_categoria]    Script Date: 5/01/2021 19:19:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [producto].[producto_categoria](
	[ID_PRODUCTO] [int] NOT NULL,
	[ID_CATEGORIA] [int] NOT NULL,
 CONSTRAINT [PK_producto_categoria] PRIMARY KEY CLUSTERED 
(
	[ID_PRODUCTO] ASC,
	[ID_CATEGORIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [producto].[producto_mercado]    Script Date: 5/01/2021 19:19:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [producto].[producto_mercado](
	[ID_PRODUCTO] [int] NOT NULL,
	[ID_MERCADO] [int] NOT NULL,
	[PRECIO] [decimal](18, 2) NOT NULL,
	[STOCK] [int] NULL,
 CONSTRAINT [PK_producto_mercado] PRIMARY KEY CLUSTERED 
(
	[ID_PRODUCTO] ASC,
	[ID_MERCADO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [seguridad].[rol]    Script Date: 5/01/2021 19:19:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [seguridad].[rol](
	[ID] [int] NOT NULL,
	[GUID] [uniqueidentifier] NOT NULL,
	[ID_NODO_SEGURIDAD] [int] NOT NULL,
	[NOMBRE] [nvarchar](100) NOT NULL,
	[ESTA_ACTIVO] [bit] NOT NULL,
	[REGISTRO_ESTA_ELIMINADO] [bit] NOT NULL,
	[REGISTRO_NODO_INFORMACION] [uniqueidentifier] NOT NULL,
	[REGISTRO_USUARIO_CREACION] [uniqueidentifier] NOT NULL,
	[REGISTRO_FECHA_CREACION] [datetime2](7) NOT NULL,
	[REGISTRO_IP_CREACION] [nvarchar](50) NOT NULL,
	[REGISTRO_USUARIO_MODIFICACION] [uniqueidentifier] NULL,
	[REGISTRO_FECHA_MODIFICACION] [datetime2](7) NULL,
	[REGISTRO_IP_MODIFICACION] [nvarchar](50) NULL,
 CONSTRAINT [PK_rol] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [seguridad].[sesion]    Script Date: 5/01/2021 19:19:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [seguridad].[sesion](
	[GUID] [uniqueidentifier] NOT NULL,
	[GUID_USUARIO] [uniqueidentifier] NOT NULL,
	[FECHA_HORA_CREACION] [datetime2](7) NOT NULL,
	[FECHA_HORA_CADUCIDAD] [datetime2](7) NOT NULL,
	[FECHA_HORA_ULTIMO_ACCESO] [datetime2](7) NOT NULL,
	[FECHA_HORA_ULTIMO_SESION] [datetime2](7) NULL,
	[IP_ORIGEN] [varchar](50) NOT NULL,
 CONSTRAINT [PK_sesion] PRIMARY KEY CLUSTERED 
(
	[GUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [seguridad].[sesion_historico]    Script Date: 5/01/2021 19:19:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [seguridad].[sesion_historico](
	[GUID] [uniqueidentifier] NOT NULL,
	[GUID_USUARIO] [uniqueidentifier] NOT NULL,
	[FECHA_HORA_CREACION] [datetime2](7) NOT NULL,
	[FECHA_HORA_CADUCIDAD] [datetime2](7) NOT NULL,
	[FECHA_HORA_ULTIMO_ACCESO] [datetime2](7) NOT NULL,
	[FECHA_HORA_ULTIMO_SESION] [datetime2](7) NULL,
	[IP_ORIGEN] [varchar](50) NOT NULL,
 CONSTRAINT [PK_sesion_historico] PRIMARY KEY CLUSTERED 
(
	[GUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [seguridad].[usuario]    Script Date: 5/01/2021 19:19:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [seguridad].[usuario](
	[ID] [int] NOT NULL,
	[GUID] [uniqueidentifier] NOT NULL,
	[ID_NODO_SEGURIDAD] [int] NOT NULL,
	[IDENTIFICACION] [nvarchar](250) NOT NULL,
	[CONTRASENIA] [text] NULL,
	[ID_PERSONA] [int] NULL,
	[CORRREO_ELECTRONICO] [varchar](150) NULL,
	[CORREO_ELECTRONICO_ESTA_VALIDADO] [bit] NULL,
	[ESTA_ACTIVO] [bit] NOT NULL,
	[REGISTRO_ESTA_ELIMINADO] [bit] NOT NULL,
	[REGISTRO_NODO_INFORMACION] [uniqueidentifier] NOT NULL,
	[REGISTRO_USUARIO_CREACION] [uniqueidentifier] NOT NULL,
	[REGISTRO_FECHA_CREACION] [datetime2](7) NOT NULL,
	[REGISTRO_IP_CREACION] [nvarchar](50) NOT NULL,
	[REGISTRO_USUARIO_MODIFICACION] [uniqueidentifier] NULL,
	[REGISTRO_FECHA_MODIFICACION] [datetime2](7) NULL,
	[REGISTRO_IP_MODIFICACION] [nvarchar](50) NULL,
 CONSTRAINT [PK_usuario] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [seguridad].[usuario_rol]    Script Date: 5/01/2021 19:19:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [seguridad].[usuario_rol](
	[ID] [int] NOT NULL,
	[GUID] [uniqueidentifier] NOT NULL,
	[ID_USUARIO] [int] NOT NULL,
	[ID_ROL] [int] NOT NULL,
	[ES_POR_DEFECTO] [bit] NOT NULL,
	[ESTA_ACTIVO] [bit] NOT NULL,
	[REGISTRO_ESTA_ELIMINADO] [bit] NOT NULL,
	[REGISTRO_NODO_INFORMACION] [uniqueidentifier] NOT NULL,
	[REGISTRO_USUARIO_CREACION] [uniqueidentifier] NOT NULL,
	[REGISTRO_FECHA_CREACION] [datetime2](7) NOT NULL,
	[REGISTRO_IP_CREACION] [nvarchar](50) NOT NULL,
	[REGISTRO_USUARIO_MODIFICACION] [uniqueidentifier] NULL,
	[REGISTRO_FECHA_MODIFICACION] [datetime2](7) NULL,
	[REGISTRO_IP_MODIFICACION] [nvarchar](50) NULL,
 CONSTRAINT [PK_usuario_rol] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [persona].[persona] ADD  CONSTRAINT [DF_persona_GUID]  DEFAULT (newid()) FOR [GUID]
GO
ALTER TABLE [persona].[tipo_documento] ADD  CONSTRAINT [DF_tipo_documento_GUID]  DEFAULT (newid()) FOR [GUID]
GO
ALTER TABLE [seguridad].[rol] ADD  CONSTRAINT [DF_rol_GUID]  DEFAULT (newid()) FOR [GUID]
GO
ALTER TABLE [persona].[persona]  WITH CHECK ADD  CONSTRAINT [FK_persona_pais] FOREIGN KEY([ID_PAIS_NACIMIENTO])
REFERENCES [general].[pais] ([ID])
GO
ALTER TABLE [persona].[persona] CHECK CONSTRAINT [FK_persona_pais]
GO
ALTER TABLE [persona].[persona]  WITH CHECK ADD  CONSTRAINT [FK_persona_tipo_documento] FOREIGN KEY([ID_TIPO_DOCUMENTO])
REFERENCES [persona].[tipo_documento] ([ID])
GO
ALTER TABLE [persona].[persona] CHECK CONSTRAINT [FK_persona_tipo_documento]
GO
ALTER TABLE [persona].[persona]  WITH CHECK ADD  CONSTRAINT [FK_persona_ubigeo] FOREIGN KEY([ID_UBIGEO_NACIMIENTO])
REFERENCES [general].[ubigeo] ([ID])
GO
ALTER TABLE [persona].[persona] CHECK CONSTRAINT [FK_persona_ubigeo]
GO
ALTER TABLE [persona].[tipo_documento]  WITH CHECK ADD  CONSTRAINT [FK_tipo_documento_pais] FOREIGN KEY([ID_PAIS])
REFERENCES [general].[pais] ([ID])
GO
ALTER TABLE [persona].[tipo_documento] CHECK CONSTRAINT [FK_tipo_documento_pais]
GO
ALTER TABLE [producto].[producto_categoria]  WITH CHECK ADD  CONSTRAINT [FK_producto_categoria_categoria] FOREIGN KEY([ID_CATEGORIA])
REFERENCES [producto].[categoria] ([ID])
GO
ALTER TABLE [producto].[producto_categoria] CHECK CONSTRAINT [FK_producto_categoria_categoria]
GO
ALTER TABLE [producto].[producto_categoria]  WITH CHECK ADD  CONSTRAINT [FK_producto_categoria_producto] FOREIGN KEY([ID_PRODUCTO])
REFERENCES [producto].[producto] ([ID])
GO
ALTER TABLE [producto].[producto_categoria] CHECK CONSTRAINT [FK_producto_categoria_producto]
GO
ALTER TABLE [producto].[producto_mercado]  WITH CHECK ADD  CONSTRAINT [FK_producto_mercado_mercado] FOREIGN KEY([ID_MERCADO])
REFERENCES [producto].[mercado] ([ID])
GO
ALTER TABLE [producto].[producto_mercado] CHECK CONSTRAINT [FK_producto_mercado_mercado]
GO
ALTER TABLE [producto].[producto_mercado]  WITH CHECK ADD  CONSTRAINT [FK_producto_mercado_producto] FOREIGN KEY([ID_PRODUCTO])
REFERENCES [producto].[producto] ([ID])
GO
ALTER TABLE [producto].[producto_mercado] CHECK CONSTRAINT [FK_producto_mercado_producto]
GO
ALTER TABLE [seguridad].[rol]  WITH CHECK ADD  CONSTRAINT [FK_rol_nodo_seguridad] FOREIGN KEY([ID_NODO_SEGURIDAD])
REFERENCES [seguridad].[nodo_seguridad] ([ID])
GO
ALTER TABLE [seguridad].[rol] CHECK CONSTRAINT [FK_rol_nodo_seguridad]
GO
ALTER TABLE [seguridad].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_nodo] FOREIGN KEY([ID_NODO_SEGURIDAD])
REFERENCES [seguridad].[nodo_seguridad] ([ID])
GO
ALTER TABLE [seguridad].[usuario] CHECK CONSTRAINT [FK_usuario_nodo]
GO
ALTER TABLE [seguridad].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_persona] FOREIGN KEY([ID_PERSONA])
REFERENCES [persona].[persona] ([ID])
GO
ALTER TABLE [seguridad].[usuario] CHECK CONSTRAINT [FK_usuario_persona]
GO
ALTER TABLE [seguridad].[usuario_rol]  WITH CHECK ADD  CONSTRAINT [FK_rol_usuario_rol] FOREIGN KEY([ID_ROL])
REFERENCES [seguridad].[rol] ([ID])
GO
ALTER TABLE [seguridad].[usuario_rol] CHECK CONSTRAINT [FK_rol_usuario_rol]
GO
ALTER TABLE [seguridad].[usuario_rol]  WITH CHECK ADD  CONSTRAINT [FK_rol_usuario_usuario] FOREIGN KEY([ID_USUARIO])
REFERENCES [seguridad].[usuario] ([ID])
GO
ALTER TABLE [seguridad].[usuario_rol] CHECK CONSTRAINT [FK_rol_usuario_usuario]
GO
/****** Object:  StoredProcedure [dbo].[USP_PRODUCTO_SEL]    Script Date: 5/01/2021 19:19:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--============================================================================================= 
-- Propósito	: Obtención de registro de la entidad [producto].[producto]
-- Creado por	: Herón Meza
-- Fecha		: 26.07.2020
-----------------------------------------------------------------------------------------------	
-- Prueba		: EXEC [dbo].[USP_PRODUCTO_SEL]
--					@ID = 0
--=============================================================================================

CREATE PROCEDURE [dbo].[USP_PRODUCTO_SEL]
(
	@ID AS INT
)
AS
BEGIN
    SET NOCOUNT ON;

	SELECT
        [pr].[ID]
        ,[pr].[GUID]
        ,[pr].[NOMBRE]
        ,[pr].[DESCRIPCION]
        ,[pr].[MARCA]
        ,[pr].[PRECIO]
        ,[pr].[REGISTRO_NODO_INFORMACION]
	FROM [producto].[producto] AS [pr]
	WHERE
	    [pr].[ID] = @ID;

    SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_PRODUCTO_SEL_LISTAR]    Script Date: 5/01/2021 19:19:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--============================================================================================= 
-- Propósito	: Buscador de Productos
-- Creado por	: Herón Meza
-- Fecha		: 26.07.2020
-----------------------------------------------------------------------------------------------	
-- Prueba		: EXEC [dbo].[USP_PRODUCTO_SEL_LISTAR]
--					@ID = NULL
--					,@GUID = NULL
--					,@NOMBRE = NULL
--					,@DESCRIPCION = NULL
--					,@MARCA = NULL
--					,@PRECIO = NULL
--					,@REGISTRO_NODO_INFORMACION = NULL
--	                ,@ESTA_ACTIVO = NULL
--	                ,@REGISTRO_USUARIO_CREACION = NULL
--	                ,@REGISTRO_FECHA_CREACION_ENTRE_DESDE = NULL, @REGISTRO_FECHA_CREACION_ENTRE_HASTA = NULL
--	                ,@REGISTRO_IP_CREACION = NULL
--	                ,@REGISTRO_USUARIO_MODIFICACION = NULL
--	                ,@REGISTRO_FECHA_MODIFICACION_ENTRE_DESDE = NULL, @REGISTRO_FECHA_MODIFICACION_ENTRE_HASTA = NULL
--	                ,@REGISTRO_IP_MODIFICACION = NULL
--
--					,@FILAS_POR_PAGINA = 10 -- 0 = DEVUELVE TODOS LOS REGISTROS
--					,@PAGINA_ACTUAL = 1
--					,@ORDENAR_POR = 'ID'
--					,@ORDENAR_DE_FORMA = 'desc'
--=============================================================================================

CREATE PROCEDURE [dbo].[USP_PRODUCTO_SEL_LISTAR]
(
	@ID AS INT = NULL
	,@GUID AS UNIQUEIDENTIFIER = NULL
	,@NOMBRE AS VARCHAR(150) = NULL
	,@DESCRIPCION AS VARCHAR(100) = NULL
	,@MARCA AS VARCHAR(100) = NULL
	,@PRECIO AS DECIMAL(18,2) = NULL
	,@REGISTRO_NODO_INFORMACION AS UNIQUEIDENTIFIER = NULL
	,@ESTA_ACTIVO AS BIT = NULL
	,@REGISTRO_USUARIO_CREACION AS UNIQUEIDENTIFIER = NULL
	,@REGISTRO_FECHA_CREACION_ENTRE_DESDE AS DATETIME2 = NULL, @REGISTRO_FECHA_CREACION_ENTRE_HASTA AS DATETIME2 = NULL
	,@REGISTRO_IP_CREACION AS NVARCHAR(100) = NULL
	,@REGISTRO_USUARIO_MODIFICACION AS UNIQUEIDENTIFIER = NULL
	,@REGISTRO_FECHA_MODIFICACION_ENTRE_DESDE AS DATETIME2 = NULL, @REGISTRO_FECHA_MODIFICACION_ENTRE_HASTA AS DATETIME2 = NULL
	,@REGISTRO_IP_MODIFICACION AS NVARCHAR(100) = NULL
	
	,@LATITUD AS VARCHAR(50) = '-12.1800253'
	,@LONGITUD AS VARCHAR(50) = '-77.0057881'

	--
	,@FILAS_POR_PAGINA AS INT = 10 -- 0 = DEVUELVE TODOS LOS REGISTROS
	,@PAGINA_ACTUAL AS INT = 1
	,@ORDENADO_POR AS VARCHAR(50) = 'precio'
	,@ORDENADO_DE_FORMA AS VARCHAR(4) = 'asc'
)
AS
BEGIN
    SET NOCOUNT ON;

	DECLARE @gYo geography;
	SET @gYo = geography::STGeomFromText('POINT(' + @LATITUD + ' ' + @LONGITUD + ')', 4326);

	SELECT
		[tbl].[NUMERO_DE_FILA]
		,[tbl].[TOTAL_DE_FILAS]
		,[tbl].[ID]
		,[tbl].[GUID]
		,[tbl].[NOMBRE]
		,[tbl].[DESCRIPCION]
		,[tbl].[MARCA]
		,[tbl].[PRECIO]
		,[tbl].[REGISTRO_NODO_INFORMACION]
		,[tbl].[ESTA_ACTIVO]
		,[tbl].[REGISTRO_USUARIO_CREACION]
		,[tbl].[REGISTRO_FECHA_CREACION]
		,[tbl].[REGISTRO_IP_CREACION]
		,[tbl].[REGISTRO_USUARIO_MODIFICACION]
		,[tbl].[REGISTRO_FECHA_MODIFICACION]
		,[tbl].[REGISTRO_IP_MODIFICACION]
		
		,[tbl].[MERCADO_NOMBRE]
		,[tbl].[MERCADO_DIRECCION]
		,[tbl].[MERCADO_WEB]
		,[tbl].[MERCADO_DISTANCIA]
	FROM
	(
		SELECT
			ROW_NUMBER() OVER( ORDER BY
				CASE WHEN @ORDENADO_DE_FORMA = 'asc'  AND @ORDENADO_POR = 'precio' THEN [prme].[PRECIO] END ASC
                ,CASE WHEN @ORDENADO_DE_FORMA = 'desc' AND @ORDENADO_POR = 'precio' THEN [prme].[PRECIO] END DESC
				,CASE WHEN @ORDENADO_DE_FORMA = 'asc'  AND @ORDENADO_POR = 'distancia' THEN [me].[DISTANCIA] END ASC
                ,CASE WHEN @ORDENADO_DE_FORMA = 'desc' AND @ORDENADO_POR = 'distancia' THEN [me].[DISTANCIA] END DESC
			) AS [NUMERO_DE_FILA]
            ,COUNT(1) OVER () AS [TOTAL_DE_FILAS]
			--
			,[pr].[ID]
			,[pr].[GUID]
			,[pr].[NOMBRE]
			,[pr].[DESCRIPCION]
			,[pr].[MARCA]
			,[pr].[REGISTRO_NODO_INFORMACION]
			,[pr].[ESTA_ACTIVO]
			,[pr].[REGISTRO_USUARIO_CREACION]
			,[pr].[REGISTRO_FECHA_CREACION]
			,[pr].[REGISTRO_IP_CREACION]
			,[pr].[REGISTRO_USUARIO_MODIFICACION]
			,[pr].[REGISTRO_FECHA_MODIFICACION]
			,[pr].[REGISTRO_IP_MODIFICACION]

			,[prme].[PRECIO]
			,[me].[NOMBRE] AS [MERCADO_NOMBRE]
			,[me].[DIRECCION] AS [MERCADO_DIRECCION]
			,[me].[WEB] AS [MERCADO_WEB]
			,[me].[DISTANCIA] AS [MERCADO_DISTANCIA]
		FROM [producto].[producto] AS [pr]
		INNER JOIN [producto].[producto_mercado] AS [prme] ON ([pr].[ID] = [prme].[ID_PRODUCTO])
		INNER JOIN (
			SELECT [ID]
			, [NOMBRE]
			, [DIRECCION]
			, [WEB]
			, CAST(@gYo.STDistance(geography::STGeomFromText('POINT(' + [me].[LATITUD] + ' ' + [me].[LONGITUD] + ')', 4326)) AS decimal(18,2)) AS [DISTANCIA]
			FROM [producto].[mercado] AS [me]
		) AS [me] ON ([prme].[ID_MERCADO] = [me].[ID])
		WHERE
		(@ID IS NULL OR [pr].[ID] LIKE @ID)
		AND (@GUID IS NULL OR [pr].[GUID] = @GUID)
		AND (@NOMBRE IS NULL OR [pr].[NOMBRE] LIKE @NOMBRE)
		AND (@DESCRIPCION IS NULL OR CAST([pr].[DESCRIPCION] AS VARCHAR(MAX)) LIKE @DESCRIPCION)
		AND (@MARCA IS NULL OR [pr].[MARCA] LIKE @MARCA)
		AND (@PRECIO IS NULL OR [pr].[PRECIO] = @PRECIO)
		AND (@REGISTRO_NODO_INFORMACION IS NULL OR [pr].[REGISTRO_NODO_INFORMACION] = @REGISTRO_NODO_INFORMACION)
		AND (@ESTA_ACTIVO IS NULL OR [pr].[ESTA_ACTIVO] = @ESTA_ACTIVO)
		AND (@REGISTRO_USUARIO_CREACION IS NULL OR [pr].[REGISTRO_USUARIO_CREACION] = @REGISTRO_USUARIO_CREACION)
		AND (
			(
				@REGISTRO_FECHA_CREACION_ENTRE_DESDE IS NOT NULL AND @REGISTRO_FECHA_CREACION_ENTRE_HASTA IS NOT NULL
                AND [pr].[REGISTRO_FECHA_CREACION] BETWEEN @REGISTRO_FECHA_CREACION_ENTRE_DESDE AND @REGISTRO_FECHA_CREACION_ENTRE_HASTA
			) OR
			(
                @REGISTRO_FECHA_CREACION_ENTRE_DESDE IS NULL AND @REGISTRO_FECHA_CREACION_ENTRE_HASTA IS NOT NULL
				AND [pr].[REGISTRO_FECHA_CREACION] <= @REGISTRO_FECHA_CREACION_ENTRE_HASTA
			) OR
			(
                @REGISTRO_FECHA_CREACION_ENTRE_DESDE IS NOT NULL AND @REGISTRO_FECHA_CREACION_ENTRE_HASTA IS NULL
				AND @REGISTRO_FECHA_CREACION_ENTRE_DESDE <= [pr].[REGISTRO_FECHA_CREACION]
			) OR
			(
				@REGISTRO_FECHA_CREACION_ENTRE_DESDE IS NULL AND @REGISTRO_FECHA_CREACION_ENTRE_HASTA IS NULL
			)
		)
		AND (@REGISTRO_IP_CREACION IS NULL OR [pr].[REGISTRO_IP_CREACION] LIKE @REGISTRO_IP_CREACION)
		AND (@REGISTRO_USUARIO_MODIFICACION IS NULL OR [pr].[REGISTRO_USUARIO_MODIFICACION] = @REGISTRO_USUARIO_MODIFICACION)
		AND (
			(
				@REGISTRO_FECHA_MODIFICACION_ENTRE_DESDE IS NOT NULL AND @REGISTRO_FECHA_MODIFICACION_ENTRE_HASTA IS NOT NULL
                AND [pr].[REGISTRO_FECHA_MODIFICACION] BETWEEN @REGISTRO_FECHA_MODIFICACION_ENTRE_DESDE AND @REGISTRO_FECHA_MODIFICACION_ENTRE_HASTA
			) OR
			(
                @REGISTRO_FECHA_MODIFICACION_ENTRE_DESDE IS NULL AND @REGISTRO_FECHA_MODIFICACION_ENTRE_HASTA IS NOT NULL
				AND [pr].[REGISTRO_FECHA_MODIFICACION] <= @REGISTRO_FECHA_MODIFICACION_ENTRE_HASTA
			) OR
			(
                @REGISTRO_FECHA_MODIFICACION_ENTRE_DESDE IS NOT NULL AND @REGISTRO_FECHA_MODIFICACION_ENTRE_HASTA IS NULL
				AND @REGISTRO_FECHA_MODIFICACION_ENTRE_DESDE <= [pr].[REGISTRO_FECHA_MODIFICACION]
			) OR
			(
				@REGISTRO_FECHA_MODIFICACION_ENTRE_DESDE IS NULL AND @REGISTRO_FECHA_MODIFICACION_ENTRE_HASTA IS NULL
			)
		)
		AND (@REGISTRO_IP_MODIFICACION IS NULL OR [pr].[REGISTRO_IP_MODIFICACION] LIKE @REGISTRO_IP_MODIFICACION)
		AND [pr].[REGISTRO_ESTA_ELIMINADO] = 0 
	) [tbl]
	WHERE (
		@FILAS_POR_PAGINA = 0 OR
		([NUMERO_DE_FILA] BETWEEN (((@PAGINA_ACTUAL - 1) * @FILAS_POR_PAGINA) + 1) AND (@PAGINA_ACTUAL * @FILAS_POR_PAGINA))
	)
	ORDER BY [NUMERO_DE_FILA];

    SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_USUARIO_SEL_POR_INICIO_SESION]    Script Date: 5/01/2021 19:19:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--============================================================================================= 
-- Propósito	: Obtención de registro de la entidad [seguridad].[usuario] por Inicio de Sesión
-- Creado por	: Herón Meza
-- Fecha		: 10.10.2020
-----------------------------------------------------------------------------------------------	
-- Prueba		: EXEC [dbo].[USP_USUARIO_SEL]
--					@CD_PROVEEDOR = 1
--					@INICIO_SESION = 'heronmeza@gmail.com'
--=============================================================================================

CREATE PROCEDURE [dbo].[USP_USUARIO_SEL_POR_INICIO_SESION]
(
   @CD_PROVEEDOR AS INT
	, @INICIO_SESION AS VARCHAR(150)
)
AS
BEGIN
    SET NOCOUNT ON;

	SELECT
		[us].[ID]
		,[us].[GUID]
		,[us].[ID_NODO_SEGURIDAD]
		,[us].[IDENTIFICACION]
		,[us].[CONTRASENIA]
		,[us].[ID_PERSONA]
		,[us].[CORRREO_ELECTRONICO]
		,[us].[CORREO_ELECTRONICO_ESTA_VALIDADO]
		,[us].[ESTA_ACTIVO]
		,[us].[REGISTRO_NODO_INFORMACION]
		,[us].[REGISTRO_USUARIO_CREACION]
		,[us].[REGISTRO_FECHA_CREACION]
		,[us].[REGISTRO_IP_CREACION]
		,[us].[REGISTRO_USUARIO_MODIFICACION]
		,[us].[REGISTRO_FECHA_MODIFICACION]
		,[us].[REGISTRO_IP_MODIFICACION]
                --
		,[usnose].[ID] AS [USNOSE_ID]
		,[usnose].[GUID] AS [USNOSE_GUID]
		,[usnose].[CD_TIPO] AS [USNOSE_CD_TIPO]
		,[usnosecdti].[DESCRIPCION] AS [USNOSE_DSC_TIPO]
		,[usnose].[ID_REGISTRO] AS [USNOSE_ID_REGISTRO]
		,[usnose].[ID_ENTIDAD] AS [USNOSE_ID_ENTIDAD]
		,[usnose].[ID_SISTEMA_INFORMACION] AS [USNOSE_ID_SISTEMA_INFORMACION]
		,[usnose].[ES_PRIVADO] AS [USNOSE_ES_PRIVADO]
                --
		,[uspe].[ID] AS [USPE_ID]
		,[uspe].[GUID] AS [USPE_GUID]
		,[uspe].[ID_TIPO_DOCUMENTO] AS [USPE_ID_TIPO_DOCUMENTO]
		,[uspe].[NUMERO_DOCUMENTO] AS [USPE_NUMERO_DOCUMENTO]
		,[uspe].[NOMBRE] AS [USPE_NOMBRE]
		,[uspe].[PRIMER_APELLIDO] AS [USPE_PRIMER_APELLIDO]
		,[uspe].[SEGUNDO_APELLIDO] AS [USPE_SEGUNDO_APELLIDO]
		,[uspe].[APELLIDO_CASADA] AS [USPE_APELLIDO_CASADA]
		,[uspe].[CD_SEXO] AS [USPE_CD_SEXO]
		,[uspecdse].[DESCRIPCION] AS [USPE_DSC_SEXO]
		,[uspe].[FECHA_NACIMIENTO] AS [USPE_FECHA_NACIMIENTO]
		,[uspe].[ID_PAIS_NACIMIENTO] AS [USPE_ID_PAIS_NACIMIENTO]
		,[uspe].[ID_UBIGEO_NACIMIENTO] AS [USPE_ID_UBIGEO_NACIMIENTO]
		FROM [seguridad].[usuario] AS [us]
		LEFT JOIN [seguridad].[nodo_seguridad] AS [usnose] WITH (NOLOCK) ON ([us].[ID_NODO_SEGURIDAD] = [usnose].[ID] AND [usnose].[REGISTRO_ESTA_ELIMINADO] = 0) 
        LEFT JOIN (
	        SELECT [getamade].[CODIGO], [getamade].[DESCRIPCION], [getamade].[ORDEN]
	        FROM [general].[tabla_maestra] AS [getama]
	        INNER JOIN [general].[tabla_maestra_detalle] AS [getamade] ON ([getama].[ID] = [getamade].[ID_TABLA_MAESTRA])
	        WHERE [getama].[NOMBRE] = 'TM_NODO_SEGURIDAD_TIPO'
        ) AS [usnosecdti] ON ([usnose].[CD_TIPO] = [usnosecdti].[CODIGO])
        LEFT JOIN [persona].[persona] AS [uspe] WITH (NOLOCK) ON ([us].[ID_PERSONA] = [uspe].[ID] AND [uspe].[REGISTRO_ESTA_ELIMINADO] = 0) 
        LEFT JOIN (
	        SELECT [getamade].[CODIGO], [getamade].[DESCRIPCION], [getamade].[ORDEN]
	        FROM [general].[tabla_maestra] AS [getama]
	        INNER JOIN [general].[tabla_maestra_detalle] AS [getamade] ON ([getama].[ID] = [getamade].[ID_TABLA_MAESTRA])
	        WHERE [getama].[NOMBRE] = 'TM_PERSONA_SEXO'
        ) AS [uspecdse] ON ([uspe].[CD_SEXO] = [uspecdse].[CODIGO])
	WHERE [us].[REGISTRO_ESTA_ELIMINADO] = 0
    AND EXISTS (
		SELECT 1 FROM [seguridad].[usuario_inicio_sesion] AS [seusinse]
		WHERE [seusinse].[ID_USUARIO] = [us].[ID] AND [seusinse].[CD_PROVEEDOR] = @CD_PROVEEDOR AND [seusinse].[IDENTIFICACION] = @INICIO_SESION
	)


    SET NOCOUNT OFF;
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador: Contiene el Identificador de la entidad Persona.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'persona', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador único global: Contiene el Identificador único global para el registro de Personas.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'persona', @level2type=N'COLUMN',@level2name=N'GUID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del Tipo de Documento: Contiene el Identificador relacionado a la entidad Tipo de Documento.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'persona', @level2type=N'COLUMN',@level2name=N'ID_TIPO_DOCUMENTO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Número de Documento: Contiene el Número de Documento de la persona.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'persona', @level2type=N'COLUMN',@level2name=N'NUMERO_DOCUMENTO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre: Contiene el Nombre de la Persona.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'persona', @level2type=N'COLUMN',@level2name=N'NOMBRE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Primer Apellido: Contiene el Primer Apellido de la Persona.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'persona', @level2type=N'COLUMN',@level2name=N'PRIMER_APELLIDO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Segundo Apellido: Contiene el Segundo Apellido de la Persona.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'persona', @level2type=N'COLUMN',@level2name=N'SEGUNDO_APELLIDO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Apellido de Casado: Contiene el Apellido de Casado de la Persona.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'persona', @level2type=N'COLUMN',@level2name=N'APELLIDO_CASADA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Código Maestro Sexo: Contiene el Código Maestro Sexo (1 Hombre y 2 Mujer).' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'persona', @level2type=N'COLUMN',@level2name=N'CD_SEXO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de Nacimiento: Contiene la Fecha de Nacimiento de la Persona.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'persona', @level2type=N'COLUMN',@level2name=N'FECHA_NACIMIENTO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de País de Nacimiento: Contiene el Identificador relacionado a la entidad País de Nacimiento de la Persona.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'persona', @level2type=N'COLUMN',@level2name=N'ID_PAIS_NACIMIENTO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de Ubigeo de Nacimiento: Contiene el identificador relacionado al Ubigeo de Nacimiento de la Persona.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'persona', @level2type=N'COLUMN',@level2name=N'ID_UBIGEO_NACIMIENTO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Está Activo: Contiene la bandera que indica si el registro Está Activo o Inactivo.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'persona', @level2type=N'COLUMN',@level2name=N'ESTA_ACTIVO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Está Eliminado: Contiene la bandera que indica si el registro Está Eliminado.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'persona', @level2type=N'COLUMN',@level2name=N'REGISTRO_ESTA_ELIMINADO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nodo de Información: Contiene el identificador único global del Nodo de Información.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'persona', @level2type=N'COLUMN',@level2name=N'REGISTRO_NODO_INFORMACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario de Creación: Contiene el identificador único global del Usuario que ha creado el Registro.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'persona', @level2type=N'COLUMN',@level2name=N'REGISTRO_USUARIO_CREACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de Creación: Contiene la Fecha y Hora en la que el Usuario ha creado el Registro.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'persona', @level2type=N'COLUMN',@level2name=N'REGISTRO_FECHA_CREACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP de creación: Contiene el número del protocolo de internet del equipo del Usuario que ha creado el registro.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'persona', @level2type=N'COLUMN',@level2name=N'REGISTRO_IP_CREACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario de Modificación: Contiene el identificador único global del último Usuario que ha modificado el registro.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'persona', @level2type=N'COLUMN',@level2name=N'REGISTRO_USUARIO_MODIFICACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de Modificación: Contiene la Fecha y Hora en la que el último usuario ha modificado el registro.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'persona', @level2type=N'COLUMN',@level2name=N'REGISTRO_FECHA_MODIFICACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP de Modificación: Contiene el Número del Protocolo de Internet (IP) del equipo del último Usuario que ha modificado el registro.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'persona', @level2type=N'COLUMN',@level2name=N'REGISTRO_IP_MODIFICACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Persona: Contiene lista de Personas.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'persona'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador: Contiene el Identificador de la Entidad Tipo de Documento.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'tipo_documento', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador Único Global: Contiene el Identificador Único Global para el registro del Tipo de Documento.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'tipo_documento', @level2type=N'COLUMN',@level2name=N'GUID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de País: Contiene el Identificador relacionado al País del Tipo de Documento.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'tipo_documento', @level2type=N'COLUMN',@level2name=N'ID_PAIS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre: Contiene el Nombre del Tipo de Documento.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'tipo_documento', @level2type=N'COLUMN',@level2name=N'NOMBRE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Está Activo: Contiene la bandera que indica si el registro Está Activo o Inactivo.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'tipo_documento', @level2type=N'COLUMN',@level2name=N'ESTA_ACTIVO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Está Eliminado: Contiene la bandera que indica si el registro Está Eliminado.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'tipo_documento', @level2type=N'COLUMN',@level2name=N'REGISTRO_ESTA_ELIMINADO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nodo de Información: Contiene el identificador único global del Nodo de Información.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'tipo_documento', @level2type=N'COLUMN',@level2name=N'REGISTRO_NODO_INFORMACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario de Creación: Contiene el identificador único global del Usuario que ha creado el Registro.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'tipo_documento', @level2type=N'COLUMN',@level2name=N'REGISTRO_USUARIO_CREACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de Creación: Contiene la Fecha y Hora en la que el Usuario ha creado el Registro.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'tipo_documento', @level2type=N'COLUMN',@level2name=N'REGISTRO_FECHA_CREACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP de creación: Contiene el número del protocolo de internet del equipo del Usuario que ha creado el registro.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'tipo_documento', @level2type=N'COLUMN',@level2name=N'REGISTRO_IP_CREACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario de Modificación: Contiene el identificador único global del último Usuario que ha modificado el registro.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'tipo_documento', @level2type=N'COLUMN',@level2name=N'REGISTRO_USUARIO_MODIFICACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de Modificación: Contiene la Fecha y Hora en la que el último usuario ha modificado el registro.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'tipo_documento', @level2type=N'COLUMN',@level2name=N'REGISTRO_FECHA_MODIFICACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP de Modificación: Contiene el Número del Protocolo de Internet (IP) del equipo del último Usuario que ha modificado el registro.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'tipo_documento', @level2type=N'COLUMN',@level2name=N'REGISTRO_IP_MODIFICACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tipo de Documento: Contiene el tipo de documento de identidad de la persona.' , @level0type=N'SCHEMA',@level0name=N'persona', @level1type=N'TABLE',@level1name=N'tipo_documento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador: Contiene el Identificador de la Entidad Rol.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'rol', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador Único Global: Contiene el Identificador Único Global para el Registro Rol.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'rol', @level2type=N'COLUMN',@level2name=N'GUID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de Nodo de Información: Contiene el Identificador relacionado al Nodo de Información de la Entidad Rol.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'rol', @level2type=N'COLUMN',@level2name=N'ID_NODO_SEGURIDAD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre: Contiene el Nombre del Rol.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'rol', @level2type=N'COLUMN',@level2name=N'NOMBRE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Está Activo: Contiene la bandera que indica si el registro Está Activo o Inactivo.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'rol', @level2type=N'COLUMN',@level2name=N'ESTA_ACTIVO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Está Eliminado: Contiene la bandera que indica si el registro Está Eliminado.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'rol', @level2type=N'COLUMN',@level2name=N'REGISTRO_ESTA_ELIMINADO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nodo de Información: Contiene el identificador único global del Nodo de Información.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'rol', @level2type=N'COLUMN',@level2name=N'REGISTRO_NODO_INFORMACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario de Creación: Contiene el identificador único global del Usuario que ha creado el Registro.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'rol', @level2type=N'COLUMN',@level2name=N'REGISTRO_USUARIO_CREACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de Creación: Contiene la Fecha y Hora en la que el Usuario ha creado el Registro.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'rol', @level2type=N'COLUMN',@level2name=N'REGISTRO_FECHA_CREACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP de creación: Contiene el número del protocolo de internet del equipo del Usuario que ha creado el registro.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'rol', @level2type=N'COLUMN',@level2name=N'REGISTRO_IP_CREACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario de Modificación: Contiene el identificador único global del último Usuario que ha modificado el registro.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'rol', @level2type=N'COLUMN',@level2name=N'REGISTRO_USUARIO_MODIFICACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de Modificación: Contiene la Fecha y Hora en la que el último usuario ha modificado el registro.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'rol', @level2type=N'COLUMN',@level2name=N'REGISTRO_FECHA_MODIFICACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP de Modificación: Contiene el Número del Protocolo de Internet (IP) del equipo del último Usuario que ha modificado el registro.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'rol', @level2type=N'COLUMN',@level2name=N'REGISTRO_IP_MODIFICACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Rol: Contienen los perfiles de usuario.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'rol'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador Único Global: Contiene el Identificador Único Global de la Entidad Sesión.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'sesion', @level2type=N'COLUMN',@level2name=N'GUID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador Único Global de Usuario: Contiene el Identificador Único Global relacionado al Usuario de la Entidad Sesión.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'sesion', @level2type=N'COLUMN',@level2name=N'GUID_USUARIO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha y Hora de Creación: Contiene la Fecha y Hora en la que el usuario ha creado la Sesión.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'sesion', @level2type=N'COLUMN',@level2name=N'FECHA_HORA_CREACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha y Hora de Caducidad: Contiene la Fecha y Hora en la que el Usuario ha concluido su Sesión.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'sesion', @level2type=N'COLUMN',@level2name=N'FECHA_HORA_CADUCIDAD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha y Hora de Último Acceso: Contiene la Fecha y Hora del último Acceso del Usuario en la Sesión.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'sesion', @level2type=N'COLUMN',@level2name=N'FECHA_HORA_ULTIMO_ACCESO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha y Hora de última Sesión: Contiene la Fecha y Hora de la último Sesión del Usuario.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'sesion', @level2type=N'COLUMN',@level2name=N'FECHA_HORA_ULTIMO_SESION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP de Origen: Contiene el Número de Protocolo de Internet (IP) del origen del Equipo.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'sesion', @level2type=N'COLUMN',@level2name=N'IP_ORIGEN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sesión: Contiene los inicios de sesión actuales y activos de los usuarios en el sistema.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'sesion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador Único Global: Contiene el Identificador Único Global de la Entidad Sesión Histórica.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'sesion_historico', @level2type=N'COLUMN',@level2name=N'GUID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador Único Global de Usuario: Contiene el Identificador Único Global relacionado al Usuario de la Entidad Sesión Histórica.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'sesion_historico', @level2type=N'COLUMN',@level2name=N'GUID_USUARIO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha y Hora de Creación: Contiene la Fecha y Hora en la que el usuario ha creado la Sesión Histórica.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'sesion_historico', @level2type=N'COLUMN',@level2name=N'FECHA_HORA_CREACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha y Hora de Caducidad: Contiene la Fecha y Hora en la que el Usuario ha concluido su Sesión Histórica.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'sesion_historico', @level2type=N'COLUMN',@level2name=N'FECHA_HORA_CADUCIDAD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha y Hora de Último Acceso: Contiene la Fecha y Hora del último Acceso del Usuario en la Sesión Histórica.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'sesion_historico', @level2type=N'COLUMN',@level2name=N'FECHA_HORA_ULTIMO_ACCESO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha y Hora de última Sesión: Contiene la Fecha y Hora de la última Sesión Histórica del Usuario.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'sesion_historico', @level2type=N'COLUMN',@level2name=N'FECHA_HORA_ULTIMO_SESION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP de Origen: Contiene el Número de Protocolo de Internet (IP) del origen del Equipo.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'sesion_historico', @level2type=N'COLUMN',@level2name=N'IP_ORIGEN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sesión histórico: Contiene los inicios de sesión históricos (desactivados), de los ususrario en el sistema.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'sesion_historico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador: Contiene el Identificador de la Entidad Usuario.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'usuario', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador Único Global: Contiene el Identidicador Único Global de la Entidad Usuario.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'usuario', @level2type=N'COLUMN',@level2name=N'GUID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del Nodo de Información: Contiene el Identificador relacionado al Nodo de Información.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'usuario', @level2type=N'COLUMN',@level2name=N'ID_NODO_SEGURIDAD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Inicio de Sesión: Contiene el Inicio de Sesión del Usuario.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'usuario', @level2type=N'COLUMN',@level2name=N'IDENTIFICACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contraseña: Contiene la Contraseña del usuario.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'usuario', @level2type=N'COLUMN',@level2name=N'CONTRASENIA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de Persona: Contiene el Identificador relacionado a la Persona o Usuario.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'usuario', @level2type=N'COLUMN',@level2name=N'ID_PERSONA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Correo Electrónico: Contiene el Correo Electrónico del Usuario.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'usuario', @level2type=N'COLUMN',@level2name=N'CORRREO_ELECTRONICO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Correo Electrónico Está Validado: Contiene el Correo Electrónico Validado del Usuario.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'usuario', @level2type=N'COLUMN',@level2name=N'CORREO_ELECTRONICO_ESTA_VALIDADO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Está Activo: Contiene la bandera que indica si el registro Está Activo o Inactivo.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'usuario', @level2type=N'COLUMN',@level2name=N'ESTA_ACTIVO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Está Eliminado: Contiene la bandera que indica si el registro Está Eliminado.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'usuario', @level2type=N'COLUMN',@level2name=N'REGISTRO_ESTA_ELIMINADO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nodo de Información: Contiene el identificador único global del Nodo de Información.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'usuario', @level2type=N'COLUMN',@level2name=N'REGISTRO_NODO_INFORMACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario de Creación: Contiene el identificador único global del Usuario que ha creado el Registro.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'usuario', @level2type=N'COLUMN',@level2name=N'REGISTRO_USUARIO_CREACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de Creación: Contiene la Fecha y Hora en la que el Usuario ha creado el Registro.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'usuario', @level2type=N'COLUMN',@level2name=N'REGISTRO_FECHA_CREACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP de creación: Contiene el número del protocolo de internet del equipo del Usuario que ha creado el registro.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'usuario', @level2type=N'COLUMN',@level2name=N'REGISTRO_IP_CREACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario de Modificación: Contiene el identificador único global del último Usuario que ha modificado el registro.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'usuario', @level2type=N'COLUMN',@level2name=N'REGISTRO_USUARIO_MODIFICACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de Modificación: Contiene la Fecha y Hora en la que el último usuario ha modificado el registro.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'usuario', @level2type=N'COLUMN',@level2name=N'REGISTRO_FECHA_MODIFICACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP de Modificación: Contiene el Número del Protocolo de Internet (IP) del equipo del último Usuario que ha modificado el registro.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'usuario', @level2type=N'COLUMN',@level2name=N'REGISTRO_IP_MODIFICACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario: Contiene el acceso de las personas que utilizan el sistema.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'usuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador: Contiene el identificador del Rol de usuario.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'usuario_rol', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador Único Global: Contiene el Identificador Único Global de la Entidad Rol de Usuario.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'usuario_rol', @level2type=N'COLUMN',@level2name=N'GUID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de Usuario: Contiene el Identificador relacionado al Usuario.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'usuario_rol', @level2type=N'COLUMN',@level2name=N'ID_USUARIO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador Rol: Contiene el Identificador relacionado al Rol.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'usuario_rol', @level2type=N'COLUMN',@level2name=N'ID_ROL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Es por Defecto: Contiene la bandera que indica si el Registro Es por Defecto o no.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'usuario_rol', @level2type=N'COLUMN',@level2name=N'ES_POR_DEFECTO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Está Activo: Contiene la bandera que indica si el registro Está Activo o Inactivo.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'usuario_rol', @level2type=N'COLUMN',@level2name=N'ESTA_ACTIVO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Está Eliminado: Contiene la bandera que indica si el registro Está Eliminado.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'usuario_rol', @level2type=N'COLUMN',@level2name=N'REGISTRO_ESTA_ELIMINADO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nodo de Información: Contiene el identificador único global del Nodo de Información.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'usuario_rol', @level2type=N'COLUMN',@level2name=N'REGISTRO_NODO_INFORMACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario de Creación: Contiene el identificador único global del Usuario que ha creado el Registro.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'usuario_rol', @level2type=N'COLUMN',@level2name=N'REGISTRO_USUARIO_CREACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de Creación: Contiene la Fecha y Hora en la que el Usuario ha creado el Registro.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'usuario_rol', @level2type=N'COLUMN',@level2name=N'REGISTRO_FECHA_CREACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP de creación: Contiene el número del protocolo de internet del equipo del Usuario que ha creado el registro.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'usuario_rol', @level2type=N'COLUMN',@level2name=N'REGISTRO_IP_CREACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario de Modificación: Contiene el identificador único global del último Usuario que ha modificado el registro.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'usuario_rol', @level2type=N'COLUMN',@level2name=N'REGISTRO_USUARIO_MODIFICACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de Modificación: Contiene la Fecha y Hora en la que el último usuario ha modificado el registro.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'usuario_rol', @level2type=N'COLUMN',@level2name=N'REGISTRO_FECHA_MODIFICACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP de Modificación: Contiene el Número del Protocolo de Internet (IP) del equipo del último Usuario que ha modificado el registro.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'usuario_rol', @level2type=N'COLUMN',@level2name=N'REGISTRO_IP_MODIFICACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Rol de Usuario: Contiene las relaciones de los ususarios con sus roles.' , @level0type=N'SCHEMA',@level0name=N'seguridad', @level1type=N'TABLE',@level1name=N'usuario_rol'
GO
