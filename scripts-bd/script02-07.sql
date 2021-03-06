USE [nutricloud]
GO
/****** Object:  Table [dbo].[estilo_vida]    Script Date: 07/02/2016 18:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[estilo_vida](
	[id_estilo_de_vida] [int] IDENTITY(1,1) NOT NULL,
	[estilo_de_vida] [varchar](50) NOT NULL,
 CONSTRAINT [PK_usuario_estilo_vida] PRIMARY KEY CLUSTERED 
(
	[id_estilo_de_vida] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[estilo_vida] ON
INSERT [dbo].[estilo_vida] ([id_estilo_de_vida], [estilo_de_vida]) VALUES (1, N'sedentario')
INSERT [dbo].[estilo_vida] ([id_estilo_de_vida], [estilo_de_vida]) VALUES (2, N'poco activo')
INSERT [dbo].[estilo_vida] ([id_estilo_de_vida], [estilo_de_vida]) VALUES (3, N'activo')
INSERT [dbo].[estilo_vida] ([id_estilo_de_vida], [estilo_de_vida]) VALUES (4, N'deportista')
SET IDENTITY_INSERT [dbo].[estilo_vida] OFF
/****** Object:  Table [dbo].[usuario_tipo]    Script Date: 07/02/2016 18:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[usuario_tipo](
	[id_usuario_tipo] [int] IDENTITY(1,1) NOT NULL,
	[usuario_tipo1] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_usuario_tipo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[usuario_tipo] ON
INSERT [dbo].[usuario_tipo] ([id_usuario_tipo], [usuario_tipo1]) VALUES (1, N'Paciente')
INSERT [dbo].[usuario_tipo] ([id_usuario_tipo], [usuario_tipo1]) VALUES (2, N'Profesional')
SET IDENTITY_INSERT [dbo].[usuario_tipo] OFF
/****** Object:  Table [dbo].[usuario_objetivo]    Script Date: 07/02/2016 18:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[usuario_objetivo](
	[id_usuario_objetivo] [int] IDENTITY(1,1) NOT NULL,
	[usuario_objetivo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_usuario_objetivo] PRIMARY KEY CLUSTERED 
(
	[id_usuario_objetivo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[usuario_objetivo] ON
INSERT [dbo].[usuario_objetivo] ([id_usuario_objetivo], [usuario_objetivo]) VALUES (1, N'bajar')
INSERT [dbo].[usuario_objetivo] ([id_usuario_objetivo], [usuario_objetivo]) VALUES (2, N'mantener')
INSERT [dbo].[usuario_objetivo] ([id_usuario_objetivo], [usuario_objetivo]) VALUES (3, N'subir')
INSERT [dbo].[usuario_objetivo] ([id_usuario_objetivo], [usuario_objetivo]) VALUES (4, N'aumentar rendimiento')
SET IDENTITY_INSERT [dbo].[usuario_objetivo] OFF
/****** Object:  Table [dbo].[comida_tipo]    Script Date: 07/02/2016 18:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comida_tipo](
	[id_comida_tipo] [int] IDENTITY(1,1) NOT NULL,
	[comida_tipo] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_comida_tipo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[comida_tipo] ON
INSERT [dbo].[comida_tipo] ([id_comida_tipo], [comida_tipo]) VALUES (1, N'Desayuno')
INSERT [dbo].[comida_tipo] ([id_comida_tipo], [comida_tipo]) VALUES (2, N'Almuerzo')
INSERT [dbo].[comida_tipo] ([id_comida_tipo], [comida_tipo]) VALUES (3, N'Merienda')
INSERT [dbo].[comida_tipo] ([id_comida_tipo], [comida_tipo]) VALUES (4, N'Cena')
INSERT [dbo].[comida_tipo] ([id_comida_tipo], [comida_tipo]) VALUES (5, N'Aperitivo')
SET IDENTITY_INSERT [dbo].[comida_tipo] OFF
/****** Object:  Table [dbo].[alimento_tipo]    Script Date: 07/02/2016 18:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[alimento_tipo](
	[id_alimento_tipo] [int] IDENTITY(1,1) NOT NULL,
	[alimento_tipo] [varchar](30) NOT NULL,
	[unidad_medida] [varchar](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_alimento_tipo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[alimento_genero]    Script Date: 07/02/2016 18:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[alimento_genero](
	[id_alimento_genero] [int] IDENTITY(1,1) NOT NULL,
	[alimento_genero] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_alimento_genero] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[alimento_genero] ON
INSERT [dbo].[alimento_genero] ([id_alimento_genero], [alimento_genero]) VALUES (1, N'Carne vacuna')
INSERT [dbo].[alimento_genero] ([id_alimento_genero], [alimento_genero]) VALUES (2, N'Cereales')
INSERT [dbo].[alimento_genero] ([id_alimento_genero], [alimento_genero]) VALUES (3, N'Frutas')
INSERT [dbo].[alimento_genero] ([id_alimento_genero], [alimento_genero]) VALUES (4, N'Grasas y aceites')
INSERT [dbo].[alimento_genero] ([id_alimento_genero], [alimento_genero]) VALUES (5, N'Huevos')
INSERT [dbo].[alimento_genero] ([id_alimento_genero], [alimento_genero]) VALUES (6, N'Lacteos')
INSERT [dbo].[alimento_genero] ([id_alimento_genero], [alimento_genero]) VALUES (7, N'pescados y mariscos')
INSERT [dbo].[alimento_genero] ([id_alimento_genero], [alimento_genero]) VALUES (8, N'vegetales')
INSERT [dbo].[alimento_genero] ([id_alimento_genero], [alimento_genero]) VALUES (9, N'dulces')
SET IDENTITY_INSERT [dbo].[alimento_genero] OFF
/****** Object:  Table [dbo].[usuario]    Script Date: 07/02/2016 18:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[usuario](
	[id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[clave] [varchar](100) NOT NULL,
	[nombre] [varchar](100) NULL,
	[sexo] [char](1) NOT NULL,
	[f_nacimiento] [date] NULL,
	[f_registro] [datetime] NOT NULL,
	[f_ultimo_ingreso] [datetime] NULL,
	[id_usuario_tipo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[usuario] ON
INSERT [dbo].[usuario] ([id_usuario], [email], [clave], [nombre], [sexo], [f_nacimiento], [f_registro], [f_ultimo_ingreso], [id_usuario_tipo]) VALUES (5, N'joserodriguez@gmail.com', N'Pa$$w0rd', N'Jose Rodriguez', N'M', CAST(0xD2140B00 AS Date), CAST(0x0000A63700000000 AS DateTime), CAST(0x0000A63700000000 AS DateTime), 1)
INSERT [dbo].[usuario] ([id_usuario], [email], [clave], [nombre], [sexo], [f_nacimiento], [f_registro], [f_ultimo_ingreso], [id_usuario_tipo]) VALUES (7, N'juan.sanchez@outlook.com', N'Pa$$w0rd', N'Juan Sanchez', N'M', CAST(0x4A060B00 AS Date), CAST(0x0000A63700000000 AS DateTime), CAST(0x0000A63700000000 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[usuario] OFF
/****** Object:  Table [dbo].[alimento]    Script Date: 07/02/2016 18:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[alimento](
	[id_alimento] [int] IDENTITY(1,1) NOT NULL,
	[nro] [int] NULL,
	[alimento] [varchar](100) NOT NULL,
	[energia_kj] [decimal](10, 3) NULL,
	[energia_kcal] [decimal](10, 3) NULL,
	[sodio_mg] [decimal](10, 3) NULL,
	[potasio_mg] [decimal](10, 3) NULL,
	[calcio_mg] [decimal](10, 3) NULL,
	[fosforo_mg] [decimal](10, 3) NULL,
	[hierro_mg] [decimal](10, 3) NULL,
	[zinc_mg] [decimal](10, 3) NULL,
	[tiamina_mg] [decimal](10, 3) NULL,
	[rivoflavina_mg] [decimal](10, 3) NULL,
	[niacina_mg] [decimal](10, 3) NULL,
	[vitamina_c_mg] [decimal](10, 3) NULL,
	[colesterol_mg] [decimal](10, 3) NULL,
	[agua_g] [decimal](10, 3) NULL,
	[grasa_total_g] [decimal](10, 3) NULL,
	[carbohidratos_totales_g] [decimal](10, 3) NULL,
	[carbohidratos_disponibles_g] [decimal](10, 3) NULL,
	[ac_grasos_saturados_g] [decimal](10, 3) NULL,
	[ac_grasos_monoinsaturados_g] [decimal](10, 3) NULL,
	[ac_grasos_poliinsaturados_g] [decimal](10, 3) NULL,
	[fibra_dietetica_g] [decimal](10, 3) NULL,
	[proteinas_g] [decimal](10, 3) NULL,
	[agp_w6_g] [decimal](10, 3) NULL,
	[agp_w3_g] [decimal](10, 3) NULL,
	[porcion] [decimal](10, 3) NOT NULL,
	[id_alimento_tipo] [int] NOT NULL,
	[id_alimento_genero] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_alimento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[consulta_conversacion]    Script Date: 07/02/2016 18:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consulta_conversacion](
	[id_consulta_conversacion] [int] IDENTITY(1,1) NOT NULL,
	[id_usuario_remitente] [int] NOT NULL,
	[id_usuario_destinatario] [int] NOT NULL,
	[cerrada] [bit] NOT NULL,
 CONSTRAINT [PK_consulta_conversacion] PRIMARY KEY CLUSTERED 
(
	[id_consulta_conversacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[blog_nota]    Script Date: 07/02/2016 18:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[blog_nota](
	[id_blog_nota] [int] IDENTITY(1,1) NOT NULL,
	[nota] [text] NOT NULL,
	[titulo_nota] [varchar](50) NOT NULL,
	[f_publicacion] [datetime] NOT NULL,
	[id_usuario] [int] NOT NULL,
 CONSTRAINT [PK_blog_nota] PRIMARY KEY CLUSTERED 
(
	[id_blog_nota] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[usuario_usuario]    Script Date: 07/02/2016 18:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario_usuario](
	[id_usuario_usuario] [int] IDENTITY(1,1) NOT NULL,
	[id_usuario_seguidor] [int] NOT NULL,
	[id_usuario_seguido] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_usuario_usuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[usuario_usuario] ON
INSERT [dbo].[usuario_usuario] ([id_usuario_usuario], [id_usuario_seguidor], [id_usuario_seguido]) VALUES (1, 7, 5)
INSERT [dbo].[usuario_usuario] ([id_usuario_usuario], [id_usuario_seguidor], [id_usuario_seguido]) VALUES (2, 5, 7)
SET IDENTITY_INSERT [dbo].[usuario_usuario] OFF
/****** Object:  Table [dbo].[usuario_muro]    Script Date: 07/02/2016 18:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario_muro](
	[id_usuario_muro] [int] IDENTITY(1,1) NOT NULL,
	[id_usuario] [int] NOT NULL,
	[estado] [text] NOT NULL,
	[f_publicacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_usuario_muro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario_idr]    Script Date: 07/02/2016 18:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario_idr](
	[id_valores] [int] IDENTITY(1,1) NOT NULL,
	[id_usuario] [int] NOT NULL,
	[energia_kj] [decimal](10, 3) NOT NULL,
	[energia_kcal] [decimal](10, 3) NOT NULL,
	[sodio_mg] [decimal](10, 3) NOT NULL,
	[potasio_mg] [decimal](10, 3) NOT NULL,
	[calcio_mg] [decimal](10, 3) NOT NULL,
	[fosforo_mg] [decimal](10, 3) NOT NULL,
	[hierro_mg] [decimal](10, 3) NOT NULL,
	[zinc_mg] [decimal](10, 3) NOT NULL,
	[vitamina_c_mg] [decimal](10, 3) NOT NULL,
	[colesterol_mg] [decimal](10, 3) NOT NULL,
	[agua_g] [decimal](10, 3) NOT NULL,
	[grasa_total_g] [decimal](10, 3) NOT NULL,
	[carbohidratos_totales_g] [decimal](10, 3) NOT NULL,
	[carbohidratos_disponibles_g] [decimal](10, 3) NOT NULL,
	[proteinas_g] [decimal](10, 3) NOT NULL,
 CONSTRAINT [PK_usuario_idr] PRIMARY KEY CLUSTERED 
(
	[id_valores] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario_estilo_vida]    Script Date: 07/02/2016 18:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario_estilo_vida](
	[id_usuario_estilo_vida] [int] IDENTITY(1,1) NOT NULL,
	[id_usuario] [int] NOT NULL,
	[id_estilo_de_vida] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario_datos]    Script Date: 07/02/2016 18:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario_datos](
	[id_usuario_datos] [int] IDENTITY(1,1) NOT NULL,
	[id_usuario] [int] NOT NULL,
	[altura_cm] [int] NOT NULL,
	[peso_kg] [decimal](5, 2) NOT NULL,
	[f_ingreso] [datetime] NOT NULL,
	[id_usuario_objetivo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_usuario_datos] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[usuario_datos] ON
INSERT [dbo].[usuario_datos] ([id_usuario_datos], [id_usuario], [altura_cm], [peso_kg], [f_ingreso], [id_usuario_objetivo]) VALUES (1, 5, 176, CAST(82.00 AS Decimal(5, 2)), CAST(0x0000A63700000000 AS DateTime), 2)
INSERT [dbo].[usuario_datos] ([id_usuario_datos], [id_usuario], [altura_cm], [peso_kg], [f_ingreso], [id_usuario_objetivo]) VALUES (5, 7, 180, CAST(83.00 AS Decimal(5, 2)), CAST(0x0000A63700000000 AS DateTime), 3)
SET IDENTITY_INSERT [dbo].[usuario_datos] OFF
/****** Object:  Table [dbo].[usuario_alimento]    Script Date: 07/02/2016 18:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario_alimento](
	[id_usuario_alimento] [int] IDENTITY(1,1) NOT NULL,
	[id_usuario] [int] NOT NULL,
	[id_alimento] [int] NOT NULL,
	[id_comida_tipo] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[id_unidad_medida] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_usuario_alimento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario_receta]    Script Date: 07/02/2016 18:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[usuario_receta](
	[id_usuario_receta] [int] IDENTITY(1,1) NOT NULL,
	[receta] [text] NOT NULL,
	[titulo_receta] [varchar](50) NOT NULL,
	[f_publicacion] [datetime] NOT NULL,
	[id_usuario] [int] NOT NULL,
 CONSTRAINT [PK_usuario_receta] PRIMARY KEY CLUSTERED 
(
	[id_usuario_receta] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[consulta_mensaje]    Script Date: 07/02/2016 18:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consulta_mensaje](
	[id_mensaje] [int] IDENTITY(1,1) NOT NULL,
	[mensaje] [text] NOT NULL,
	[f_mensaje] [datetime] NOT NULL,
	[id_consulta_conversacion] [int] NOT NULL,
 CONSTRAINT [PK_consulta_mensaje] PRIMARY KEY CLUSTERED 
(
	[id_mensaje] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Default [DF__alimento__energi__1EA48E88]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[alimento] ADD  DEFAULT ((0)) FOR [energia_kj]
GO
/****** Object:  Default [DF__alimento__energi__1F98B2C1]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[alimento] ADD  DEFAULT ((0)) FOR [energia_kcal]
GO
/****** Object:  Default [DF__alimento__sodio___208CD6FA]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[alimento] ADD  DEFAULT ((0)) FOR [sodio_mg]
GO
/****** Object:  Default [DF__alimento__potasi__2180FB33]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[alimento] ADD  DEFAULT ((0)) FOR [potasio_mg]
GO
/****** Object:  Default [DF__alimento__calcio__22751F6C]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[alimento] ADD  DEFAULT ((0)) FOR [calcio_mg]
GO
/****** Object:  Default [DF__alimento__fosfor__236943A5]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[alimento] ADD  DEFAULT ((0)) FOR [fosforo_mg]
GO
/****** Object:  Default [DF__alimento__hierro__245D67DE]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[alimento] ADD  DEFAULT ((0)) FOR [hierro_mg]
GO
/****** Object:  Default [DF__alimento__zinc_m__25518C17]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[alimento] ADD  DEFAULT ((0)) FOR [zinc_mg]
GO
/****** Object:  Default [DF__alimento__tiamin__2645B050]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[alimento] ADD  DEFAULT ((0)) FOR [tiamina_mg]
GO
/****** Object:  Default [DF__alimento__rivofl__2739D489]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[alimento] ADD  DEFAULT ((0)) FOR [rivoflavina_mg]
GO
/****** Object:  Default [DF__alimento__niacin__282DF8C2]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[alimento] ADD  DEFAULT ((0)) FOR [niacina_mg]
GO
/****** Object:  Default [DF__alimento__vitami__29221CFB]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[alimento] ADD  DEFAULT ((0)) FOR [vitamina_c_mg]
GO
/****** Object:  Default [DF__alimento__colest__2A164134]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[alimento] ADD  DEFAULT ((0)) FOR [colesterol_mg]
GO
/****** Object:  Default [DF__alimento__agua_g__2BFE89A6]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[alimento] ADD  DEFAULT ((0)) FOR [agua_g]
GO
/****** Object:  Default [DF__alimento__grasa___2CF2ADDF]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[alimento] ADD  DEFAULT ((0)) FOR [grasa_total_g]
GO
/****** Object:  Default [DF__alimento__carboh__2DE6D218]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[alimento] ADD  DEFAULT ((0)) FOR [carbohidratos_totales_g]
GO
/****** Object:  Default [DF__alimento__carboh__2EDAF651]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[alimento] ADD  DEFAULT ((0)) FOR [carbohidratos_disponibles_g]
GO
/****** Object:  Default [DF__alimento__ac_gra__2FCF1A8A]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[alimento] ADD  DEFAULT ((0)) FOR [ac_grasos_saturados_g]
GO
/****** Object:  Default [DF__alimento__ac_gra__30C33EC3]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[alimento] ADD  DEFAULT ((0)) FOR [ac_grasos_monoinsaturados_g]
GO
/****** Object:  Default [DF__alimento__ac_gra__31B762FC]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[alimento] ADD  DEFAULT ((0)) FOR [ac_grasos_poliinsaturados_g]
GO
/****** Object:  Default [DF__alimento__fibra___32AB8735]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[alimento] ADD  DEFAULT ((0)) FOR [fibra_dietetica_g]
GO
/****** Object:  Default [DF__alimento__protei__339FAB6E]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[alimento] ADD  DEFAULT ((0)) FOR [proteinas_g]
GO
/****** Object:  Default [DF__alimento__agp_w6__3493CFA7]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[alimento] ADD  DEFAULT ((0)) FOR [agp_w6_g]
GO
/****** Object:  Default [DF__alimento__agp_w3__3587F3E0]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[alimento] ADD  DEFAULT ((0)) FOR [agp_w3_g]
GO
/****** Object:  Default [DF__blog_nota__f_pub__625A9A57]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[blog_nota] ADD  DEFAULT (getdate()) FOR [f_publicacion]
GO
/****** Object:  Default [DF__consulta___cerra__69FBBC1F]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[consulta_conversacion] ADD  DEFAULT ((0)) FOR [cerrada]
GO
/****** Object:  Default [DF__consulta___f_men__6EC0713C]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[consulta_mensaje] ADD  DEFAULT (getdate()) FOR [f_mensaje]
GO
/****** Object:  Default [DF__usuario__f_regis__40058253]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[usuario] ADD  DEFAULT (getdate()) FOR [f_registro]
GO
/****** Object:  Default [DF__usuario_d__f_ing__47A6A41B]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[usuario_datos] ADD  DEFAULT (getdate()) FOR [f_ingreso]
GO
/****** Object:  Default [DF__usuario_m__f_pub__540C7B00]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[usuario_muro] ADD  DEFAULT (getdate()) FOR [f_publicacion]
GO
/****** Object:  Default [DF__usuario_r__f_pub__662B2B3B]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[usuario_receta] ADD  DEFAULT (getdate()) FOR [f_publicacion]
GO
/****** Object:  ForeignKey [FK_alimento_alimento_genero]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[alimento]  WITH CHECK ADD  CONSTRAINT [FK_alimento_alimento_genero] FOREIGN KEY([id_alimento_genero])
REFERENCES [dbo].[alimento_genero] ([id_alimento_genero])
GO
ALTER TABLE [dbo].[alimento] CHECK CONSTRAINT [FK_alimento_alimento_genero]
GO
/****** Object:  ForeignKey [FK_alimento_alimento_tipo]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[alimento]  WITH CHECK ADD  CONSTRAINT [FK_alimento_alimento_tipo] FOREIGN KEY([id_alimento_tipo])
REFERENCES [dbo].[alimento_tipo] ([id_alimento_tipo])
GO
ALTER TABLE [dbo].[alimento] CHECK CONSTRAINT [FK_alimento_alimento_tipo]
GO
/****** Object:  ForeignKey [FK_blog_nota_usuario]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[blog_nota]  WITH CHECK ADD  CONSTRAINT [FK_blog_nota_usuario] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuario] ([id_usuario])
GO
ALTER TABLE [dbo].[blog_nota] CHECK CONSTRAINT [FK_blog_nota_usuario]
GO
/****** Object:  ForeignKey [FK_consulta_conversacion_usuario]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[consulta_conversacion]  WITH CHECK ADD  CONSTRAINT [FK_consulta_conversacion_usuario] FOREIGN KEY([id_usuario_remitente])
REFERENCES [dbo].[usuario] ([id_usuario])
GO
ALTER TABLE [dbo].[consulta_conversacion] CHECK CONSTRAINT [FK_consulta_conversacion_usuario]
GO
/****** Object:  ForeignKey [FK_consulta_conversacion_usuario1]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[consulta_conversacion]  WITH CHECK ADD  CONSTRAINT [FK_consulta_conversacion_usuario1] FOREIGN KEY([id_usuario_destinatario])
REFERENCES [dbo].[usuario] ([id_usuario])
GO
ALTER TABLE [dbo].[consulta_conversacion] CHECK CONSTRAINT [FK_consulta_conversacion_usuario1]
GO
/****** Object:  ForeignKey [FK_consulta_mensaje_consulta_conversacion]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[consulta_mensaje]  WITH CHECK ADD  CONSTRAINT [FK_consulta_mensaje_consulta_conversacion] FOREIGN KEY([id_consulta_conversacion])
REFERENCES [dbo].[consulta_conversacion] ([id_consulta_conversacion])
GO
ALTER TABLE [dbo].[consulta_mensaje] CHECK CONSTRAINT [FK_consulta_mensaje_consulta_conversacion]
GO
/****** Object:  ForeignKey [FK_usuario_usuario_tipo]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_usuario_tipo] FOREIGN KEY([id_usuario_tipo])
REFERENCES [dbo].[usuario_tipo] ([id_usuario_tipo])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK_usuario_usuario_tipo]
GO
/****** Object:  ForeignKey [FK_usuario_alimento_alimento]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[usuario_alimento]  WITH CHECK ADD  CONSTRAINT [FK_usuario_alimento_alimento] FOREIGN KEY([id_alimento])
REFERENCES [dbo].[alimento] ([id_alimento])
GO
ALTER TABLE [dbo].[usuario_alimento] CHECK CONSTRAINT [FK_usuario_alimento_alimento]
GO
/****** Object:  ForeignKey [FK_usuario_alimento_comida_tipo]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[usuario_alimento]  WITH CHECK ADD  CONSTRAINT [FK_usuario_alimento_comida_tipo] FOREIGN KEY([id_comida_tipo])
REFERENCES [dbo].[comida_tipo] ([id_comida_tipo])
GO
ALTER TABLE [dbo].[usuario_alimento] CHECK CONSTRAINT [FK_usuario_alimento_comida_tipo]
GO
/****** Object:  ForeignKey [FK_usuario_alimento_usuario]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[usuario_alimento]  WITH CHECK ADD  CONSTRAINT [FK_usuario_alimento_usuario] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuario] ([id_usuario])
GO
ALTER TABLE [dbo].[usuario_alimento] CHECK CONSTRAINT [FK_usuario_alimento_usuario]
GO
/****** Object:  ForeignKey [FK_usuario_datos_usuario]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[usuario_datos]  WITH CHECK ADD  CONSTRAINT [FK_usuario_datos_usuario] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuario] ([id_usuario])
GO
ALTER TABLE [dbo].[usuario_datos] CHECK CONSTRAINT [FK_usuario_datos_usuario]
GO
/****** Object:  ForeignKey [FK_usuario_datos_usuario_objetivo]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[usuario_datos]  WITH CHECK ADD  CONSTRAINT [FK_usuario_datos_usuario_objetivo] FOREIGN KEY([id_usuario_objetivo])
REFERENCES [dbo].[usuario_objetivo] ([id_usuario_objetivo])
GO
ALTER TABLE [dbo].[usuario_datos] CHECK CONSTRAINT [FK_usuario_datos_usuario_objetivo]
GO
/****** Object:  ForeignKey [FK_usuario_estilo_vida_estilo_vida]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[usuario_estilo_vida]  WITH CHECK ADD  CONSTRAINT [FK_usuario_estilo_vida_estilo_vida] FOREIGN KEY([id_usuario_estilo_vida])
REFERENCES [dbo].[estilo_vida] ([id_estilo_de_vida])
GO
ALTER TABLE [dbo].[usuario_estilo_vida] CHECK CONSTRAINT [FK_usuario_estilo_vida_estilo_vida]
GO
/****** Object:  ForeignKey [FK_usuario_estilo_vida_usuario]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[usuario_estilo_vida]  WITH CHECK ADD  CONSTRAINT [FK_usuario_estilo_vida_usuario] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuario] ([id_usuario])
GO
ALTER TABLE [dbo].[usuario_estilo_vida] CHECK CONSTRAINT [FK_usuario_estilo_vida_usuario]
GO
/****** Object:  ForeignKey [FK_usuario_idr_usuario]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[usuario_idr]  WITH CHECK ADD  CONSTRAINT [FK_usuario_idr_usuario] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuario] ([id_usuario])
GO
ALTER TABLE [dbo].[usuario_idr] CHECK CONSTRAINT [FK_usuario_idr_usuario]
GO
/****** Object:  ForeignKey [FK_usuario_muro_usuario]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[usuario_muro]  WITH CHECK ADD  CONSTRAINT [FK_usuario_muro_usuario] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuario] ([id_usuario])
GO
ALTER TABLE [dbo].[usuario_muro] CHECK CONSTRAINT [FK_usuario_muro_usuario]
GO
/****** Object:  ForeignKey [FK_usuario_receta_usuario]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[usuario_receta]  WITH CHECK ADD  CONSTRAINT [FK_usuario_receta_usuario] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuario] ([id_usuario])
GO
ALTER TABLE [dbo].[usuario_receta] CHECK CONSTRAINT [FK_usuario_receta_usuario]
GO
/****** Object:  ForeignKey [FK_usuario_usuario_usuario]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[usuario_usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_usuario_usuario] FOREIGN KEY([id_usuario_seguido])
REFERENCES [dbo].[usuario] ([id_usuario])
GO
ALTER TABLE [dbo].[usuario_usuario] CHECK CONSTRAINT [FK_usuario_usuario_usuario]
GO
/****** Object:  ForeignKey [FK_usuario_usuario_usuario1]    Script Date: 07/02/2016 18:09:44 ******/
ALTER TABLE [dbo].[usuario_usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_usuario_usuario1] FOREIGN KEY([id_usuario_seguidor])
REFERENCES [dbo].[usuario] ([id_usuario])
GO
ALTER TABLE [dbo].[usuario_usuario] CHECK CONSTRAINT [FK_usuario_usuario_usuario1]
GO
