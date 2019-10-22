<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:hkg="http://www.gotthelf.unibe.ch">
    <xsl:output method="xml" indent="yes" />
    
    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()" />
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="tei:body">
        <xsl:copy>
            <xsl:apply-templates select="tei:div">
                <xsl:sort select="@n" />
            </xsl:apply-templates>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="tei:div">
        <xsl:copy>
            <xsl:apply-templates select="@*|tei:ab">
                <xsl:sort select="tei:seg/tei:settlement" />
            </xsl:apply-templates>
        </xsl:copy>
    </xsl:template>
    
</xsl:stylesheet>
