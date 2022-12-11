<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <style>
        .container {
        padding: 50px;
        border-radius: 20px;
        border: 5px solid #444;
        margin: 100px;
        color: #fff;
        background-color: #333;
        text-align: center;
        }
      </style>
      <body style="background-color: #222">
        <div class="container">
          <h3>Результаты:</h3>
          <xsl:value-of select="current()"/>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
