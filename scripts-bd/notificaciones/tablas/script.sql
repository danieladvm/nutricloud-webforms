USE [nutricloud]
GO
/****** Object:  Table [dbo].[notificacion_blog_nota]    Script Date: 01/10/2016 03:21:19 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[notificacion_blog_nota](
	[id_notificacion_blog_nota] [int] IDENTITY(1,1) NOT NULL,
	[leido] [bit] NOT NULL CONSTRAINT [DF_notificacion_blog_nota_leido]  DEFAULT ((0)),
	[descripcion] [varchar](100) NULL CONSTRAINT [DF_notificacion_blog_nota_descripcion]  DEFAULT (NULL),
	[id_blog_nota] [int] NOT NULL,
	[id_usuario] [int] NOT NULL,
	[notificacion_fecha] [datetime] NOT NULL CONSTRAINT [DF_notificacion_blog_nota_notificacion_fecha]  DEFAULT (getdate()),
 CONSTRAINT [PK_notificacion_blog_nota] PRIMARY KEY CLUSTERED 
(
	[id_notificacion_blog_nota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[notificacion_blog_nota]  WITH CHECK ADD  CONSTRAINT [FK_notificacion_blog_nota_blog_nota] FOREIGN KEY([id_blog_nota])
REFERENCES [dbo].[blog_nota] ([id_blog_nota])
GO
ALTER TABLE [dbo].[notificacion_blog_nota] CHECK CONSTRAINT [FK_notificacion_blog_nota_blog_nota]
GO
ALTER TABLE [dbo].[notificacion_blog_nota]  WITH CHECK ADD  CONSTRAINT [FK_notificacion_blog_nota_usuario] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuario] ([id_usuario])
GO
ALTER TABLE [dbo].[notificacion_blog_nota] CHECK CONSTRAINT [FK_notificacion_blog_nota_usuario]
GO
