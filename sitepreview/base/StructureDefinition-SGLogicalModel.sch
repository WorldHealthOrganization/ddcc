<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile StructureDefinition
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:StructureDefinition</sch:title>
    <sch:rule context="f:StructureDefinition">
      <sch:assert test="count(f:title) &gt;= 1">title: minimum cardinality of 'title' is 1</sch:assert>
      <sch:assert test="count(f:publisher) &gt;= 1">publisher: minimum cardinality of 'publisher' is 1</sch:assert>
      <sch:assert test="count(f:description) &gt;= 1">description: minimum cardinality of 'description' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:StructureDefinition/f:differential/f:element</sch:title>
    <sch:rule context="f:StructureDefinition/f:differential/f:element">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:path) &gt;= 1">path: minimum cardinality of 'path' is 1</sch:assert>
      <sch:assert test="count(f:path) &lt;= 1">path: maximum cardinality of 'path' is 1</sch:assert>
      <sch:assert test="count(f:sliceName) &lt;= 1">sliceName: maximum cardinality of 'sliceName' is 1</sch:assert>
      <sch:assert test="count(f:sliceIsConstraining) &lt;= 1">sliceIsConstraining: maximum cardinality of 'sliceIsConstraining' is 1</sch:assert>
      <sch:assert test="count(f:label) &lt;= 1">label: maximum cardinality of 'label' is 1</sch:assert>
      <sch:assert test="count(f:slicing) &lt;= 1">slicing: maximum cardinality of 'slicing' is 1</sch:assert>
      <sch:assert test="count(f:short) &gt;= 1">short: minimum cardinality of 'short' is 1</sch:assert>
      <sch:assert test="count(f:short) &lt;= 1">short: maximum cardinality of 'short' is 1</sch:assert>
      <sch:assert test="count(f:definition) &gt;= 1">definition: minimum cardinality of 'definition' is 1</sch:assert>
      <sch:assert test="count(f:definition) &lt;= 1">definition: maximum cardinality of 'definition' is 1</sch:assert>
      <sch:assert test="count(f:comment) &lt;= 1">comment: maximum cardinality of 'comment' is 1</sch:assert>
      <sch:assert test="count(f:requirements) &lt;= 1">requirements: maximum cardinality of 'requirements' is 1</sch:assert>
      <sch:assert test="count(f:min) &lt;= 1">min: maximum cardinality of 'min' is 1</sch:assert>
      <sch:assert test="count(f:max) &lt;= 1">max: maximum cardinality of 'max' is 1</sch:assert>
      <sch:assert test="count(f:base) &lt;= 1">base: maximum cardinality of 'base' is 1</sch:assert>
      <sch:assert test="count(f:contentReference) &lt;= 1">contentReference: maximum cardinality of 'contentReference' is 1</sch:assert>
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:defaultValue[x]) &lt;= 1">defaultValue[x]: maximum cardinality of 'defaultValue[x]' is 1</sch:assert>
      <sch:assert test="count(f:meaningWhenMissing) &lt;= 1">meaningWhenMissing: maximum cardinality of 'meaningWhenMissing' is 1</sch:assert>
      <sch:assert test="count(f:orderMeaning) &lt;= 1">orderMeaning: maximum cardinality of 'orderMeaning' is 1</sch:assert>
      <sch:assert test="count(f:fixed[x]) &lt;= 1">fixed[x]: maximum cardinality of 'fixed[x]' is 1</sch:assert>
      <sch:assert test="count(f:pattern[x]) &lt;= 1">pattern[x]: maximum cardinality of 'pattern[x]' is 1</sch:assert>
      <sch:assert test="count(f:minValue[x]) &lt;= 1">minValue[x]: maximum cardinality of 'minValue[x]' is 1</sch:assert>
      <sch:assert test="count(f:maxValue[x]) &lt;= 1">maxValue[x]: maximum cardinality of 'maxValue[x]' is 1</sch:assert>
      <sch:assert test="count(f:maxLength) &lt;= 1">maxLength: maximum cardinality of 'maxLength' is 1</sch:assert>
      <sch:assert test="count(f:mustSupport) &lt;= 1">mustSupport: maximum cardinality of 'mustSupport' is 1</sch:assert>
      <sch:assert test="count(f:isModifier) &lt;= 1">isModifier: maximum cardinality of 'isModifier' is 1</sch:assert>
      <sch:assert test="count(f:isModifierReason) &lt;= 1">isModifierReason: maximum cardinality of 'isModifierReason' is 1</sch:assert>
      <sch:assert test="count(f:isSummary) &lt;= 1">isSummary: maximum cardinality of 'isSummary' is 1</sch:assert>
      <sch:assert test="count(f:binding) &lt;= 1">binding: maximum cardinality of 'binding' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:StructureDefinition/f:differential/f:element/f:code</sch:title>
    <sch:rule context="f:StructureDefinition/f:differential/f:element/f:code">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:StructureDefinition/f:differential/f:element/f:slicing</sch:title>
    <sch:rule context="f:StructureDefinition/f:differential/f:element/f:slicing">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:description) &lt;= 1">description: maximum cardinality of 'description' is 1</sch:assert>
      <sch:assert test="count(f:ordered) &lt;= 1">ordered: maximum cardinality of 'ordered' is 1</sch:assert>
      <sch:assert test="count(f:rules) &gt;= 1">rules: minimum cardinality of 'rules' is 1</sch:assert>
      <sch:assert test="count(f:rules) &lt;= 1">rules: maximum cardinality of 'rules' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:StructureDefinition/f:differential/f:element/f:slicing/f:discriminator</sch:title>
    <sch:rule context="f:StructureDefinition/f:differential/f:element/f:slicing/f:discriminator">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:path) &gt;= 1">path: minimum cardinality of 'path' is 1</sch:assert>
      <sch:assert test="count(f:path) &lt;= 1">path: maximum cardinality of 'path' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:StructureDefinition/f:differential/f:element/f:base</sch:title>
    <sch:rule context="f:StructureDefinition/f:differential/f:element/f:base">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:path) &gt;= 1">path: minimum cardinality of 'path' is 1</sch:assert>
      <sch:assert test="count(f:path) &lt;= 1">path: maximum cardinality of 'path' is 1</sch:assert>
      <sch:assert test="count(f:min) &gt;= 1">min: minimum cardinality of 'min' is 1</sch:assert>
      <sch:assert test="count(f:min) &lt;= 1">min: maximum cardinality of 'min' is 1</sch:assert>
      <sch:assert test="count(f:max) &gt;= 1">max: minimum cardinality of 'max' is 1</sch:assert>
      <sch:assert test="count(f:max) &lt;= 1">max: maximum cardinality of 'max' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:StructureDefinition/f:differential/f:element/f:type</sch:title>
    <sch:rule context="f:StructureDefinition/f:differential/f:element/f:type">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:versioning) &lt;= 1">versioning: maximum cardinality of 'versioning' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:StructureDefinition/f:differential/f:element/f:example</sch:title>
    <sch:rule context="f:StructureDefinition/f:differential/f:element/f:example">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:label) &gt;= 1">label: minimum cardinality of 'label' is 1</sch:assert>
      <sch:assert test="count(f:label) &lt;= 1">label: maximum cardinality of 'label' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:StructureDefinition/f:differential/f:element/f:constraint</sch:title>
    <sch:rule context="f:StructureDefinition/f:differential/f:element/f:constraint">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:key) &gt;= 1">key: minimum cardinality of 'key' is 1</sch:assert>
      <sch:assert test="count(f:key) &lt;= 1">key: maximum cardinality of 'key' is 1</sch:assert>
      <sch:assert test="count(f:requirements) &lt;= 1">requirements: maximum cardinality of 'requirements' is 1</sch:assert>
      <sch:assert test="count(f:severity) &gt;= 1">severity: minimum cardinality of 'severity' is 1</sch:assert>
      <sch:assert test="count(f:severity) &lt;= 1">severity: maximum cardinality of 'severity' is 1</sch:assert>
      <sch:assert test="count(f:human) &gt;= 1">human: minimum cardinality of 'human' is 1</sch:assert>
      <sch:assert test="count(f:human) &lt;= 1">human: maximum cardinality of 'human' is 1</sch:assert>
      <sch:assert test="count(f:expression) &lt;= 1">expression: maximum cardinality of 'expression' is 1</sch:assert>
      <sch:assert test="count(f:xpath) &lt;= 1">xpath: maximum cardinality of 'xpath' is 1</sch:assert>
      <sch:assert test="count(f:source) &lt;= 1">source: maximum cardinality of 'source' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:StructureDefinition/f:differential/f:element/f:binding</sch:title>
    <sch:rule context="f:StructureDefinition/f:differential/f:element/f:binding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:strength) &gt;= 1">strength: minimum cardinality of 'strength' is 1</sch:assert>
      <sch:assert test="count(f:strength) &lt;= 1">strength: maximum cardinality of 'strength' is 1</sch:assert>
      <sch:assert test="count(f:description) &lt;= 1">description: maximum cardinality of 'description' is 1</sch:assert>
      <sch:assert test="count(f:valueSet) &lt;= 1">valueSet: maximum cardinality of 'valueSet' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:StructureDefinition/f:differential/f:element/f:mapping</sch:title>
    <sch:rule context="f:StructureDefinition/f:differential/f:element/f:mapping">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:identity) &gt;= 1">identity: minimum cardinality of 'identity' is 1</sch:assert>
      <sch:assert test="count(f:identity) &lt;= 1">identity: maximum cardinality of 'identity' is 1</sch:assert>
      <sch:assert test="count(f:language) &lt;= 1">language: maximum cardinality of 'language' is 1</sch:assert>
      <sch:assert test="count(f:map) &gt;= 1">map: minimum cardinality of 'map' is 1</sch:assert>
      <sch:assert test="count(f:map) &lt;= 1">map: maximum cardinality of 'map' is 1</sch:assert>
      <sch:assert test="count(f:comment) &lt;= 1">comment: maximum cardinality of 'comment' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
