<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile SDCQuestionnairePopulateExpression
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Questionnaire</sch:title>
    <sch:rule context="f:Questionnaire">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/designNote']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/designNote': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.meta</sch:title>
    <sch:rule context="f:Questionnaire/f:meta">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.implicitRules</sch:title>
    <sch:rule context="f:Questionnaire/f:implicitRules">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.language</sch:title>
    <sch:rule context="f:Questionnaire/f:language">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.text</sch:title>
    <sch:rule context="f:Questionnaire/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.extension</sch:title>
    <sch:rule context="f:Questionnaire/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.modifierExtension</sch:title>
    <sch:rule context="f:Questionnaire/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.url</sch:title>
    <sch:rule context="f:Questionnaire/f:url">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.identifier</sch:title>
    <sch:rule context="f:Questionnaire/f:identifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.version</sch:title>
    <sch:rule context="f:Questionnaire/f:version">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.name</sch:title>
    <sch:rule context="f:Questionnaire/f:name">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.title</sch:title>
    <sch:rule context="f:Questionnaire/f:title">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.derivedFrom</sch:title>
    <sch:rule context="f:Questionnaire/f:derivedFrom">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.status</sch:title>
    <sch:rule context="f:Questionnaire/f:status">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.experimental</sch:title>
    <sch:rule context="f:Questionnaire/f:experimental">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.subjectType</sch:title>
    <sch:rule context="f:Questionnaire/f:subjectType">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.date</sch:title>
    <sch:rule context="f:Questionnaire/f:date">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.publisher</sch:title>
    <sch:rule context="f:Questionnaire/f:publisher">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.contact</sch:title>
    <sch:rule context="f:Questionnaire/f:contact">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.description</sch:title>
    <sch:rule context="f:Questionnaire/f:description">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.useContext</sch:title>
    <sch:rule context="f:Questionnaire/f:useContext">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.jurisdiction</sch:title>
    <sch:rule context="f:Questionnaire/f:jurisdiction">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.purpose</sch:title>
    <sch:rule context="f:Questionnaire/f:purpose">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.copyright</sch:title>
    <sch:rule context="f:Questionnaire/f:copyright">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.approvalDate</sch:title>
    <sch:rule context="f:Questionnaire/f:approvalDate">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.lastReviewDate</sch:title>
    <sch:rule context="f:Questionnaire/f:lastReviewDate">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.effectivePeriod</sch:title>
    <sch:rule context="f:Questionnaire/f:effectivePeriod">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.code</sch:title>
    <sch:rule context="f:Questionnaire/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Questionnaire/f:item</sch:title>
    <sch:rule context="f:Questionnaire/f:item">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/designNote']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/designNote': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/questionnaire-unit']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/questionnaire-unit': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-candidateExpression']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-candidateExpression': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/questionnaire-hidden']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/questionnaire-hidden': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-isSubject']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-isSubject': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item</sch:title>
    <sch:rule context="f:Questionnaire/f:item">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="not((f:type/@value='group' and not(f:item)) or (f:type/@value='display' and f:item))">Group items must have nested items, display items cannot have nested items (inherited)</sch:assert>
      <sch:assert test="not(f:type/@value='display' and f:code)">Display items cannot have a &quot;code&quot; asserted (inherited)</sch:assert>
      <sch:assert test="not(f:answerValueSet and f:answerOption)">A question cannot have both answerOption and answerValueSet (inherited)</sch:assert>
      <sch:assert test="f:type/@value=('choice','open-choice','decimal','integer','date','dateTime','time','string','quantity',') or not(f:answerOption or f:answerValueSet)">Only 'choice' and 'open-choice' items can have answerValueSet (inherited)</sch:assert>
      <sch:assert test="not(f:type/@value='display' and (f:required or f:repeats))">Required and repeat aren't permitted for display items (inherited)</sch:assert>
      <sch:assert test="not(f:type/@value=('group', 'display') and f:*[starts-with(local-name(.), 'initial')])">Initial values can't be specified for groups or display items (inherited)</sch:assert>
      <sch:assert test="not(f:type/@value=('group', 'display') and f:*[starts-with(local-name(.), 'initial')])">Read-only can't be specified for &quot;display&quot; items (inherited)</sch:assert>
      <sch:assert test="f:type/@value=('boolean', 'decimal', 'integer', 'open-choice', 'string', 'text', 'url') or not(f:maxLength)">Maximum length can only be declared for simple question types (inherited)</sch:assert>
      <sch:assert test="not(f:answerOption) or not(count(f:*[starts-with(local-name(.), 'initial')]))">If one or more answerOption is present, initial[x] must be missing (inherited)</sch:assert>
      <sch:assert test="not(f:answerOption) or not(count(f:*[starts-with(local-name(.), 'initial')]))">If there are more than one enableWhen, enableBehavior must be specified (inherited)</sch:assert>
      <sch:assert test="f:repeats/@value='true' or count(f:initial)&lt;=1">Can only have multiple initial values for repeating items (inherited)</sch:assert>
      <sch:assert test="not(exists(f:answerConstraint)) or exists(f:answerOption) or exists(f:answerValueSet) or exists(f:extension[@url='http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-answerExpression'])">Can only have answerConstraint if answerOption, answerValueset, or answerExpression are present. (inherited)</sch:assert>
      <sch:assert test="f:extension[@url='http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-answerExpression'] and (not(f:answerOption) and not(f:answerValueSet))">An item cannot have an answerExpression if answerOption or answerValueSet is already present. (inherited)</sch:assert>
      <sch:assert test="not(exists(f:initial) and exists(f:extension[@url='http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression']))">An item cannot have both initial.value and initialExpression (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.extension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Questionnaire/f:item/f:extension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:extension">
      <sch:assert test="count(f:extension[@url = 'label']) &gt;= 1">extension with URL = 'label': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'label']) &lt;= 1">extension with URL = 'label': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'expression']) &gt;= 1">extension with URL = 'expression': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'expression']) &lt;= 1">extension with URL = 'expression': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.extension.extension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:extension/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.extension.extension.extension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:extension/f:extension/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.extension.extension.value[x] 1</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:extension/f:extension/f:value[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.extension.value[x] 1</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:extension/f:value[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.modifierExtension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.linkId</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:linkId">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.definition</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:definition">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.code</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.prefix</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:prefix">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.text</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.type</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.enableWhen</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:enableWhen">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="f:operator/@value != 'exists' or exists(f:answerBoolean)">If the operator is 'exists', the value must be a boolean (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.enableWhen.extension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:enableWhen/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.enableWhen.modifierExtension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:enableWhen/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.enableWhen.question</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:enableWhen/f:question">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.enableWhen.operator</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:enableWhen/f:operator">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.enableWhen.answer[x] 1</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:enableWhen/f:answer[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.enableBehavior</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:enableBehavior">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.required</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:required">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.repeats</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:repeats">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.readOnly</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:readOnly">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.maxLength</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:maxLength">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.answerValueSet</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:answerValueSet">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.answerOption</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:answerOption">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.answerOption.extension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:answerOption/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.answerOption.modifierExtension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:answerOption/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.answerOption.value[x] 1</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:answerOption/f:value[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.answerOption.initialSelected</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:answerOption/f:initialSelected">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.initial</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:initial">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.initial.extension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:initial/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.initial.modifierExtension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:initial/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.initial.value[x] 1</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:initial/f:value[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Questionnaire/f:item/f:item</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/questionnaire-hidden']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/questionnaire-hidden': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:linkId) &gt;= 1">linkId: minimum cardinality of 'linkId' is 1</sch:assert>
      <sch:assert test="count(f:linkId) &lt;= 1">linkId: maximum cardinality of 'linkId' is 1</sch:assert>
      <sch:assert test="count(f:definition) &lt;= 1">definition: maximum cardinality of 'definition' is 1</sch:assert>
      <sch:assert test="count(f:prefix) &lt;= 1">prefix: maximum cardinality of 'prefix' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:enableBehavior) &lt;= 1">enableBehavior: maximum cardinality of 'enableBehavior' is 1</sch:assert>
      <sch:assert test="count(f:required) &lt;= 1">required: maximum cardinality of 'required' is 1</sch:assert>
      <sch:assert test="count(f:repeats) &lt;= 1">repeats: maximum cardinality of 'repeats' is 1</sch:assert>
      <sch:assert test="count(f:readOnly) &lt;= 1">readOnly: maximum cardinality of 'readOnly' is 1</sch:assert>
      <sch:assert test="count(f:maxLength) &lt;= 1">maxLength: maximum cardinality of 'maxLength' is 1</sch:assert>
      <sch:assert test="count(f:answerValueSet) &lt;= 1">answerValueSet: maximum cardinality of 'answerValueSet' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.extension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.modifierExtension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.linkId</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:linkId">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.definition</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:definition">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.code</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.prefix</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:prefix">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.text</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.type</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Questionnaire/f:item/f:item/f:enableWhen</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:enableWhen">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:question) &gt;= 1">question: minimum cardinality of 'question' is 1</sch:assert>
      <sch:assert test="count(f:question) &lt;= 1">question: maximum cardinality of 'question' is 1</sch:assert>
      <sch:assert test="count(f:operator) &gt;= 1">operator: minimum cardinality of 'operator' is 1</sch:assert>
      <sch:assert test="count(f:operator) &lt;= 1">operator: maximum cardinality of 'operator' is 1</sch:assert>
      <sch:assert test="count(f:answer[x]) &gt;= 1">answer[x]: minimum cardinality of 'answer[x]' is 1</sch:assert>
      <sch:assert test="count(f:answer[x]) &lt;= 1">answer[x]: maximum cardinality of 'answer[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.enableWhen</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:enableWhen">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="f:operator/@value != 'exists' or exists(f:answerBoolean)">If the operator is 'exists', the value must be a boolean (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.enableWhen.extension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:enableWhen/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.enableWhen.modifierExtension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:enableWhen/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.enableWhen.question</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:enableWhen/f:question">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.enableWhen.operator</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:enableWhen/f:operator">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.enableWhen.answer[x] 1</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:enableWhen/f:answer[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.enableBehavior</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:enableBehavior">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.required</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:required">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.repeats</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:repeats">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.readOnly</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:readOnly">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.maxLength</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:maxLength">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.answerValueSet</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:answerValueSet">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Questionnaire/f:item/f:item/f:answerOption</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:answerOption">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:initialSelected) &lt;= 1">initialSelected: maximum cardinality of 'initialSelected' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.answerOption</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:answerOption">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.answerOption.extension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:answerOption/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.answerOption.modifierExtension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:answerOption/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.answerOption.value[x] 1</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:answerOption/f:value[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.answerOption.initialSelected</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:answerOption/f:initialSelected">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Questionnaire/f:item/f:item/f:initial</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:initial">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.initial</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:initial">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.initial.extension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:initial/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.initial.modifierExtension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:initial/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.initial.value[x] 1</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:initial/f:value[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.item</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:item">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
