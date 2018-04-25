<?xml version="1.0" encoding="UTF-8"?>
<t:transform xmlns="http://www.w3.org/1999/xhtml"
             xmlns:t="http://www.w3.org/1999/XSL/Transform"
             version="2.0">

   <t:output method="text" include-content-type="yes"/>
   <!-- Purpose: Test Text output DOES NOT output a meta tag when include-content-type is specified and 
                head element is present  -->

   <t:template match="/">
      <html>
         <head>the head </head>
         <body>There should not be an automatically generated meta tag because the output method is text</body>
      </html>
   </t:template>
</t:transform>
