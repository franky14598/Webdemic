<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
                doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" omit-xml-declaration="yes"/>

    <xsl:template match="/">
      <html version="-//W3C//DTD XHTML 1.1//EN"
          xmlns="http://www.w3.org/1999/xhtml" xml:lang="ca"
          xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
          xsi:schemaLocation="http://www.w3.org/1999/xhtml
                              http://www.w3.org/MarkUp/SCHEMA/xhtml11.xsd">

      <head>
        <title>Bootstrap</title>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <link rel="stylesheet" type="text/css" href="html_style.css" />
        <script type="text/javascript" src="code.js"></script>

      </head>
      <body>
        <div class="header">
          <h1><a href="index.html" id="header_title">BOOTSTRAP</a></h1>
          <h3>What is it and examples</h3>
        </div>
        <div class="content-body">
          <div class="menu">
            <ul>
              <li>
                <a class="menuitem" href="index.html">What is Bootstrap?</a>
              </li>
              <li>
                <a class="menuitem" href="uses.html">How to use Bootstrap</a>
              </li>
              <li>
                <a class="menuitem" href="Bootstrap.xml">Classes on Bootstrap</a>
              </li>
            </ul>
          </div>
          <div class="content">
            <p class="content-title">
              Bootstrap Classes
            </p>

          <h5 style="text-align:center;font-weight:normal;">  Search by class: <input type="text" id="search"/>
              &#160; <input type="button" value="Search" onclick="buscar();"/></h5>


                  <xsl:for-each select="//class">

                  <h2><xsl:value-of select="name"/></h2>
                  <p><xsl:value-of select="description"/></p>
                  <table>
                    <tr>
                      <th class="titletable">Name</th>
                      <th class="titletable">Description</th>
                      <th class="titletable">Use Example</th>
                      <th class="titletable">Image</th>
                    </tr >
                    <xsl:for-each select="types/type">
                    <tr>
                      <td class="tede impar"><xsl:value-of select="nameType"/></td>
                      <td  class="tede"><xsl:value-of select="descriptionType"/></td>
                      <td class="tede"><xsl:value-of select="useExample"/></td>
                      <td id="imagetable"><img border="0" width="40" height="40"> <xsl:attribute name="src">
                <xsl:value-of select="image"/>
            </xsl:attribute>
          </img></td>
                    </tr>
                    </xsl:for-each>
                  </table>
                </xsl:for-each>
          </div>
        </div>
        <div class="footer">
          <div class="validated">
            <p>
                  <a href="http://validator.w3.org/check?uri=referer"><img src="http://www.w3.org/Icons/valid-xhtml11" alt="Valid XHTML 1.1" height="31" width="88" /></a>
                  <a href="http://jigsaw.w3.org/css-validator/check/referer"> <img style="border:0;width:88px;height:31px" src="http://jigsaw.w3.org/css-validator/images/vcss-blue" alt="¡CSS Válido!" /></a>
            </p>
          </div>
          <div class="creativeC">
            <p>
              <a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Licencia de Creative Commons" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" />
            </a>Esta obra está bajo una <a  id="linkcc" rel="license" href="http://creativecommons.org/licenses/by/4.0/">licencia de Creative Commons Reconocimiento 4.0 Internacional</a>.
            </p>
            <p id="team3">Team 3: Álvaro, Pablo Valverde y Francisco Aranda</p>
          </div>
          <div class="schools">
            <img alt="webdemic" src="img/webdemic.png"/>
            <a href="https://twinspace.etwinning.net/about"><img id="twin-logo" alt="Logotype Twinspace" src="img/etwinning.png"/></a>
            <a href="http://iesseveroochoa.edu.gva.es/index.php/es/"><img id="logo-severo" alt="IES Severo Ochoa" src="img/severo-ochoa.png"/></a>
            <a href="http://borusan.meb.k12.tr/"><img alt="Borusan" src="img/meb-logo.png"/></a>
          </div>
        </div>
      </body>
      </html>
    </xsl:template>
</xsl:stylesheet>
