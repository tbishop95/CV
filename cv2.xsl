<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <xsl:value-of select="cv/personal/name"/> - CV</title>
                <link href="cv.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <div id="container">
                    <!--Personal Section-->
                    <div id="personal">
                        <h1>
                            <xsl:value-of select="cv/personal/name"/>
                        </h1>
                        <div id="contactDetails">
                            <p>Address: 
                                <xsl:value-of select="cv/personal/address"/></p>
                            <p>Telephone: 
                                <xsl:value-of select="cv/personal/phone"/></p>
                            <p>Email: 
                                <xsl:value-of select="cv/personal/email"/></p>
                        </div>
                    </div>
                    <div id="content">
                        <div id="bio">
                            <p>
                                <xsl:copy-of select="cv/personal/bio"/>
                            </p>
                        </div>
                        <div id="middleContainer">
                            <!--Education Section-->
                            <div id="education">
                                <h2>Education</h2>
                                <xsl:call-template name="showEducation"/>
                            </div>
                            <!--Employment Section-->
                            <div id="employment">
                                <h2>Employment</h2>
                                <xsl:call-template name="showEmployment"/>
                            </div>
                        </div>
                        <!--Hobbies Section-->
                        <div id="hobbiesandinterests">
                            <h2>Hobbies and Interests</h2>
                            <xsl:copy-of select="cv/hobbies"/>
                        </div>
                        <div id="bottomContainer">
                            <!--References Section-->
                            <div id="references">
                                <h2>References</h2>
                                <xsl:call-template name="showReferences"/>
                            </div>
                            <!--Portfolio Section-->
                            <div id="portfolio">
                                <h2>Portfolio</h2>
                                <xsl:call-template name="showPortfolio"/>
                            </div>
                        </div>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
    <!-- education Template -->
    <xsl:template name="showEducation">
        <xsl:for-each select="cv/education/result">
            <div class="contact">
                <h3 style="display:none;">
                    <xsl:value-of select="."/>
                </h3>
                <h3 style="margin-bottom:0rem;">
                    <xsl:value-of select="place"/>- 
                    <xsl:value-of select="type"/></h3>
                <span style="font-style: italic;">(
                    <xsl:value-of select="from"/>
                    - 
                    <xsl:value-of select="to"/>
                    )</span>
                <p>
                    <xsl:value-of select="subject[1]"/>- 
                    <xsl:value-of select="grade[1]"/></p>
                <p>
                    <xsl:value-of select="subject[2]"/>- 
                    <xsl:value-of select="grade[2]"/></p>
                <p>
                    <xsl:value-of select="subject[3]"/>- 
                    <xsl:value-of select="grade[3]"/></p>
            </div>
        </xsl:for-each>
    </xsl:template>
    <!-- employment Template -->
    <xsl:template name="showEmployment">
        <xsl:for-each select="cv/employment/role">
            <h3 class="jobtitle">
                <strong>
                    <xsl:value-of select="title"/>
                </strong>, 
                <xsl:value-of select="location"/>
                <span style="font-style: italic;">
                    (
                    <xsl:value-of select="from"/>
                    - 
                    <xsl:value-of select="to"/>
                    )</span>
            </h3>
            <ul class="jobachievementlist">
                <xsl:for-each select="description">
                    <li class="jobachievementitem">
                        <xsl:value-of select="."/>
                    </li>
                </xsl:for-each>
            </ul>
        </xsl:for-each>
    </xsl:template>
    <!-- references Template -->
    <xsl:template name="showReferences">
        <xsl:for-each select="cv/references/reference">
            <div class="contact">
                <h3 style="display:none;">
                    <xsl:value-of select="."/>
                </h3>
                <h3>
                    <xsl:value-of select="name"/>
                </h3>
                <ul>
                    <li>
                        <xsl:value-of select="phone"/>
                    </li>
                    <li>
                        <xsl:value-of select="email"/>
                    </li>
                    <li>
                        <xsl:value-of select="relationship"/>
                    </li>
                </ul>
            </div>
        </xsl:for-each>
    </xsl:template>
    <!-- portfolio Template -->
    <xsl:template name="showPortfolio">
        <xsl:for-each select="cv/portfolio/example">
            <div class="contact">
                <h3 style="display:none;">
                    <xsl:value-of select="."/>
                </h3>
                <h3>
                    <xsl:value-of select="name"/>- 
                    <xsl:value-of select="url"/></h3>
                <p>
                    <xsl:value-of select="overview"/>
                </p>
            </div>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>