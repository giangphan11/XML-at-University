<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="SieuThi">
    <html>
      <head>
        <title>Phan Bá Giang- Ôn tập</title>
        <link rel="stylesheet" type="text/css" href="style.css"/>
      </head>
      <body>
        <h2>
          Tên siêu thị: <xsl:value-of select="TenSieuThi"/>
        </h2>
        <h4>
          Địa chỉ: <xsl:value-of select="DiaChi"/>
        </h4>
        <h4>
          Số điện thoại: <xsl:value-of select="SoDienThoai"/>
        </h4>
        <table>
          <tr id="head">
            <td>STT</td>
            <td>Mã hàng</td>
            <td>Tên hàng</td>
            <td>Số lượng</td>
            <td>Loại hàng</td>
            <td>Giá bán</td>
          </tr>
          <xsl:apply-templates select="//Hang"/>
        <!--<xsl:for-each select="Hang" >
          
          <tr>
            <td>
              <xsl:value-of select="position()"/>
            </td>
            <td><xsl:value-of select="@MaHang"/></td>
            <td><xsl:value-of select="TenHang"/></td>
            <td><xsl:value-of select="SoLuong"/></td>
            <td><xsl:value-of select="LoaiHang"/></td>
            <td><xsl:value-of select="DonGia"/></td>
          </tr>
          
        </xsl:for-each>-->
        </table>
      </body>
    </html>
  </xsl:template>
  
  
  <xsl:template match="Hang">
    <tr>
      <td>
        <xsl:value-of select="position()"/>
      </td>
      <td>
        <xsl:value-of select="@MaHang"/>
      </td>
      <td>
        <xsl:value-of select="TenHang"/>
      </td>
      <td>
        <xsl:value-of select="SoLuong"/>
      </td>
      <td>
        <xsl:value-of select="LoaiHang"/>
      </td>
      <td>
        <xsl:value-of select="DonGia"/>
      </td>
    </tr>
  </xsl:template>
  
</xsl:stylesheet>
