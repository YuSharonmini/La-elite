<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output encoding="UTF-8" method="html" standalone="yes" version="4.0"/>
<!--  Generar el contenedor de la página  -->
	<xsl:template match="/VIDEOJUEGOS">
		<html>
			<head>
				<title>Videojuegos</title>
				<link href="estilos/prueba.css" rel="stylesheet"/>
			</head>
			<body>
				<h1>Listado de videojuegos</h1>
				<ol>
					<xsl:for-each select="GENERO/videojuego">
						<xsl:sort select="titulo"/>
						<li>
							<xsl:value-of select="titulo"/>
							<a href="Videojuegos2.xml" target="_self"><input type="button" value="Ficha"/></a>
						</li>
					</xsl:for-each>
				</ol>
				<hr/>
				<h2>Videojuegos gratuitos</h2>
				<ol>
				<xsl:for-each select="GENERO/videojuego/tiendas/tienda[@precio='0']">
				<li>
					<xsl:value-of select="../../titulo"/>
				</li>
				</xsl:for-each>
				</ol>
				<h2>Videojuegos de pago</h2>
				<ol>
					<xsl:for-each select="GENERO/videojuego/tiendas/tienda[@precio!='0']">
						<xsl:sort data-type="number" select="@precio" order="ascending"/>
						<li>
							<xsl:value-of select="../../titulo"/>
						</li>
					</xsl:for-each>
				</ol>
				<hr/>
				<h2>Videojuegos genero deportes</h2>
				<ol>
					<xsl:for-each select="//GENERO">
						<li>
							<xsl:value-of select="@genero"/>
						</li>
					</xsl:for-each>
				</ol>
				<h2>Genero de deportes</h2>
				<ol>
					<xsl:for-each select="//GENERO[@genero='Deportes']/videojuego/titulo">
						<li>
							<xsl:value-of select="."/>
						</li>
					</xsl:for-each>
				</ol>
				<h2>Genero de Plataformas</h2>
				<ol>
					<xsl:for-each select="//GENERO[@genero='Plataformas']/videojuego/titulo">
						<li>
							<xsl:value-of select="."/>
						</li>
					</xsl:for-each>
				</ol>
				<h2>Genero de RPG</h2>
				<ol>
					<xsl:for-each select="//GENERO[@genero='RPG']/videojuego/titulo">
						<li>
							<xsl:value-of select="."/>
						</li>
					</xsl:for-each>
				</ol>
				<h2>Genero de Carreras</h2>
				<ol>
					<xsl:for-each select="//GENERO[@genero='Carreras']/videojuego/titulo">
						<li>
							<xsl:value-of select="."/>
						</li>
					</xsl:for-each>
				</ol>
				<h2>Genero de Música</h2>
				<ol>
					<xsl:for-each select="//GENERO[@genero='Musica']/videojuego/titulo">
						<li>
							<xsl:value-of select="."/>
						</li>
					</xsl:for-each>
				</ol>
				<h2>Genero de MOBA</h2>
				<ol>
					<xsl:for-each select="//GENERO[@genero='MOBA']/videojuego/titulo">
						<li>
							<xsl:value-of select="."/>
						</li>
					</xsl:for-each>
				</ol>
				
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>	