<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
	<xsl:template match="/">
		<html>
			<!-- <style>
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
			</style> -->
			<body>
			<div class="h-100 d-flex align-items-center justify-content-center">
        <div class="col-auto">
        <h1>Автоморфные числа</h1>
        <!-- <h6 class="interval"> от 1 до <%= @number%></h6> -->
        <table class="table table-hover" class="col-3">
            <thead>
              <tr>
                <th scope="col">Число</th>
                <th scope="col">Число в квадрате</th>
              </tr>
            </thead>
            <tbody>
			<xsl:for-each select="objects/object">
				<tr>
								<td>
									<xsl:value-of select="position()"/>
								</td>
								<td>
									<xsl:for-each select="object">
										<xsl:value-of select="text()"/>&#160;
									</xsl:for-each>
								</td>
							</tr>
						</xsl:for-each>
            </tbody>
          </table>
    </div>
    </div>
    <div class="row align-items-end">
        <div class="col">
          <a href="input.html" class="btn btn-primary btn-lg active" role="button" aria-pressed="true"> Вернуться назад</a>
        </div>
    </div>
	</xsl:template>
</xsl:stylesheet>