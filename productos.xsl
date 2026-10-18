<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html lang="es">
        <head>
            <meta charset="UTF-8"/>
            <title>Catálogo de Productos - Servicios Web XML</title>
            <style>
                body {
                    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                    background-color: #f4f7f6;
                    margin: 0;
                    padding: 30px;
                    color: #333;
                }
                .container {
                    max-width: 900px;
                    margin: 0 auto;
                    background: #ffffff;
                    padding: 25px 35px;
                    border-radius: 10px;
                    box-shadow: 0 4px 12px rgba(0,0,0,0.08);
                }
                h2 {
                    text-align: center;
                    color: #1a365d;
                    margin-bottom: 25px;
                    font-size: 26px;
                }
                table {
                    width: 100%;
                    border-collapse: collapse;
                    margin-top: 10px;
                }
                th, td {
                    padding: 12px 15px;
                    text-align: left;
                }
                th {
                    background-color: #2b6cb0;
                    color: #ffffff;
                    font-weight: 600;
                    text-transform: uppercase;
                    font-size: 13px;
                    letter-spacing: 0.5px;
                }
                tr:nth-child(even) {
                    background-color: #f8fafc;
                }
                tr:hover {
                    background-color: #edf2f7;
                }
                td {
                    border-bottom: 1px solid #e2e8f0;
                    font-size: 14px;
                }
                .precio {
                    font-weight: bold;
                    color: #2b6cb0;
                }
            </style>
        </head>
        <body>
            <div class="container">
                <h2>Catálogo de Productos</h2>
                <table>
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Nombre</th>
                            <th>Tipo</th>
                            <th>Peso</th>
                            <th>Precio ($)</th>
                            <th>Marca</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="tienda/producto">
                            <tr>
                                <td><xsl:value-of select="position()"/></td>
                                <td><strong><xsl:value-of select="nombre"/></strong></td>
                                <td><xsl:value-of select="tipo"/></td>
                                <td><xsl:value-of select="peso"/></td>
                                <td class="precio">$<xsl:value-of select="precio"/></td>
                                <td><xsl:value-of select="marca"/></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </div>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>