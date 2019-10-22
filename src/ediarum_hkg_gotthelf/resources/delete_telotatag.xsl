<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:telota="http://www.telota.de"
    xmlns:saxon="http://saxon.sf.net/"
    exclude-result-prefixes="saxon tei"
    version="2.0">
    
    <!-- Dokumenttyp für Framework hinzufügen -->
    <xsl:template match="/">
        <xsl:copy-of select="tei:telota/tei:ref">
            
        </xsl:copy-of>
        <xsl:copy-of select="tei:telota/tei:title">
            
        </xsl:copy-of>
        <xsl:copy-of select="tei:telota/telota:ref">
            
        </xsl:copy-of>
        <xsl:copy-of select="tei:telota/telota:title">
            
        </xsl:copy-of>
        <xsl:copy-of select="tei:telota/tei:date">
            
        </xsl:copy-of>
    </xsl:template>
    
</xsl:stylesheet>