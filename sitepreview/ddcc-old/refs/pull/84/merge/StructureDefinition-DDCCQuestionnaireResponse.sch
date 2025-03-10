<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile SDCQuestionnaireResponse
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:QuestionnaireResponse</sch:title>
    <sch:rule context="f:QuestionnaireResponse">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/questionnaireresponse-completionMode']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/questionnaireresponse-completionMode': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>QuestionnaireResponse.meta</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:meta">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>QuestionnaireResponse.implicitRules</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:implicitRules">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>QuestionnaireResponse.language</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:language">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>QuestionnaireResponse.text</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>QuestionnaireResponse.extension</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>QuestionnaireResponse.modifierExtension</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>QuestionnaireResponse.identifier</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:identifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>QuestionnaireResponse.basedOn</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:basedOn">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>QuestionnaireResponse.partOf</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:partOf">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:QuestionnaireResponse/f:questionnaire</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:questionnaire">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/display']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/display': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>QuestionnaireResponse.questionnaire</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:questionnaire">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>QuestionnaireResponse.questionnaire.extension</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:questionnaire/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>QuestionnaireResponse.status</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:status">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>QuestionnaireResponse.subject</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:subject">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>QuestionnaireResponse.encounter</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:encounter">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>QuestionnaireResponse.authored</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:authored">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>QuestionnaireResponse.author</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:author">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>QuestionnaireResponse.source</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:source">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:QuestionnaireResponse/f:item</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:item">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemMedia']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemMedia': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>QuestionnaireResponse.item</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:item">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="not(exists(f:answer) and exists(f:item))">Nested item can't be beneath both item and answer (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>QuestionnaireResponse.item.extension</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:item/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>QuestionnaireResponse.item.modifierExtension</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:item/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>QuestionnaireResponse.item.linkId</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:item/f:linkId">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>QuestionnaireResponse.item.definition</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:item/f:definition">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>QuestionnaireResponse.item.text</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:item/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:QuestionnaireResponse/f:item/f:answer</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:item/f:answer">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemAnswerMedia']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemAnswerMedia': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/ordinalValue']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/ordinalValue': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>QuestionnaireResponse.item.answer</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:item/f:answer">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>QuestionnaireResponse.item.answer.extension</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:item/f:answer/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>QuestionnaireResponse.item.answer.modifierExtension</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:item/f:answer/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>QuestionnaireResponse.item.answer.value[x] 1</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:item/f:answer/f:value[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>QuestionnaireResponse.item.answer.item</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:item/f:answer/f:item">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>QuestionnaireResponse.item.item</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:item/f:item">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
