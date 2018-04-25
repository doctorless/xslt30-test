<?xml version="1.0" encoding="UTF-8"?>
<t:transform xmlns:my="http://www.schemanodetest.example.com/ns/various"
             xmlns:t="http://www.w3.org/1999/XSL/Transform"
             exclude-result-prefixes="my"
             version="2.0">
<!-- Purpose: Use xsl:copy inside an xsl:for-each that selects schema-attribute($arg).-->

   <t:import-schema namespace="http://www.schemanodetest.example.com/ns/various"
                    schema-location="variousTypesNodeTest.xsd"/>

   <t:template match="/my:userNode">
	     <out>
         <t:text>
</t:text>
         <t:for-each select="schema-attribute(my:specialPart),schema-attribute(my:listParts)">
			         <t:element name="E{position()}">
				           <t:copy/>
			         </t:element>
			         <t:text>
</t:text>
		       </t:for-each>
      </out>
   </t:template>
</t:transform>
