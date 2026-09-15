<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
        <teams>
            <xsl:apply-templates select="euro/teams/team"/>
        </teams>
    </xsl:template>

    <xsl:template match="team">
        <team>
            <xsl:attribute name="code">
                <xsl:value-of select="nation/short-name"/>
            </xsl:attribute>
            <xsl:apply-templates select="position/player"/>
        </team>
    </xsl:template>

    <xsl:template match="player">
        <player>
            <xsl:value-of select="concat((name|pl)/first-name, ' ', (name|pl)/last-name)"/>
        </player>
    </xsl:template>

</xsl:stylesheet>
