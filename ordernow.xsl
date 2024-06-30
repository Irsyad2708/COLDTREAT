<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
	<body style="background-color:#FFD1DC">
		<h1>COLD TREAT</h1>
		<h2>ICE CREAMS</h2>
		<table border="3">
			<tr bgcolor="White">
				<th>CUSTOMER NAME</th>
				<th>FLAVOUR</th>
				<th>TASTE</th>
				<th>TOTAL</th>
				<th>PRICE (RM)</th>
				<th>PAYMENT METHOD</th>
			</tr>
			<xsl:for-each select="icecream/details">
				<xsl:if test="price &gt; 4">
					<tr>
						<td><xsl:value-of select="customername"></xsl:value-of> </td>
						<td><xsl:value-of select="flavour"></xsl:value-of> </td>
						<td><xsl:value-of select="taste"></xsl:value-of> </td>
						<td><xsl:value-of select="total"></xsl:value-of> </td>
						<td><xsl:value-of select="price"></xsl:value-of> </td>
						<td><xsl:value-of select="paymentmethod"></xsl:value-of> </td>
					</tr>
				</xsl:if>
			</xsl:for-each>
		</table>
	</body>
  </html>
 </xsl:template>
</xsl:stylesheet>