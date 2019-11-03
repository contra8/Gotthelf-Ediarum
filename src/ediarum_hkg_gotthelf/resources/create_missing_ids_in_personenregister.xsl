<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:hkg="http://www.gotthelf.unibe.ch">
    <xsl:output method="xml" indent="yes" />
    
    <!--xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()" />
        </xsl:copy>
    </xsl:template-->
    
    <xsl:template match="tei:ab">
        <xsl:if test="@type='person'">
            <xsl:copy>
                <xsl:attribute name="xml:id">
                    <xsl:value-of select="concat('n_', generate-id(.))" />
                </xsl:attribute>
                <xsl:apply-templates select="@*|node()"/>
            </xsl:copy>
        </xsl:if>
        <xsl:if test="@type='organization'">
            <xsl:copy>
                <xsl:attribute name="xml:id">
                    <xsl:value-of select="concat('n_', generate-id(.))" />
                </xsl:attribute>
                <xsl:apply-templates select="@*|node()"/>
            </xsl:copy>
        </xsl:if>
        <xsl:if test="@type='group'">
            <xsl:copy>
                <xsl:attribute name="xml:id">
                    <xsl:value-of select="concat('g_', generate-id(.))" />
                </xsl:attribute>
                <xsl:apply-templates select="@*|node()"/>
            </xsl:copy>
        </xsl:if>
    </xsl:template>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>
