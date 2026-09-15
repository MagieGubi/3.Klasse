<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
        <teams>
            <xsl:for-each select="euro/teams/team">
                <team>
                    <xsl:attribute name="code">
                        <xsl:value-of select="nation/short-name"/>
                    </xsl:attribute>

                    <xsl:for-each select="position/player">
                        <player>
                            <xsl:value-of select="concat((name|pl)/first-name, ' ', (name|pl)/last-name)"/>
                        </player>
                    </xsl:for-each>
                </team>
            </xsl:for-each>
        </teams>
    </xsl:template>

</xsl:stylesheet>
