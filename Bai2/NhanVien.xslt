<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="DS">
    <html>
      <head>
        <link rel="stylesheet" type="text/css" href="style.css"/>
      </head>
      <body>



        <h1>BẢNG LƯƠNG THÁNG</h1>

        <xsl:for-each select="CongTy">
          <h3>
            Tên công ty: <xsl:value-of select="@TenCongTy"/>
          </h3>
          <xsl:for-each select="DonVi">
            <h3>
              Tên đơn vị:<xsl:value-of select="TenDV"/>
            </h3>

            <table>
              <tr>
                <td>STT</td>
                <td>Họ tên</td>
                <td>Ngày sinh</td>
                <td>Ngày công</td>
                <td>Lương</td>
              </tr>
              <xsl:for-each select="NhanVien">
                <xsl:variable name="ngay_cong" select="NgayCong"/>
                <tr>
                  <td>
                    <xsl:value-of select="position()"/>
                  </td>
                  <td>
                    <xsl:value-of select="HoTen"/>
                  </td>
                  <td>
                    <xsl:value-of select="NgaySinh"/>
                  </td>
                  <td>
                    <xsl:value-of select="NgayCong"/>
                  </td>
                  <td>

                    <xsl:if test="$ngay_cong&lt;=20">
                      <xsl:value-of select="$ngay_cong*15000"/>
                    </xsl:if>
                    <xsl:if test="$ngay_cong>20and$ngay_cong&lt;=25">
                      <xsl:value-of select="$ngay_cong*20000"/>
                    </xsl:if>

                    <xsl:if test="$ngay_cong>25">
                      <xsl:value-of select="$ngay_cong*25000"/>
                    </xsl:if>

                  </td>
                </tr>
              </xsl:for-each>
            </table>
          </xsl:for-each>
        </xsl:for-each>

      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
