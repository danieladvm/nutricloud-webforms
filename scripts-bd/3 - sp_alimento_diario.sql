
create proc sp_alimento_diario (
	@id_usuario int,
	@id_comida_tipo int,
	@fecha datetime
)
AS
BEGIN

	Select
	 ua.id_usuario
	,ua.id_alimento
	,ua.id_comida_tipo
	,ua.cantidad
	,ua.id_unidad_medida
	,ua.f_ingreso

	,al.alimento
	,al.energia_kcal
	From usuario_alimento ua
	Inner join alimento al on al.id_alimento = ua.id_alimento
	where ua.id_usuario = @id_usuario
	and ua.id_comida_tipo = @id_comida_tipo
	and DAY(ua.f_ingreso) = DAY(@fecha)
	and MONTH(ua.f_ingreso) = MONTH(@fecha)
	and YEAR(ua.f_ingreso) = YEAR(@fecha)

END
