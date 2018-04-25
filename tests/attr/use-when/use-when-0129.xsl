<?xml version="1.0"?> 

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">


  <!-- PURPOSE: test that the statically declared variable is allowed in an excluded section. -->
  <?spec xslt#conditional-inclusion?>
  <xsl:variable name="xx" select="2" static="yes"/>  
  <xsl:template match="*" use-when="some $x in (1,2,3) satisfies $x=$xx">
    <p>value matched ok</p>
  </xsl:template>

</xsl:stylesheet>