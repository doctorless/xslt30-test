<?xml version="1.0" encoding="UTF-8"?>
<t:transform xmlns:t="http://www.w3.org/1999/XSL/Transform" version="3.0"
   expand-text="1">
   <!-- Purpose: next-match across package boundaries -->
   
   <t:use-package name="http://xslt-tests/next-match-036-lib">
      <t:override>
         <t:template match="tag" mode="m">
            <tag2><t:call-template name="ttt"/></tag2>
         </t:template>
         
         <t:template match="text()" mode="m">[{.}]</t:template>
      </t:override>
   </t:use-package>
   
   <t:template name="ttt">
      <ttt><t:next-match/></ttt>
   </t:template>
   
   
      
   

</t:transform>
