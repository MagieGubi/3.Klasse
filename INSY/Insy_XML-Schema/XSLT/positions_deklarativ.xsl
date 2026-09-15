<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

    <xsl:output method="xml" indent="yes"/>

    <xsl:param name="defense" select="'defense'"/>
    <xsl:param name="playground" select="'playground'"/>
    <xsl:param name="attack" select="'attack'"/>

    <xsl:template match="/">
        <positions>
            <position type="{$defense}">
                <xsl:apply-templates select="euro/teams/team">
                    <xsl:with-param name="ptype" select="$defense"/>
                </xsl:apply-templates>
            </position>

            <position type="{$playground}">
                <xsl:apply-templates select="euro/teams/team">
                    <xsl:with-param name="ptype" select="$playground"/>
                </xsl:apply-templates>
            </position>

            <position type="{$attack}">
                <xsl:apply-templates select="euro/teams/team">
                    <xsl:with-param name="ptype" select="$attack"/>
                </xsl:apply-templates>
            </position>
        </positions>
    </xsl:template>

    <xsl:template match="team">
        <xsl:param name="ptype"/>
        <team>
            <xsl:attribute name="code">
                <xsl:value-of select="nation/short-name"/>
            </xsl:attribute>
            <xsl:apply-templates select="position[@type = $ptype]/player"/>
        </team>
    </xsl:template>

    <xsl:template match="player">
        <player>
            <xsl:value-of select="concat((name|pl)/first-name, ' ', (name|pl)/last-name)"/>
        </player>
    </xsl:template>

</xsl:stylesheet>
