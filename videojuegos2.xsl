<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output encoding="UTF-8" method="html" standalone="yes" version="4.0"/>
<!--  Generar el contenedor de la página  -->
	<xsl:template match="/VIDEOJUEGOS">
		<html>
			<head>
				<title>Videojuegos</title>
				<link href="prueba.css" rel="stylesheet"/>
			</head>
			<body>
				<p>
					<xsl:for-each select="GENERO/videojuego/titulo[@imagen='Valorant']">
						<span class="titulo"><xsl:value-of select="../titulo"/></span>
						<span class="descripcion"><xsl:value-of select="../breve_descripcion"/></span>
						<span class="clase1"><xsl:value-of select="../dificultad"/></span>
						<span class="clase1"><xsl:value-of select="../edad_recomendada"/></span>
						<span class="clase1"><xsl:value-of select="../plataformas/plataforma"/></span>
						<span class="clase1"><xsl:value-of select="../online"/></span>
						<span class="clase1"><xsl:value-of select="../anho_de_lanzamiento"/></span>
						<span class="clase1"><xsl:value-of select="../empresa"/></span>	
						<span class="clase1"><xsl:value-of select="../valoraciones"/></span>
						<span class="clase1"><xsl:value-of select="../curiosidades/curiosidad[2]"/></span>	
					</xsl:for-each>
				</p>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>	