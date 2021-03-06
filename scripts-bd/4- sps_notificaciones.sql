USE [nutricloud]
GO
/****** Object:  StoredProcedure [dbo].[sp_notificacion_blog_nota_insertar]    Script Date: 01/10/2016 03:17:59 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
DROP PROCEDURE [dbo].[sp_notificacion_blog_nota_insertar]
GO
CREATE PROCEDURE [dbo].[sp_notificacion_blog_nota_insertar](@id_nota int, @id_usuario int)

AS
BEGIN
    
	--SELECT u.id_usuario 
	--FROM usuario AS u 
	--WHERE u.id_usuario_tipo = 1;

	INSERT INTO notificacion_blog_nota (id_blog_nota, id_usuario) VALUES (@id_nota, @id_usuario)
END

GO
/****** Object:  StoredProcedure [dbo].[sp_notificacion_blog_nota_obtener]    Script Date: 01/10/2016 03:17:59 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	ffunes	Name: Federico Funes
-- Create date: 
-- Description: Obtiene la notas que fueron notificadas al usuario
-- =============================================
DROP PROCEDURE [dbo].[sp_notificacion_blog_nota_obtener]
GO
CREATE PROCEDURE [dbo].[sp_notificacion_blog_nota_obtener](@id_usuario int)
AS
BEGIN
	SELECT 
		bn.id_blog_nota as id_nota, 
		bn.titulo_nota, 
		u.id_usuario as id_autor_nota,
		u.nombre as nombre_autor_nota, 
		nbn.notificacion_fecha as fecha_notificacion, 
		nbn.leido as leida_notificacion,
		nbn.id_notificacion_blog_nota as id_notificacion
	FROM 
		notificacion_blog_nota AS nbn
		INNER JOIN blog_nota AS bn ON nbn.id_blog_nota = bn.id_blog_nota
		INNER JOIN usuario AS u ON bn.id_usuario = u.id_usuario 
	WHERE 
		nbn.id_usuario = @id_usuario  
	ORDER BY fecha_notificacion DESC;
END

GO
/****** Object:  StoredProcedure [dbo].[sp_notificacion_blog_nota_obtener_cantidad_notificaciones_no_leidas]    Script Date: 01/10/2016 03:17:59 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
DROP PROCEDURE [dbo].[sp_notificacion_blog_nota_obtener_cantidad_notificaciones_no_leidas]
GO
CREATE PROCEDURE [dbo].[sp_notificacion_blog_nota_obtener_cantidad_notificaciones_no_leidas] (@id_usuario int)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT 
		count(*)
	FROM 
		notificacion_blog_nota AS nbn
	WHERE 
		nbn.id_usuario = @id_usuario 
		AND nbn.leido = 0;
END

GO
