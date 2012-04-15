<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xalan="http://xml.apache.org/xalan" exclude-result-prefixes="xalan">
	<!-- This XSL stylesheet converts TextMate Snippet (*.tmSnippet) files into Sublime Text Snippet (*sublime-snippet) files. -->
	<xsl:output method="xml" indent="yes" xalan:indent-amount="4" omit-xml-declaration="yes" cdata-section-elements="content" />
	
	<xsl:template match="/">
		<snippet>
			<xsl:for-each select="plist/dict/key">
				<xsl:choose>
					<!-- rename 'name' to 'description' -->
					<xsl:when test="text()='name'">
						<xsl:element name="description">
							<xsl:value-of select="following-sibling::*[1]" />
						</xsl:element>
					</xsl:when>
					
					<!-- ignore uuid tags -->
					<xsl:when test="text()='uuid'" />
					
					<!-- otherwise, copy..ish -->
					<xsl:otherwise>
						<xsl:element name="{text()}">
							<xsl:value-of select="following-sibling::*[1]" />
						</xsl:element>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:for-each>
		</snippet>
	</xsl:template>
</xsl:stylesheet>
