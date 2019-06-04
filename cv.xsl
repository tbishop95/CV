<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <xsl:value-of select="/cv/personal/name"/> - CV</title>
            </head>
            <body style="font-family:Avenir; width:60%; margin: 3rem;">
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    <!--Personal Section-->
    <xsl:template match="personal">
        <p style="text-align:center; font-size: 1.5rem">
            <xsl:apply-templates select="name"/>
        </p>
        <p style="text-align:center;">
            <xsl:apply-templates select="address"/>
        </p>
        <p style="text-align:center;">
            <xsl:apply-templates select="email"/>
            <span style="font-weight:700;">. </span>
            <xsl:apply-templates select="phone"/>
        </p>
        <h3 style="border-bottom: 3px solid #2D5EB5">Personal Statement</h3>
        <p>
            <xsl:apply-templates select="bio"/>
        </p>
    </xsl:template>
    <!--Skills Section-->
    <xsl:template match="skills">
        <h3 style="border-bottom: 2px solid #2D5EB5">Key Skills</h3>
        <xsl:apply-templates select="skill"/>
    </xsl:template>
    <xsl:template match="skill">
        <li style="margin-bottom: -1rem;">
            <xsl:value-of select="."/>
        </li>
        <br/>
    </xsl:template>
    <!--Employment Section-->
    <xsl:template match="employment">
        <h3 style="border-bottom: 3px solid #2D5EB5">Employment History</h3>
        <p>
            <xsl:apply-templates select="role"/>
        </p>
    </xsl:template>
    <xsl:template match="role">
        <p style="margin-bottom: -1rem; font-weight: 700;">
            <xsl:apply-templates select="location"/>- 
            <xsl:apply-templates select="title"/></p>
        <p>(
            <xsl:apply-templates select="from"/>
            - 
            <xsl:apply-templates select="to"/>
            )</p>
        <p>
            <xsl:apply-templates select="description"/>
        </p>
    </xsl:template>
    <xsl:template match="description">
        <li style="margin-bottom: -1rem;">
            <xsl:value-of select="."/>
        </li>
        <br/>
    </xsl:template>
    <!--Education Section-->
    <xsl:template match="education">
        <h3 style="border-bottom: 3px solid #2D5EB5">Education</h3>
        <p>
            <xsl:apply-templates select="result"/>
        </p>
        <p>
            <xsl:apply-templates select="online"/>
        </p>
    </xsl:template>
    <xsl:template match="result">
        <p style="margin-bottom: -1rem; font-weight: 700;">
            <xsl:apply-templates select="place"/>
        </p>
        <p>(
            <xsl:apply-templates select="from"/>
            - 
            <xsl:apply-templates select="to"/>
            )</p>
        <p/>
        <p style="font-weight: 500;">
            <xsl:apply-templates select="subject"/>- 
            <xsl:apply-templates select="type"/></p>
        <p>Grades - 
            <xsl:apply-templates select="grade"/></p>
    </xsl:template>
    <xsl:template match="award">
        <p style="font-weight: 700;">
            <xsl:value-of select="."/>
        </p>
    </xsl:template>
    <xsl:template match="subject">
        <span>
            <xsl:value-of select="."/>, </span>
    </xsl:template>
    <xsl:template match="grade">
        <span>
            <xsl:value-of select="."/>
        </span>
    </xsl:template>
    <!--Hobbies Section-->
    <xsl:template match="hobbies">
        <h3 style="border-bottom: 2px solid #2D5EB5">Hobbies &amp; Interests</h3>
        <xsl:apply-templates select="hobby"/>
    </xsl:template>
    <xsl:template match="references">
        <h3 style="border-bottom: 3px solid #2D5EB5">References</h3>
        <p>
            <xsl:apply-templates select="reference"/>
        </p>
    </xsl:template>
    <!--Reference Section-->
    <xsl:template match="reference">
        <p style="margin-bottom: -1rem; font-weight: 500; text-decoration: underline">
            <xsl:apply-templates select="name"/>
        </p>
        <p style="margin-bottom: -1rem;">Email: 
            <xsl:apply-templates select="email"/></p>
        <p style="margin-bottom: -1rem;">Contact Number: 
            <xsl:apply-templates select="phone"/></p>
        <p>Relationship: 
            <xsl:apply-templates select="relationship"/></p>
    </xsl:template>
    <!--Portfolio Section-->
    <xsl:template match="portfolio">
        <h3 style="border-bottom: 3px solid #2D5EB5">Portfolio</h3>
        <p>
            <xsl:apply-templates select="example"/>
        </p>
    </xsl:template>
    <xsl:template match="example">
        <p style="margin-bottom: -1rem; font-weight: 500;">
            <xsl:apply-templates select="name"/>- 
            <xsl:apply-templates select="url"/></p>
        <p>
            <xsl:apply-templates select="overview"/>
        </p>
    </xsl:template>
</xsl:stylesheet>