<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous" />
      </head>
      <body>
        <div class="h-100 d-flex align-items-center justify-content-center">
          <div class="col-auto">
            <h1>Automorph numbers</h1>
            <!-- <h6 class="interval"> от 1 до <%= @number%></h6> -->
            <table class="table table-hover" class="col-3">
              <thead>
                <tr>
                  <th scope="col">Number</th>
                  <th scope="col">Squared number</th>
                </tr>
              </thead>
              <tbody>
                <xsl:for-each select="objects/object">
                  <tr>
                    <td>
                      <xsl:for-each select="object">
                        <xsl:value-of select="ordinary"/>&#160;
                      </xsl:for-each>
                    </td>
                    <td>
                      <xsl:for-each select="object">
                        <xsl:value-of select="squared"/>&#160;
                      </xsl:for-each>
                  </tr>
                </xsl:for-each>
              </tbody>
            </table>
          </div>
        </div>
        <div class="row align-items-end">
          <div class="col">
            <!-- <a href="input.html" class="btn btn-primary btn-lg active" role="button" aria-pressed="true"> Вернуться назад</a> -->
          </div>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
