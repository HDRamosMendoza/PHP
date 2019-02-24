CREATE PROCEDURE usp_GetArtists
(
	@FiltroPorNombre NVARCHAR(120)
)
AS
BEGIN 
	SELECT 
		ArtistId,
		Name
	FROM Artist
	WHERE
		Name LIKE @FiltroPorNombre
END

CREATE PROCEDURE usp_InsertArtist(
	@Nombre NVARCHAR(120)
)
AS
BEGIN
	INSERT INTO Artist(Name)
	VALUES (@Nombre)

	SELECT SCOPE_IDENTITY()
	-- @@iDENTITY

END

-- sE USA POR EL PLAN DE EJECUCION. SE guarda en memoria.
-- AppFabric .. mirosoft. MAINCACHE . Guardar en memoria en cache.
-- En oracle.
-- Oracle corens
