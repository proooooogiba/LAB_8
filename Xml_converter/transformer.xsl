<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <meta charset="utf-8" />
      </head>
      <body>
            <h1>Automorph numbers</h1>
            <table>
              <thead>
                <tr>
                  <th scope="col">Number</th>
                  <th scope="col">Squared number</th>
                </tr>
              </thead>
              <tbody>
                <xsl:for-each select="objects">
                  <xsl:for-each select="object">
                    <tr>
                      <td>
                        <xsl:value-of select="ordinary"/>
                      </td>
                      <td>
                        <xsl:value-of select="squared"/>
                      </td>
                    </tr>
                  </xsl:for-each>
                </xsl:for-each>
              </tbody>
            </table>
          </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
