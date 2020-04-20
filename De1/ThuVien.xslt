<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:output method="html" />

  <xsl:template match="TV">
    <html>
      <head>
        <link rel="stylesheet" type="text/css" href="style.css"/>
      </head>
      <body>
        <h2>DANH MỤC SÁCH</h2>
        <xsl:for-each select="NhaXB">
          <h4>
            Tên nhà xuất bản:<xsl:value-of select="@TenNXB"/>
          </h4>
          <table>
            <tr id="head">
              <td>STT</td>
              <td>Tên sách</td>
              <td>Số trang</td>
              <td>Giá</td>
            </tr>
            <xsl:for-each select="Sach">
              <xsl:variable name="so_Trang" select="SoTrang"/>
              <tr>
                <td>
                  <xsl:value-of select="position()"/>
                </td>
                <td>
                  <xsl:value-of select="TenSach"/>
                </td>
                <td>
                  <xsl:value-of select="$so_Trang"/>
                </td>

                <td>
                  <xsl:if test="$so_Trang&lt;=100">
                    <xsl:value-of select="$so_Trang*4000"/>
                  </xsl:if>
                  <xsl:if test="$so_Trang>100and$so_Trang&lt;=150">
                    <xsl:value-of select="$so_Trang*3000"/>
                  </xsl:if>
                  <xsl:if test="$so_Trang>150">
                    <xsl:value-of select="$so_Trang*2000"/>
                  </xsl:if>
                </td>
              </tr>
            </xsl:for-each>
          </table>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
