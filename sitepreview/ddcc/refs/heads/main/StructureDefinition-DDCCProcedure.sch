<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile ProcedureUvIps
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Procedure</sch:title>
    <sch:rule context="f:Procedure">
      <sch:assert test="count(f:extension[@url = 'http://smart.who.int/ddcc/StructureDefinition/DDCCCountryOfEvent']) &gt;= 1">extension with URL = 'http://smart.who.int/ddcc/StructureDefinition/DDCCCountryOfEvent': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://smart.who.int/ddcc/StructureDefinition/DDCCCountryOfEvent']) &lt;= 1">extension with URL = 'http://smart.who.int/ddcc/StructureDefinition/DDCCCountryOfEvent': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:report) &gt;= 1">report: minimum cardinality of 'report' is 1</sch:assert>
      <sch:assert test="count(f:report) &lt;= 1">report: maximum cardinality of 'report' is 1</sch:assert>
      <sch:assert test="count(f:usedReference) &gt;= 1">usedReference: minimum cardinality of 'usedReference' is 1</sch:assert>
      <sch:assert test="count(f:usedReference) &lt;= 1">usedReference: maximum cardinality of 'usedReference' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
