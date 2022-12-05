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
        table {
        width: 100%;
        border-radius: 20px;
        overflow: hidden;
        }
        td, th {
        color: #fff;
        padding: 1rem;
        background-color: #444;
        cursor: pointer;
        }
        tr {
        transition: .2s;
        }
        tr:hover td, tr:hover th {
        background-color: #777;
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
