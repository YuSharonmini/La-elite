<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output encoding="UTF-8" method="html" standalone="yes" version="4.0"/>
<!--  Generar el contenedor de la página  -->
	<xsl:template match="/VIDEOJUEGOS">
		<html>
			<head>
				<title>Videojuegos</title>
				<link href="estilos/Videojuegos.css" rel="stylesheet"/>
			</head>
			<body>
				<h1>Listado de videojuegos</h1>
				<p>
					<xsl:for-each select="GENERO/videojuego/titulo[@imagen='CSGO']">
						<xsl:value-of select="../."/>
					</xsl:for-each>
				</p>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>	