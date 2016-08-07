use nutricloud
go
drop table usuario_receta
CREATE TABLE [dbo].[usuario_receta](
	[id_usuario_receta] [int] IDENTITY(1,1) NOT NULL,
	[receta] [text] NOT NULL,
	[titulo_receta] [varchar](50) NOT NULL,
	[descripcion_receta] [varchar](100) NOT NULL,
	[imagen_receta] [varchar](100),
	[f_publicacion] [datetime] NOT NULL DEFAULT (getdate()),
	[id_usuario] [int] NOT NULL,
 CONSTRAINT [PK_usuario_receta] PRIMARY KEY CLUSTERED 
(
	[id_usuario_receta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO