
SET IDENTITY_INSERT [dbo].[alimento_tipo] ON 
GO
INSERT [dbo].[alimento_tipo] ([id_alimento_tipo], [alimento_tipo], [unidad_medida]) VALUES (1, N'Sólidos', N'gr')
GO
INSERT [dbo].[alimento_tipo] ([id_alimento_tipo], [alimento_tipo], [unidad_medida]) VALUES (2, N'Líquidos', N'l')
GO
SET IDENTITY_INSERT [dbo].[alimento_tipo] OFF
GO
SET IDENTITY_INSERT [dbo].[estilo_vida] ON
INSERT [dbo].[estilo_vida] ([id_estilo_vida], [estilo_vida]) VALUES (1, N'Sedentario')
INSERT [dbo].[estilo_vida] ([id_estilo_vida], [estilo_vida]) VALUES (2, N'Poco activo')
INSERT [dbo].[estilo_vida] ([id_estilo_vida], [estilo_vida]) VALUES (3, N'Activo')
INSERT [dbo].[estilo_vida] ([id_estilo_vida], [estilo_vida]) VALUES (4, N'Deportista')
SET IDENTITY_INSERT [dbo].[estilo_vida] OFF
GO
SET IDENTITY_INSERT [dbo].[usuario_tipo] ON
INSERT [dbo].[usuario_tipo] ([id_usuario_tipo], [usuario_tipo]) VALUES (1, N'Paciente')
INSERT [dbo].[usuario_tipo] ([id_usuario_tipo], [usuario_tipo]) VALUES (2, N'Profesional')
SET IDENTITY_INSERT [dbo].[usuario_tipo] OFF
GO
SET IDENTITY_INSERT [dbo].[usuario_objetivo] ON
INSERT [dbo].[usuario_objetivo] ([id_usuario_objetivo], [usuario_objetivo]) VALUES (1, N'Bajar')
INSERT [dbo].[usuario_objetivo] ([id_usuario_objetivo], [usuario_objetivo]) VALUES (2, N'Mantener')
INSERT [dbo].[usuario_objetivo] ([id_usuario_objetivo], [usuario_objetivo]) VALUES (3, N'Subir')
INSERT [dbo].[usuario_objetivo] ([id_usuario_objetivo], [usuario_objetivo]) VALUES (4, N'Aumentar rendimiento')
SET IDENTITY_INSERT [dbo].[usuario_objetivo] OFF
GO
SET IDENTITY_INSERT [dbo].[comida_tipo] ON
INSERT [dbo].[comida_tipo] ([id_comida_tipo], [comida_tipo]) VALUES (1, N'Desayuno')
INSERT [dbo].[comida_tipo] ([id_comida_tipo], [comida_tipo]) VALUES (2, N'Almuerzo')
INSERT [dbo].[comida_tipo] ([id_comida_tipo], [comida_tipo]) VALUES (3, N'Merienda')
INSERT [dbo].[comida_tipo] ([id_comida_tipo], [comida_tipo]) VALUES (4, N'Cena')
INSERT [dbo].[comida_tipo] ([id_comida_tipo], [comida_tipo]) VALUES (5, N'Aperitivo')
SET IDENTITY_INSERT [dbo].[comida_tipo] OFF
GO
SET IDENTITY_INSERT [dbo].[alimento_genero] ON
INSERT [dbo].[alimento_genero] ([id_alimento_genero], [alimento_genero]) VALUES (1, N'Carne vacuna')
INSERT [dbo].[alimento_genero] ([id_alimento_genero], [alimento_genero]) VALUES (2, N'Cereales')
INSERT [dbo].[alimento_genero] ([id_alimento_genero], [alimento_genero]) VALUES (3, N'Frutas')
INSERT [dbo].[alimento_genero] ([id_alimento_genero], [alimento_genero]) VALUES (4, N'Grasas y aceites')
INSERT [dbo].[alimento_genero] ([id_alimento_genero], [alimento_genero]) VALUES (5, N'Huevos')
INSERT [dbo].[alimento_genero] ([id_alimento_genero], [alimento_genero]) VALUES (6, N'Lacteos')
INSERT [dbo].[alimento_genero] ([id_alimento_genero], [alimento_genero]) VALUES (7, N'Pescados y mariscos')
INSERT [dbo].[alimento_genero] ([id_alimento_genero], [alimento_genero]) VALUES (8, N'Vegetales')
INSERT [dbo].[alimento_genero] ([id_alimento_genero], [alimento_genero]) VALUES (9, N'Dulces')
SET IDENTITY_INSERT [dbo].[alimento_genero] OFF