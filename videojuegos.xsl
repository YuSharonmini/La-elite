<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output encoding="UTF-8" method="html" standalone="yes" version="4.0"/>
<!--  Generar el contenedor de la página  -->
	<xsl:template match="/VIDEOJUEGOS">
		<html>
			<head>
				<title>Videojuegos</title>
				<link href="estilos/videojuegos.css" rel="stylesheet"/>
			</head>
			<body>
				<h1 class="encabezadoPrincipal">VIDEOJUEGOS</h1>
				<div class="grid-container">
				<div class="item1">
				<h2 class="encabezados">Listado de videojuegos</h2>
				<ol>
					<xsl:for-each select="GENERO/videojuego">					
						<xsl:sort select="titulo"/>
					<li class="lista">
						<div class="grupo">
						<span class="negrita"><xsl:value-of select="titulo"/>
						<xsl:text> - </xsl:text>
						<xsl:value-of select="anho_de_lanzamiento"/>
						<xsl:text>  </xsl:text>
						<xsl:if test="titulo='Valorant'">
							<a href="videojuegos2.xml" target="blank"><input type="button" value="Ficha"/></a>
						</xsl:if>
						</span>
						</div>
						<xsl:value-of select="breve_descripcion"/>
						<hr/>
					</li>
					</xsl:for-each>
				</ol>
				</div>
				<div class="item2">
				<h2 class="encabezados">Videojuegos de pago</h2>
				<xsl:text>Los videojuegos de pago están ordenados de más baratos a más caros</xsl:text>
				<ol>
					<xsl:for-each select="GENERO/videojuego/tiendas/tienda[1][@precio!='0']">
						<xsl:sort data-type="number" select="@precio" order="ascending"/>
						<li>
							<xsl:value-of select="../../titulo"/>
							<xsl:text> - </xsl:text>
							<xsl:value-of select="@precio"/>
							<xsl:text> € </xsl:text>
						</li>
					</xsl:for-each>
				</ol>
				</div>
				<div class="item3">
				<h2 class="encabezados">Videojuegos gratuitos</h2>
				<ol>
					<xsl:for-each select="GENERO/videojuego/tiendas/tienda[1][@precio='0']">
						<li>
							<xsl:value-of select="../../titulo"/>
						</li>
					</xsl:for-each>
				</ol>
				</div>
				</div>
				<div class="grid-container2">
				<div class="item4">
				<h2 class="encabezados">Juegos ordenador por género</h2>	
					<div id="genero" class="negrita">
					<span id="block">
						<h2 class="encabezados">Géneros:</h2>
					</span>
					<xsl:for-each select="//GENERO">
						<xsl:text> - </xsl:text>
						<xsl:value-of select="@genero"/>		
					</xsl:for-each>
					</div>
				</div>
				<div class="item5">
				<h3 class="encabezados">Genero de deportes <a href="FichasIndependientes/Valorant.xml" target="blank"><input type="button" value="Ficha"/></a></h3>
				<ol>
					<xsl:for-each select="//GENERO[@genero='Deportes']/videojuego/titulo">
						<li>
							<xsl:value-of select="."/>
						</li>
					</xsl:for-each>
				</ol>
				</div>
				<div class="item9">
				<h3 class="encabezados">Genero de Música <a href="FichasIndependientes/Valorant.xml" target="blank"><input type="button" value="Ficha"/></a></h3>
				<ol>
					<xsl:for-each select="//GENERO[@genero='Musica']/videojuego/titulo">
						<li>
							<xsl:value-of select="."/>
						</li>
					</xsl:for-each>
				</ol>
				</div>
				<div class="item6">
				<h3 class="encabezados">Genero de Carreras <a href="FichasIndependientes/Valorant.xml" target="blank"><input type="button" value="Ficha"/></a></h3>
				<ol>
					<xsl:for-each select="//GENERO[@genero='Carreras']/videojuego/titulo">
						<li>
							<xsl:value-of select="."/>
						</li>
					</xsl:for-each>
				</ol>
				</div>
				<div class="item10">
				<h3 class="encabezados">Genero de Plataformas <a href="FichasIndependientes/Valorant.xml" target="blank"><input type="button" value="Ficha"/></a></h3>
				<ol>
					<xsl:for-each select="//GENERO[@genero='Plataformas']/videojuego/titulo">
						<li>
							<xsl:value-of select="."/>
						</li>
					</xsl:for-each>
				</ol>
				</div>
				<div class="item7">	
				<h3 class="encabezados">Genero de RPG <a href="FichasIndependientes/Valorant.xml" target="blank"><input type="button" value="Ficha"/></a></h3>
				<ol>
					<xsl:for-each select="//GENERO[@genero='RPG']/videojuego/titulo">
						<li>
							<xsl:value-of select="."/>
						</li>
					</xsl:for-each>
				</ol>
				</div>
				<div class="item11">
				<h3 class="encabezados">Genero de MOBA <a href="FichasIndependientes/Valorant.xml" target="blank"><input type="button" value="Ficha"/></a></h3>
				<ol>
					<xsl:for-each select="//GENERO[@genero='MOBA']/videojuego/titulo">
						<li>
							<xsl:value-of select="."/>
						</li>
					</xsl:for-each>
				</ol>
				</div>
				<div class="item8">	
				<h3 class="encabezados">Genero de FPS <a href="FichasIndependientes/Valorant.xml" target="blank"><input type="button" value="Ficha"/></a></h3>
				<ol>
					<xsl:for-each select="//GENERO[@genero='FPS']/videojuego/titulo">
						<li>
							<xsl:value-of select="."/>
						</li>
					</xsl:for-each>
				</ol>
				</div>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>	