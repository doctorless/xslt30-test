<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

<?spec fo#func-substring?>
  <!-- PURPOSE -->
  <xsl:template match="doc">
    <out>
      <xsl:value-of select='substring("12345", -42, 1 div 0e0)'/>
    </out>
  </xsl:template>
 
</xsl:stylesheet>
