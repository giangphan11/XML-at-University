<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" />

    <xsl:template match="Truong">
      <html>
        <head>
          <link rel="stylesheet" type="text/css" href="style.css"/>
        </head>
        <body>
          <h2>DANH SÁCH THÍ SINH</h2>
          <xsl:for-each select="Nganh">
            <h4>Tên ngành: <xsl:value-of select="TenNganh"/> </h4>
            <table>
              <tr id="head">
                <td>STT</td>
                <td>Mã</td>
                <td>Họ tên</td>
                <td>khối thi</td>
                <td>Tổng điểm</td>
              </tr>
            
            <xsl:for-each select="ThiSinh">
              <xsl:variable name="khoi_thi" select="KhoiThi"/>
              <xsl:variable name="dToan" select="DiemToan"/>
              <xsl:variable name="dLy" select="DiemLy"/>
              <xsl:variable name="dAnh" select="DiemAnh"/>
              <tr>
                <td>
                  <xsl:value-of select="position()"/>
                </td>
                <td>
                  <xsl:value-of select="@MaTS"/>
                </td>
                <td>
                  <xsl:value-of select="HoTen"/>
                </td>
                <td>
                  <xsl:value-of select="$khoi_thi"/>
                </td>
                <td>
                  <xsl:if test="$khoi_thi='A'">
                    <xsl:value-of select="($dToan*2)+$dLy+$dAnh"/>
                  </xsl:if>
                  <xsl:if test="$khoi_thi='D'">
                    <xsl:value-of select="($dAnh*2)+$dLy+$dToan"/>
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
