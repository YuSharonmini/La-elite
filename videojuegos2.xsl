<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output encoding="UTF-8" method="html" standalone="yes" version="4.0"/>
<!--  Generar el contenedor de la página  -->
	<xsl:template match="/VIDEOJUEGOS">
		<html>
			<head>
				<title>Videojuegos</title>
				<link href="estilos/videojuegos2.css" rel="stylesheet"/>
			</head>
			<body>
				<div class="ficha">
					<xsl:for-each select="GENERO/videojuego/titulo[@imagen='Valorant']">
						<div class="titulo"><xsl:value-of select="../titulo"/></div>
						<div class="descripcion"><xsl:value-of select="../breve_descripcion"/></div>
						<div class="idioma">
							<span class="españa"><xsl:value-of select="../idiomas/idioma[1]"/></span>
							<span class="portugal"><xsl:value-of select="../idiomas/idioma[2]"/></span>
							<span class="ingles"><xsl:value-of select="../idiomas/idioma[3]"/></span>
						</div>
						<div class="dificultad"><xsl:value-of select="../dificultad"/></div>
						<div class="edad"><xsl:value-of select="../edad_recomendada"/></div>
						<div class="plataforma">
						<ul>
							<li><xsl:value-of select="../plataformas"/></li>
						</ul>
						</div>
						<div class="online"><xsl:value-of select="../online"/></div>
						<div class="anho"><xsl:value-of select="../anho_de_lanzamiento"/></div>
						<ul>
							<li><xsl:value-of select="../desarrolladores/desarrollador[1]"/></li>
							<li><xsl:value-of select="../desarrolladores/desarrollador[2]"/></li>
							<li><xsl:value-of select="../desarrolladores/desarrollador[3]"/></li>
						</ul>
						<div class="empresa"><xsl:value-of select="../empresa"/></div>	
						<div class="valoracion"><xsl:value-of select="../valoracion"/></div>	
						<div class="desarrolladores">
						<ul>
							<li><xsl:value-of select="../curiosidades/curiosidad[1]"/></li>
							<li><xsl:value-of select="../curiosidades/curiosidad[2]"/></li>
							<li><xsl:value-of select="../curiosidades/curiosidad[3]"/></li>
						</ul>
						</div>
					</xsl:for-each>	
				</div>	
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>	