<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

    <xsl:output method="xml" indent="yes"/>

    <xsl:variable name="defense" select="'defense'"/>
    <xsl:variable name="playground" select="'playground'"/>
    <xsl:variable name="attack" select="'attack'"/>

    <xsl:template match="/">
        <positions>
            <position type="{$defense}">
                <xsl:for-each select="euro/teams/team">
                    <team>
                        <xsl:attribute name="code">
                            <xsl:value-of select="nation/short-name"/>
                        </xsl:attribute>

                        <xsl:for-each select="position[@type = $defense]/player">
                            <player>
                                <xsl:value-of select="concat((name|pl)/first-name, ' ', (name|pl)/last-name)"/>
                            </player>
                        </xsl:for-each>
                    </team>
                </xsl:for-each>
            </position>

            <position type="{$playground}">
                <xsl:for-each select="euro/teams/team">
                    <team>
                        <xsl:attribute name="code">
                            <xsl:value-of select="nation/short-name"/>
                        </xsl:attribute>

                        <xsl:for-each select="position[@type = $playground]/player">
                            <player>
                                <xsl:value-of select="concat((name|pl)/first-name, ' ', (name|pl)/last-name)"/>
                            </player>
                        </xsl:for-each>
                    </team>
                </xsl:for-each>
            </position>

            <position type="{$attack}">
                <xsl:for-each select="euro/teams/team">
                    <team>
                        <xsl:attribute name="code">
                            <xsl:value-of select="nation/short-name"/>
                        </xsl:attribute>

                        <xsl:for-each select="position[@type = $attack]/player">
                            <player>
                                <xsl:value-of select="concat((name|pl)/first-name, ' ', (name|pl)/last-name)"/>
                            </player>
                        </xsl:for-each>
                    </team>
                </xsl:for-each>
            </position>
        </positions>
    </xsl:template>

</xsl:stylesheet>
