<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="nav-1-wrap pd-60">
            <div class="nav-1 bg1" id="bg">
                <div class="container">
                    <xsl:apply-templates select="/ZoneList/Zone[IsActive='true']" mode="Zone1"></xsl:apply-templates>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Zone" mode="Zone1">
        <div class="row">
            <div class="col-lg-6">
                <div class="title-grey"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></div>
                <h2><xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of></h2>
            </div>
            <div class="col-lg-6">
                <nav class="row no-gutters">
                    <xsl:apply-templates select="Zone" mode="Zone2"></xsl:apply-templates>
                </nav>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Zone" mode="Zone2">
        <a>
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:attribute name="href">
                <xsl:value-of select="Url"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="title">
                <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
        </a>
    </xsl:template>
</xsl:stylesheet>