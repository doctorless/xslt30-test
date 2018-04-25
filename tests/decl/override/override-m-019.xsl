<xsl:package name="http://www.w3.org/xslt30tests/override-m-019" package-version="1.0.0"
  version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:p="http://www.w3.org/xslt30tests/override-base-m-001" declared-modes="no"
  exclude-result-prefixes="xs p">

  <xsl:use-package name="http://www.w3.org/xslt30tests/override-base-m-001" package-version="1.0.0">

    <xsl:override>
      <xsl:template match="X" mode="m3">
        <x1>
          <xsl:apply-templates mode="#current">
            <xsl:with-param name="T" select="55" tunnel="true"/>
          </xsl:apply-templates>
        </x1>
      </xsl:template>
   <!-- </xsl:override>
    <xsl:override>-->
      <xsl:template match="B" mode="m3">
        <xsl:param name="T" tunnel="true" required="true"/>
        <b1 T="{$T}">
          <xsl:next-match/>
        </b1>
      </xsl:template>
    </xsl:override>

  </xsl:use-package>

  <xsl:variable name="in">
        <X>
          <A>
            <B>22</B>
          </A>
        </X>
  </xsl:variable>

  <xsl:template name="main">
    <out>
      <xsl:apply-templates select="$in" mode="m3"/>
    </out>
  </xsl:template>


</xsl:package>
