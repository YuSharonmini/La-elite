<!--  <xsl:stylesheet  version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns="http://www.w3.org/1999/xhtml"> -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output encoding="UTF-8" method="html" standalone="yes" version="4.0"/>
<!--  Generar el contenedor de la página  -->
<xsl:template match="/VIDEOJUEGOS">
<html>
<head>
<!--  <title><xsl:value-of select="evento/titulo" /></title>  -->
<title>Videojuegos</title>
<link href="Videojuegos.css" rel="stylesheet"/>
</head>
<body>
<h1>Listado de videojuegos de deportes</h1>
<!--    <p>Tony <xsl:value-of select="//GENERO[@genero='Deportes']/videojuego/titulo" /></p>  -->
<p>
<xsl:value-of select="GENERO/videojuego/titulo"/>
</p>
<hr/>
<ol class="deportes">
<xsl:for-each select="GENERO/videojuego">
<xsl:sort select="titulo"/>
<li>
<xsl:value-of select="titulo"/>
</li>
</xsl:for-each>
</ol>
<hr/>
<div class="conatrib">
<p>
<xsl:text>Tony, texto que yo añado y con el que luego puedo jugar. No lo veremos. Sirve para cuando generamos salidas no en html sino en texto plano, por ejemplo. Ahora pondremos el valor del primer elemento de título del género deportes.</xsl:text>
<xsl:value-of select="//GENERO[@genero='Deportes']/videojuego/titulo"/>
</p>
<hr/>
<ol class="deportes">
<xsl:for-each select="//GENERO[@genero='Deportes']/videojuego/titulo">
<!--  El "." lo que hace es tomar el valor del elemento seleccionado  -->
<xsl:sort select="."/>
<li>
<xsl:value-of select="."/>
<xsl:text>. ---- </xsl:text>
</li>
</xsl:for-each>
</ol>
<hr/>
<h2>Listado de Géneros, extrayendo atributos. El último de deportes se repite por un añadido mío, FIFA 2019.</h2>
<hr/>
<ol>
<xsl:for-each select="//GENERO">
<li>
<xsl:value-of select="@genero"/>
</li>
</xsl:for-each>
</ol>
</div>
<!--   
            <ul class="deportes">
            <xsl:for-each select="//GENERO[@genero='Deportes']/videojuego/titulo">
 Vamos a ordenarlos por marca, se podría ordenar también por modelo o cualquier otro elemento 
             <xsl:sort select="titulo" />
             <li>
             <xsl:value-of select="GENERO[@genero='Deportes']/videojuego/titulo" />  -->
<!--             <a href="{url}">  -->
<!--  <xsl:value-of select="modelo" />  -->
<!--            </a>  -->
<!--            </li>
            </xsl:for-each>
            </ul>  -->
</body>
</html>
</xsl:template>
</xsl:stylesheet>