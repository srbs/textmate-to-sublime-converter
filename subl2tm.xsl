<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xalan="http://xml.apache.org/xalan" exclude-result-prefixes="xalan uuid" xmlns:uuid="java.util.UUID">
	<!-- This XSL stylesheet converts TextMate Snippet (*.tmSnippet) files into Sublime Text Snippet (*sublime-snippet) files. -->
	<xsl:output method="xml" encoding="UTF-8" indent="yes" omit-xml-declaration="no"
		xalan:indent-amount="4"
		doctype-public="-//Apple//DTD PLIST 1.0//EN"
		doctype-system="http://www.apple.com/DTDs/PropertyList-1.0.dtd" 
	/>

	<xsl:template match="/">
		<plist version="1.0">
		<dict>
			<xsl:for-each select="snippet/*">
				<key>
					<xsl:choose>
						<xsl:when test="name()='description'">name</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="name()" />
						</xsl:otherwise>
					</xsl:choose>
				</key>
				<string>
					<xsl:value-of select="text()" disable-output-escaping="no" />
				</string>
			</xsl:for-each>
			<key>uuid</key>
			<!--<string>uuid</string>-->
			<xsl:element name="string">
				<xsl:variable name="uuid" select="translate(uuid:randomUUID(), 'abcdef', 'ABCDEF')"/>
				<xsl:value-of select="$uuid" />
			</xsl:element>
		</dict>
		</plist>
	</xsl:template>
</xsl:stylesheet>