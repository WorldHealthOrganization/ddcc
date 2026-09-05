<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile ImmunizationRecommendation
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:ImmunizationRecommendation</sch:title>
    <sch:rule context="f:ImmunizationRecommendation">
      <sch:assert test="count(f:recommendation) &lt;= 1">recommendation: maximum cardinality of 'recommendation' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.meta</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:meta">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.implicitRules</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:implicitRules">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.language</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:language">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.text</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.extension</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.modifierExtension</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.identifier</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:identifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.patient</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:patient">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.date</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:date">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.authority</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:authority">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ImmunizationRecommendation/f:recommendation</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation">
      <sch:assert test="count(f:vaccineCode) &gt;= 1">vaccineCode: minimum cardinality of 'vaccineCode' is 1</sch:assert>
      <sch:assert test="count(f:vaccineCode) &lt;= 1">vaccineCode: maximum cardinality of 'vaccineCode' is 1</sch:assert>
      <sch:assert test="count(f:dateCriterion) &gt;= 1">dateCriterion: minimum cardinality of 'dateCriterion' is 1</sch:assert>
      <sch:assert test="count(f:dateCriterion) &lt;= 1">dateCriterion: maximum cardinality of 'dateCriterion' is 1</sch:assert>
      <sch:assert test="count(f:supportingImmunization) &gt;= 1">supportingImmunization: minimum cardinality of 'supportingImmunization' is 1</sch:assert>
      <sch:assert test="count(f:supportingImmunization) &lt;= 1">supportingImmunization: maximum cardinality of 'supportingImmunization' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:vaccineCode) or exists(f:targetDisease)">One of vaccineCode or targetDisease SHALL be present (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.extension</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.modifierExtension</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ImmunizationRecommendation/f:recommendation/f:vaccineCode</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:vaccineCode">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.vaccineCode</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:vaccineCode">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.vaccineCode.extension</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:vaccineCode/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.vaccineCode.coding</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:vaccineCode/f:coding">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ImmunizationRecommendation/f:recommendation/f:vaccineCode/f:coding</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:vaccineCode/f:coding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.vaccineCode.coding.extension</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:vaccineCode/f:coding/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.vaccineCode.coding.system</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:vaccineCode/f:coding/f:system">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.vaccineCode.coding.version</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:vaccineCode/f:coding/f:version">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.vaccineCode.coding.code</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:vaccineCode/f:coding/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.vaccineCode.coding.display</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:vaccineCode/f:coding/f:display">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.vaccineCode.coding.userSelected</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:vaccineCode/f:coding/f:userSelected">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.vaccineCode.text</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:vaccineCode/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.targetDisease</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:targetDisease">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.contraindicatedVaccineCode</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:contraindicatedVaccineCode">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.forecastStatus</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:forecastStatus">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.forecastReason</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:forecastReason">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.dateCriterion</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:dateCriterion">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.dateCriterion.extension</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:dateCriterion/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.dateCriterion.modifierExtension</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:dateCriterion/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.dateCriterion.code</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:dateCriterion/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.dateCriterion.value</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:dateCriterion/f:value">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.description</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:description">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.series</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:series">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.doseNumber[x] 1</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:doseNumber[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.seriesDoses[x] 1</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:seriesDoses[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.supportingImmunization</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:supportingImmunization">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ImmunizationRecommendation.recommendation.supportingPatientInformation</sch:title>
    <sch:rule context="f:ImmunizationRecommendation/f:recommendation/f:supportingPatientInformation">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
