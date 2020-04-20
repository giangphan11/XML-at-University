<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="HD">
    <html>
      <head>
        <link rel="stylesheet" type="text/css" href="style.css" />

      </head>
      <body>
        <h2>PHIẾU MUA HÀNG</h2>
        <h4>
          Hoá đơn: <xsl:value-of select="@MaHD"/>
        </h4>
        <xsl:for-each select="LoaiHang">
          <h4>
            Loại hàng: <xsl:value-of select="@TenLoai"/>
          </h4>
          <table>
            <tr id="head">
              <td>STT</td>
              <td>Tên hàng</td>
              <td>Số lượng</td>
              <td>Đơn giá</td>
              <td>Thành tiền</td>
            </tr>
            <xsl:for-each select="hang">
              <xsl:variable name="so_luong" select="SoLuong"/>
              <xsl:variable name="don_gia" select="DonGia"/>
              <tr>
                <td>
                  <xsl:value-of select="position()"/>
                </td>

                <td>
                  <xsl:value-of select="TenHang"/>
                </td>
                <td>
                  <xsl:value-of select="$so_luong"/>
                </td>
                <td>
                  <xsl:value-of select="$don_gia"/>
                </td>
                <td>
                  <xsl:if test="$so_luong&gt;100and$so_luong&lt;=200">
                    <xsl:value-of select="$so_luong*(0.2*$don_gia)"/>
                  </xsl:if>
                  <xsl:if test="$so_luong&gt;200">
                    <xsl:value-of select="$so_luong*(0.3*$don_gia)"/>
                  </xsl:if>
                  <xsl:if test="$so_luong&lt;=100">
                    <xsl:value-of select="$so_luong*$don_gia"/>
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
