# Home - WHO Digital Documentation of COVID-19 Certificates (DDCC) v1.0.0

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ddcc/ImplementationGuide/who.ddcc | *Version*:1.0.0 |
| Draft as of 2022-03-22 | *Computable Name*:DDCC |

 This WHO Digital Documentation of COVID-19 Certificates (DDCC) Implementation Guide details how to use Health Level 7 (HL7) Fast Healthcare Interoperability Resources (FHIR) for consistent digital representation of COVID-19 certificates and interoperability. 

> This release of the implementation guide is based on the content at [https://github.com/WorldHealthOrganization/ddcc/tree/v1.0.0](https://github.com/WorldHealthOrganization/ddcc/tree/v1.0.0)**This implementation guide is undergoing continuous development and implementers should consider the following:**
* The package name `who.int` is maintained for compatibility but is expected to change for future releases.
* Some artifacts will change their names to follow a consistent naming convention.
* There are known issues in some artifacts.

### Summary

 This implementation guide contains a standards-compliant specifications for the DDCC: Vaccination Status and Test Result technical specifications and guidance documents. It explicitly encodes computer-interoperable logic, including data models, terminologies, and logic expressions, in a computable language to support implementation of vaccination and test result use cases by Member States. 

 To facilitate implementation of effective and interoperable digital solutions: 
* The [DDCC: Vaccination Status (DDCC:VS) technical specifications and implementation guidance ](https://www.who.int/publications/i/item/WHO-2019-nCoV-Digital_certificates-vaccination-2021.1)was issued for vaccination certificates for the purposes of continuity of care and proof of vaccination.
* The [DDCC: Test Result (DDCC:TR) technical specifications and implementation guidance](https://www.who.int/publications/i/item/WHO-2019-nCoV-Digital_certificates_diagnostic_test_results-2022.1) is being issued for test result certificates that attests to: (a) the fact that an individual has been tested for SARS-CoV-2, and (b) the result of that SARS-CoV-2 diagnostic test.
 

 The DDCC documents contain overviews of high-level use cases for digital COVID-19 certificates, including: 
* workflows;
* core data elements mapped to standard code systems;
* functional and non-functional requirements;
* an overview of digitally signing and verifying a certificate with public key infrastructure (PKI) technology;
* implementation guidance regarding ethical considerations, privacy and data protection principles;
* national governance considerations;
* and this linked FHIR Implementation Guide for the DDCC scope. 
 

 Supporting guidance, recommendations, resources, and standards are included in the [References](references.md) and [Dependencies](dependencies.md). 

### About this implementation guide

 This implementation guide is broken into the following levels of [knowledge representation](http://hl7.org/fhir/uv/cpg/2019Sep/documentation-approach.html): 
* [Home](index.md) Contains references to the guidance, guidelines, policies and recommendations underpinning this implementation guide.
* [Business Requirements](requirements.md) Contains the requirements for this implementation guide including the definition of key concepts, use cases, and a data dictionary. 
* [Data Models and Exchange](data_exchange.md) Contains the data models and data exchange protocols with actors and transactions defined.
* [Deployment Guidance ](deployment.md) Contains relevant technical specifications and guidance, testing resources, reference implementation materials, and supporting guidance for adaptation to local contexts.
 

### Disclaimer

 The specification herewith documented is a demo working specification and may not be used for any implementation purposes. This draft is provided without warranty of completeness or consistency and the official publication supersedes this draft. No liability can be inferred from the use or misuse of this specification or its consequences. 



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "who.ddcc",
  "url" : "http://smart.who.int/ddcc/ImplementationGuide/who.ddcc",
  "version" : "1.0.0",
  "name" : "DDCC",
  "title" : "WHO Digital Documentation of COVID-19 Certificates (DDCC)",
  "status" : "draft",
  "date" : "2022-03-22",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "This WHO Digital Documentation of COVID-19 Certificates (DDCC) Implementation Guide details how to use Health Level 7 (HL7) Fast Healthcare Interoperability Resources (FHIR) for consistent digital representation of COVID-19 certificates and interoperability.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "packageId" : "who.ddcc",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.3.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.3.0"
  },
  {
    "id" : "hl7_fhir_uv_ips",
    "uri" : "http://hl7.org/fhir/uv/ips/ImplementationGuide/hl7.fhir.uv.ips",
    "packageId" : "hl7.fhir.uv.ips",
    "version" : "1.1.0"
  },
  {
    "id" : "hl7_fhir_uv_ipa",
    "uri" : "http://hl7.org/fhir/uv/ipa/ImplementationGuide/hl7.fhir.uv.ipa",
    "packageId" : "hl7.fhir.uv.ipa",
    "version" : "1.0.0"
  },
  {
    "id" : "hl7_fhir_uv_sdc",
    "uri" : "http://hl7.org/fhir/uv/sdc/ImplementationGuide/hl7.fhir.uv.sdc",
    "packageId" : "hl7.fhir.uv.sdc",
    "version" : "3.0.0"
  },
  {
    "id" : "iheitimhd",
    "uri" : "https://profiles.ihe.net/ITI/MHD/ImplementationGuide/ihe.iti.mhd",
    "packageId" : "ihe.iti.mhd",
    "version" : "4.2.2"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2021+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "CI Build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://smart.who.int/ddcc/DIVOC"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://ec.europa.eu/health/documents/community-register/html/"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://smart.who.int/ddcc/ICAOV1"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://id.who.int/icd11/mms"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "http://smart.who.int/ddcc/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2021+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "CI Build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://smart.who.int/ddcc/DIVOC"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://ec.europa.eu/health/documents/community-register/html/"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://smart.who.int/ddcc/ICAOV1"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://id.who.int/icd11/mms"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "http://smart.who.int/ddcc/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Library"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Library-AnyDosePass-1.0.0.html"
      }],
      "reference" : {
        "reference" : "Library/AnyDosePass-1.0.0"
      },
      "name" : "AnyDosePass",
      "description" : "DDCC-compliant rule to evaluate if patients have a completed immunization schedule or just a single dose",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical:abstract"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-CertDIVOC.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/CertDIVOC"
      },
      "name" : "Certificate - DIVOC Verifiable Credential Logical Model",
      "description" : "Data elements for the DIVOC Core Data Set.\n\nThe official DIVOC documentation appears to be at <https://divoc.digit.org>. However, this does not include a full list of elements included in DIVOC certificates.\n\nThere is a JSON-LD context referenced in DIVOC certificate examples (`https://cowin.gov.in/credentials/vaccination/v1`), which would provide some element-level information, but this URL does not resolve. There is a copy of this JSON-LD context at <https://github.com/egovernments/DIVOC/blob/main/vaccination-context/vaccination-context.js>.\n\nIt was not possible to find any online documentation regarding DIVOC proof of testing. Information on this was provided by the DIVOC team via email.\n\nSome element descriptions in this logical model provide details that are not in publicly available DIVOC documentation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical:abstract"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-CertICAO.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/CertICAO"
      },
      "name" : "Certificate - ICAO Visible Digital Seal Logical Model",
      "description" : "Data elements for the ICAO Visible Digital Seal Core Data Set. Based on <https://www.icao.int/vdsnc-spec> as of 2023-02-02.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical:abstract"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-CertSHC.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/CertSHC"
      },
      "name" : "Certificate - Smart Health Card's JSon Web Token Logical Model",
      "description" : "Data elements for the Smart Health Cards Core Data Set.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-who-ddcc-map-cvx-icd11-brands.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/who-ddcc-map-cvx-icd11-brands"
      },
      "name" : "ConceptMap from CVX to ICD-11 for Brands",
      "description" : "Mapping from CVX to ICD-11 for COVID-19 Brands",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-who-ddcc-map-cvx-icd11-vaccines.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/who-ddcc-map-cvx-icd11-vaccines"
      },
      "name" : "ConceptMap from CVX to ICD-11 for Vaccines",
      "description" : "Mapping from CVX to ICD-11 for COVID-19 Vaccines",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-who-ddcc-map-divoc-icd11-vaccines.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/who-ddcc-map-divoc-icd11-vaccines"
      },
      "name" : "ConceptMap from DIVOC to ICD-11 for Vaccines",
      "description" : "Mapping from DIVOC to ICD-11 for COVID-19 Vaccines",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-who-ddcc-map-eudcc-icd11-vaccines.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/who-ddcc-map-eudcc-icd11-vaccines"
      },
      "name" : "ConceptMap from EU DCC to ICD-11 for Vaccines",
      "description" : "Mapping from EU DCC to ICD-11 for COVID-19 Vaccines",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-who-ddcc-map-icao-icd11-vaccines.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/who-ddcc-map-icao-icd11-vaccines"
      },
      "name" : "ConceptMap from ICAO to ICD-11 for Vaccines",
      "description" : "Mapping from ICAO to ICD11 for COVID-19 Vaccines",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-who-ddcc-map-icd11-icd10-disease-targeted.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/who-ddcc-map-icd11-icd10-disease-targeted"
      },
      "name" : "ConceptMap from ICD-10 to SNOMED CT for Disease or Agent Targeted",
      "description" : "Mapping from ICD-11 to ICD-10 for COVID-19 disease.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-who-ddcc-map-icd11-divoc-vaccines.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/who-ddcc-map-icd11-divoc-vaccines"
      },
      "name" : "ConceptMap from ICD-11 to DIVOC for Vaccines",
      "description" : "Mapping from ICD-11 to DIVOC for COVID-19 Vaccines",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-who-ddcc-map-icd11-eudcc-vaccines.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/who-ddcc-map-icd11-eudcc-vaccines"
      },
      "name" : "ConceptMap from ICD-11 to EU DCC for Vaccines",
      "description" : "Mapping from ICD-11 to EU DCC for COVID-19 Vaccines",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-who-ddcc-map-icd11-icao-vaccines.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/who-ddcc-map-icd11-icao-vaccines"
      },
      "name" : "ConceptMap from ICD-11 to ICAO for Vaccines",
      "description" : "Mapping from ICD-11 to ICAO for COVID-19 Vaccines",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-who-ddcc-map-icd11-sct-agent-targeted.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/who-ddcc-map-icd11-sct-agent-targeted"
      },
      "name" : "ConceptMap from ICD-11 to SNOMED CT for Agent Targeted",
      "description" : "Mapping from ICD-11 to SNOMED CT for COVID-19 Agent Targeted",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-who-ddcc-map-icd11-sct-disease-targeted.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/who-ddcc-map-icd11-sct-disease-targeted"
      },
      "name" : "ConceptMap from ICD-11 to SNOMED CT for Disease or Agent Targeted",
      "description" : "Mapping from ICD-11 to SNOMED CT for COVID-19 disease.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-who-ddcc-map-icd11-sct-test-result.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/who-ddcc-map-icd11-sct-test-result"
      },
      "name" : "ConceptMap from ICD-11 to SNOMED CT for Test Result",
      "description" : "Mapping from ICD-11 to SNOMED CT for COVID-19 Test Result",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-who-ddcc-map-icd11-sct-vaccines.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/who-ddcc-map-icd11-sct-vaccines"
      },
      "name" : "ConceptMap from ICD-11 to SNOMED CT for Vaccines",
      "description" : "Mapping from ICD-11 to SNOMED CT for COVID-19 Vaccines",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-who-ddcc-map-ichi-loinc-type-of-test.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/who-ddcc-map-ichi-loinc-type-of-test"
      },
      "name" : "ConceptMap from ICHI to LOINC for Type of Test",
      "description" : "Mapping from ICHI to LOINC for COVID-19 Type of Test",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-who-ddcc-map-ichi-sct-specimen-origin.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/who-ddcc-map-ichi-sct-specimen-origin"
      },
      "name" : "ConceptMap from ICHI to SNOMED CT for Specimen Origin",
      "description" : "Mapping from ICHI to SNOMED CT for COVID-19 Specimen Origin",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-who-ddcc-map-ichi-sct-type-of-test.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/who-ddcc-map-ichi-sct-type-of-test"
      },
      "name" : "ConceptMap from ICHI to SNOMED CT for Type of Test",
      "description" : "Mapping from ICHI to SNOMED CT for COVID-19 Type of Test",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-who-ddcc-map-loinc-sct-type-of-test.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/who-ddcc-map-loinc-sct-type-of-test"
      },
      "name" : "ConceptMap from LOINC to SNOMED CT for Type of Test",
      "description" : "Mapping from LOINC to SNOMED CT for COVID-19 Type of Test",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-who-ddcc-map-sct-ichi-specimen-origin.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/who-ddcc-map-sct-ichi-specimen-origin"
      },
      "name" : "ConceptMap from SNOMED CT to ICHI for Specimen Origin",
      "description" : "Mapping from SNOMED CT to ICHI for COVID-19 Specimen Origin",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-DIVOCValueSet.html"
      }],
      "reference" : {
        "reference" : "ValueSet/DIVOCValueSet"
      },
      "name" : "COVID-19 Vaccine Codes for DIVOC",
      "description" : "COVID-19 Vaccine codes for DIVOC so the FHIR server can perform expansions.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-DIVOCCodeSystem.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/DIVOCCodeSystem"
      },
      "name" : "COVID-19 Vaccine Codes for DIVOC",
      "description" : "COVID-19 Vaccine codes for DIVOC so the FHIR server can perform expansions.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-WHODDCCcvx.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/WHODDCCcvx"
      },
      "name" : "CVX codes used in this IG",
      "description" : "All CVX codes from `http://hl7.org/fhir/sid/cvx` used in this IG. Provided so the FHIR server can perform expansions.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-DDCCExampleTestCodeSystem.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/DDCCExampleTestCodeSystem"
      },
      "name" : "DDCC Codes for examples",
      "description" : "Example codes for example resources.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-ICAOV1ValueSet.html"
      }],
      "reference" : {
        "reference" : "ValueSet/ICAOV1ValueSet"
      },
      "name" : "DDCC Codes for ICAO Vaccines",
      "description" : "ICAO vaccines codes for DDCC so the FHIR server can perform expansions.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-ICAOV1CodeSystem.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/ICAOV1CodeSystem"
      },
      "name" : "DDCC Codes for ICAO Vaccines",
      "description" : "ICAO vaccines codes for DDCC so the FHIR server can perform expansions.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-DDCCICD11CodeSystem.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/DDCCICD11CodeSystem"
      },
      "name" : "DDCC Codes for ICD11",
      "description" : "ICD11 codes for DDCC so the FHIR server can perform expansions.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCComposition.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCComposition"
      },
      "name" : "DDCC Composition",
      "description" : "Describes the logical structure for a Digital Documentation of COVID-19 \nCertificates (DDCC).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-DDCCCompositionCategoryValueSet.html"
      }],
      "reference" : {
        "reference" : "ValueSet/DDCCCompositionCategoryValueSet"
      },
      "name" : "DDCC Composition Category Codes",
      "description" : "Categorization of DDCC Composition",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-DDCCCompositionCategoryCodeSystem.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/DDCCCompositionCategoryCodeSystem"
      },
      "name" : "DDCC Composition Category Codes",
      "description" : "Possible categories available for composition.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical:abstract"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCCoreDataSet.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCCoreDataSet"
      },
      "name" : "DDCC Core Data Set Logical Model",
      "description" : "Data elements for the DDCC Core Data Set.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCCoreDataSetVSCoC.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCCoreDataSetVSCoC"
      },
      "name" : "DDCC Core Data Set Logical Model - Vaccination Status - Continuity of Care",
      "description" : "Data elements for the DDCC Core Data Set - Vaccination Status - Continuity of Care.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCCoreDataSetVSPoV.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCCoreDataSetVSPoV"
      },
      "name" : "DDCC Core Data Set Logical Model - Vaccination Status - Proof of Vaccination",
      "description" : "Data elements for the DDCC Core Data Set - Vaccination Status - Proof of Vaccination.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical:abstract"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCCoreDataSetTR.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCCoreDataSetTR"
      },
      "name" : "DDCC Core Data Set Logical Model for Test Result",
      "description" : "Data elements for the DDCC Core Data Set for Test Result.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical:abstract"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCCoreDataSetVS.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCCoreDataSetVS"
      },
      "name" : "DDCC Core Data Set Logical Model for Vaccination Status",
      "description" : "Data elements for the DDCC Core Data Set for Vaccination Status.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCCountryOfEvent.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCCountryOfEvent"
      },
      "name" : "DDCC Country Of Event for Immunization",
      "description" : "DDCC Country Of Event for Immunization",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-DDCCFolderDesignationTypeCodesystem.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/DDCCFolderDesignationTypeCodesystem"
      },
      "name" : "DDCC Designation Types for Folder",
      "description" : "DDCC Designation Types to use for DDCC Folders.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-DDCCFolderDesignationTypeValueSet.html"
      }],
      "reference" : {
        "reference" : "ValueSet/DDCCFolderDesignationTypeValueSet"
      },
      "name" : "DDCC DesignationTypes for Folder",
      "description" : "DDCC Designation Types ValueSet for DDCC Folders.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-DDCCDevicePropertyValueSet.html"
      }],
      "reference" : {
        "reference" : "ValueSet/DDCCDevicePropertyValueSet"
      },
      "name" : "DDCC Device Property Codes",
      "description" : "Properties of DDCC devices",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-DDCCDevicePropertyCodeSystem.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/DDCCDevicePropertyCodeSystem"
      },
      "name" : "DDCC Device Property Codes",
      "description" : "Possible properties available for devices.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCDiagnosticReport.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCDiagnosticReport"
      },
      "name" : "DDCC Diagnostic Report",
      "description" : "A DDCC Diagnostic Report contains the content corresponding to a row in the Test \nEvents section of a Paper DDCC. While this is not a further profile of the International\nPatient Summary (IPS) DiagnosticReport resouce, this is intended to map into an IPS \nDiagnosticReport resource.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCDocument.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCDocument"
      },
      "name" : "DDCC Document",
      "description" : "A [DDCC Document](StructureDefinition-DDCCDocument.html) is a document bundle containing the DDCC.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCDocumentReference.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCDocumentReference"
      },
      "name" : "DDCC Document Reference",
      "description" : "A [DDCC Document Reference](StructureDefinition-DDCCDocumentReference.html) is a \ndocument reference to a [DDCC Document](StructureDefinition-DDCCDocument.html) \ncontaining the DDCC.\nThe content attachment url will point to a DDCC Document.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCDocumentReferenceQR.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCDocumentReferenceQR"
      },
      "name" : "DDCC DocumentReference return for QR",
      "description" : "DDCC DocumentReference for QR codes including the QR image and the serialized content.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCDocumentSigned.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCDocumentSigned"
      },
      "name" : "DDCC DocumentSigned",
      "description" : "A [DDCC Document Signed](StructureDefinition-DDCCDocumentSigned.html) is a document bundle containing the DDCC\nthat has a digital signature.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCEventBrand.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCEventBrand"
      },
      "name" : "DDCC Event Brand for Immunization",
      "description" : "DDCC Event Brand for Immunization",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCFolder.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCFolder"
      },
      "name" : "DDCC Folder",
      "description" : "DDCC Folder of the Paper Certificate",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCGenerateHealthCertificateParameters.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCGenerateHealthCertificateParameters"
      },
      "name" : "DDCC Generate Health Certificate Parameters",
      "description" : "Parameters for the [DDCC Generate Health Certificate Operation](OperationDefinition-DDCC-QuestionnaireResponse-generateHealthCertificate.html).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCGenerateHealthFolderParameters.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCGenerateHealthFolderParameters"
      },
      "name" : "DDCC Generate Health Folder Parameters",
      "description" : "Parameters for the [DDCC Generate Health Folder Operation](OperationDefinition-DDCC-QuestionnaireResponse-generateHealthFolder.html).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-DDCCHCIDRegistrationQuestionnaire.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/DDCCHCIDRegistrationQuestionnaire"
      },
      "name" : "DDCC HCID Registration Questionnaire",
      "description" : "DDCC HCID Registration Questionnaire",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCImmunization.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCImmunization"
      },
      "name" : "DDCC Immunization",
      "description" : "A DDCC Immunization contains the content corresponding to a row in the Vaccination \nEvents section of a Paper DDCC. While this is not a further profile of the International\nPatient Summary (IPS) Immunization resouce, this is intended to map into an IPS \nImmunization resource.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCImmunizationRecommendation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCImmunizationRecommendation"
      },
      "name" : "DDCC Immunization Recommendation",
      "description" : "A DDCC Immunization Recommendation contains the content corresponding to when\na patient should return for a booster shot.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCObservation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCObservation"
      },
      "name" : "DDCC Observation",
      "description" : "A DDCC Observation contains the content corresponding to a row in the Test \nEvents section of a Paper DDCC. While this is not a further profile of the International\nPatient Summary (IPS) Observation resouce, this is intended to map into an IPS \nObservation resource.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCOrganization.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCOrganization"
      },
      "name" : "DDCC Organization",
      "description" : "Abstraction for a DDCC Organization. There should be a DDCC Organization associated \nto each public health authortiy (PHA)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCPatient.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCPatient"
      },
      "name" : "DDCC Patient",
      "description" : "A DDCCPatient should:\n* if the [identifier.assigner](StructureDefinition-DDCCPatient-definitions.html#Patient.identifier] is set then the value of [identifier.assigner](StructureDefinition-DDCCPatient-definitions.html#Patient.identifier.assigner) should be set to reference the [DDCC Organization](StructureDefinition-DDCCOrganization.html) resource associated to the PHA.\n* obeys who-ddcc-patient-1",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCPractitioner.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCPractitioner"
      },
      "name" : "DDCC Practitioner",
      "description" : "Container for an DDCC Practitioner, which is a Practitioner authorized by the PHA to \nvaccinate an [DDCC Patient](StructureDefinition-DDCCPatient.html).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCPractitionerRole.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCPractitionerRole"
      },
      "name" : "DDCC Practitioner Role",
      "description" : "Association of an [DDCC Practitioner](StructureDefinition-DDCCPractitioner.html) to a \nmanaging [DDCC Organization](StructureDefinition-DDCCOrganization.html), indicating \nthat an DDCC Practitioner is authorized by the public health authority (PHA) to \nvaccinate an [DDCC Patient](StructureDefinition-DDCCPatient.html).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCProcedure.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCProcedure"
      },
      "name" : "DDCC Procedure",
      "description" : "A DDCC Procedure contains the content corresponding to a row in the Test \nEvents section of a Paper DDCC. While this is not a further profile of the International\nPatient Summary (IPS) Procedure resouce, this is intended to map into an IPS \nProcedure resource.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCProvideDocumentBundle.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCProvideDocumentBundle"
      },
      "name" : "DDCC Provide Document Bundle",
      "description" : "DDCC Provide Document Bundle for ITI-65",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-DDCCQRTypeCodeSystem.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/DDCCQRTypeCodeSystem"
      },
      "name" : "DDCC QR Category Usage Codes",
      "description" : "Possible formats available for QR usage.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-DDCCQRFormatValueSet.html"
      }],
      "reference" : {
        "reference" : "ValueSet/DDCCQRFormatValueSet"
      },
      "name" : "DDCC QR Format Codes",
      "description" : "Format of the representation of QR code",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-DDCCQRFormatCodeSystem.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/DDCCQRFormatCodeSystem"
      },
      "name" : "DDCC QR Format Codes",
      "description" : "Possible formats available for QR data.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-DDCCQRTypeValueSet.html"
      }],
      "reference" : {
        "reference" : "ValueSet/DDCCQRTypeValueSet"
      },
      "name" : "DDCC QR Type Codes",
      "description" : "Type of QR codes by their business usage",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCQuestionnaireSDC.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCQuestionnaireSDC"
      },
      "name" : "DDCC Questionnaire based on SDC",
      "description" : "DDCC Questionniare based on SDC Populatable Questionnaire with additional extension",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource:abstract"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCQuestionnaireResponse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCQuestionnaireResponse"
      },
      "name" : "DDCC Questionnaire Response",
      "description" : "Describes the logical structure for a questionnaire response associacted to a [DDCC Questionaire](StructureDefinition-DDCCQuestionnaire.html).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource:abstract"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCQuestionnaire.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCQuestionnaire"
      },
      "name" : "DDCC Questionniare",
      "description" : "Describes the logical structure for a questionnaire associacted to a DDCC which includes a Structure Map to generate the relevant DDCC from a given [DDCC QuestionnaireResponse](StructureDefinition-DDCCQuestionnaireResponse.html) which responds to the DDCC Questionnaire.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCRevokeHealthCertificateParameters.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCRevokeHealthCertificateParameters"
      },
      "name" : "DDCC Revoke Health Certificate Parameters",
      "description" : "Parameters for the [DDCC Revoke Health Certificate Operation](OperationDefinition-DDCC-QuestionnaireResponse-revokeHealthCertificate.html).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCSpecimen.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCSpecimen"
      },
      "name" : "DDCC Specimen",
      "description" : "A DDCC Specimen contains the content corresponding to a row in the Test \nEvents section of a Paper DDCC. While this is not a further profile of the International\nPatient Summary (IPS) Specimen resouce, this is intended to map into an IPS \nSpecimen resource.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCSubmissionSet.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCSubmissionSet"
      },
      "name" : "DDCC Submission Set",
      "description" : "DDCC Submission Set for ITI-65",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCSubmitHealthEventRequest.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCSubmitHealthEventRequest"
      },
      "name" : "DDCC Submit Health Event Request",
      "description" : "An [DDCC Submit Health Event Request](StructureDefinition-DDCCSubmitHealthEventRequest.html) is a transaction bundle containing the content of health events which are being submitted under the [Submit Health Event](transactions.html#submit-health-event) transaction.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCSubmitHealthEventResponse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCSubmitHealthEventResponse"
      },
      "name" : "DDCC Submit Health Event Response",
      "description" : "A DDCC Submit Health Event Response](StructureDefinition-DDCCSubmitHealthEventRespose.html) is a transaction reponse bundle containing the operation outcomes for the submission of one or more health certificates under the [Submit Health Event](transactions.html#submit-health-event) transaction.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCTest.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCTest"
      },
      "name" : "DDCC Test",
      "description" : "A DDCC Test contains the content corresponding to a row in the Test \nEvents section of a Paper DDCC. While this is not a further profile of the International\nPatient Summary (IPS) Device resouce, this is intended to map into an IPS \nDevice resource.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCVaccineMarketAuthorization.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCVaccineMarketAuthorization"
      },
      "name" : "DDCC Vaccine Market Authorization for Immunization",
      "description" : "DDCC Vaccine Market Authorization for Immunization",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCVaccineValidFrom.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCVaccineValidFrom"
      },
      "name" : "DDCC Vaccine Valid From",
      "description" : "Date upon which provided vaccination is considered valid",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCTRComposition.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCTRComposition"
      },
      "name" : "DDCC:TR Composition",
      "description" : "Describes the logical structure for a Digital Documentation of COVID-19 Certificates - Test Result (DDCC:TR).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-DDCCTRCoreDataSetQuestionnaire.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/DDCCTRCoreDataSetQuestionnaire"
      },
      "name" : "DDCC:TR Core Data Set Questionnaire",
      "description" : "DDCC Questionnaire for a Test event.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCTRDocumentSigned.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCTRDocumentSigned"
      },
      "name" : "DDCC:TR DocumentSigned",
      "description" : "A [DDCC:TR Document Signed](StructureDefinition-DDCCTRDocumentSigned.html) is a document bundle containing the DDCC:TR\nthat has a digital signature.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCVSAddBundle.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCVSAddBundle"
      },
      "name" : "DDCC:VS Add Bundle",
      "description" : "Bundle to be transformed to from the DDCC:VS QuestionnaireResponse\nto add on the DDCC generator.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCVSComposition.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCVSComposition"
      },
      "name" : "DDCC:VS Composition",
      "description" : "Describes the logical structure for a Digital Documentation of COVID-19 Certificates - Vaccination Status (DDCC:VS).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-DDCCVSCoreDataSetQuestionnaire.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/DDCCVSCoreDataSetQuestionnaire"
      },
      "name" : "DDCC:VS Core Data Set Questionnaire",
      "description" : "DDCC Questionnaire for an Immunization event.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCVSDocument.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCVSDocument"
      },
      "name" : "DDCC:VS Document",
      "description" : "A [DDCC:VS Document](StructureDefinition-DDCCVSDocument.html) is a document bundle containing the DDCC:VS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCTRDocument.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCTRDocument"
      },
      "name" : "DDCC:VS Document",
      "description" : "A [DDCC:VS Document](StructureDefinition-DDCCVSDocument.html) is a document bundle containing the DDCC:VS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DDCCVSDocumentSigned.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DDCCVSDocumentSigned"
      },
      "name" : "DDCC:VS DocumentSigned",
      "description" : "A [DDCC:VS Document Signed](StructureDefinition-DDCCVSDocumentSigned.html) is a document bundle containing the DDCC:VS\nthat has a digital signature.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Immunization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Immunization-DDCCImmunizationArabic.html"
      }],
      "reference" : {
        "reference" : "Immunization/DDCCImmunizationArabic"
      },
      "name" : "DDCCImmunizationArabic",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCImmunization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Immunization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Immunization-DDCCImmunizationChinese.html"
      }],
      "reference" : {
        "reference" : "Immunization/DDCCImmunizationChinese"
      },
      "name" : "DDCCImmunizationChinese",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCImmunization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Immunization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Immunization-DDCCImmunizationEnglish.html"
      }],
      "reference" : {
        "reference" : "Immunization/DDCCImmunizationEnglish"
      },
      "name" : "DDCCImmunizationEnglish",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCImmunization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Immunization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Immunization-DDCCImmunizationFrench.html"
      }],
      "reference" : {
        "reference" : "Immunization/DDCCImmunizationFrench"
      },
      "name" : "DDCCImmunizationFrench",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCImmunization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ImmunizationRecommendation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ImmunizationRecommendation-DDCCImmunizationRecommendationArabic.html"
      }],
      "reference" : {
        "reference" : "ImmunizationRecommendation/DDCCImmunizationRecommendationArabic"
      },
      "name" : "DDCCImmunizationRecommendationArabic",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCImmunizationRecommendation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ImmunizationRecommendation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ImmunizationRecommendation-DDCCImmunizationRecommendationChinese.html"
      }],
      "reference" : {
        "reference" : "ImmunizationRecommendation/DDCCImmunizationRecommendationChinese"
      },
      "name" : "DDCCImmunizationRecommendationChinese",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCImmunizationRecommendation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ImmunizationRecommendation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ImmunizationRecommendation-DDCCImmunizationRecommendationEnglish.html"
      }],
      "reference" : {
        "reference" : "ImmunizationRecommendation/DDCCImmunizationRecommendationEnglish"
      },
      "name" : "DDCCImmunizationRecommendationEnglish",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCImmunizationRecommendation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ImmunizationRecommendation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ImmunizationRecommendation-DDCCImmunizationRecommendationFrench.html"
      }],
      "reference" : {
        "reference" : "ImmunizationRecommendation/DDCCImmunizationRecommendationFrench"
      },
      "name" : "DDCCImmunizationRecommendationFrench",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCImmunizationRecommendation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ImmunizationRecommendation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ImmunizationRecommendation-DDCCImmunizationRecommendationRussian.html"
      }],
      "reference" : {
        "reference" : "ImmunizationRecommendation/DDCCImmunizationRecommendationRussian"
      },
      "name" : "DDCCImmunizationRecommendationRussian",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCImmunizationRecommendation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ImmunizationRecommendation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ImmunizationRecommendation-DDCCImmunizationRecommendationSpanish.html"
      }],
      "reference" : {
        "reference" : "ImmunizationRecommendation/DDCCImmunizationRecommendationSpanish"
      },
      "name" : "DDCCImmunizationRecommendationSpanish",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCImmunizationRecommendation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Immunization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Immunization-DDCCImmunizationRussian.html"
      }],
      "reference" : {
        "reference" : "Immunization/DDCCImmunizationRussian"
      },
      "name" : "DDCCImmunizationRussian",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCImmunization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Immunization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Immunization-DDCCImmunizationSpanish.html"
      }],
      "reference" : {
        "reference" : "Immunization/DDCCImmunizationSpanish"
      },
      "name" : "DDCCImmunizationSpanish",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCImmunization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-DDCCOrganizationArabic.html"
      }],
      "reference" : {
        "reference" : "Organization/DDCCOrganizationArabic"
      },
      "name" : "DDCCOrganizationArabic",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCOrganization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-DDCCOrganizationChinese.html"
      }],
      "reference" : {
        "reference" : "Organization/DDCCOrganizationChinese"
      },
      "name" : "DDCCOrganizationChinese",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCOrganization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-DDCCOrganizationEnglish.html"
      }],
      "reference" : {
        "reference" : "Organization/DDCCOrganizationEnglish"
      },
      "name" : "DDCCOrganizationEnglish",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCOrganization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-DDCCOrganizationFrench.html"
      }],
      "reference" : {
        "reference" : "Organization/DDCCOrganizationFrench"
      },
      "name" : "DDCCOrganizationFrench",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCOrganization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-DDCCOrganizationRussian.html"
      }],
      "reference" : {
        "reference" : "Organization/DDCCOrganizationRussian"
      },
      "name" : "DDCCOrganizationRussian",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCOrganization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-DDCCOrganizationSpanish.html"
      }],
      "reference" : {
        "reference" : "Organization/DDCCOrganizationSpanish"
      },
      "name" : "DDCCOrganizationSpanish",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCOrganization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-DDCCOrganizationXCL.html"
      }],
      "reference" : {
        "reference" : "Organization/DDCCOrganizationXCL"
      },
      "name" : "DDCCOrganizationXCL",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCOrganization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Library"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Library-DDCCPass-1.0.0.html"
      }],
      "reference" : {
        "reference" : "Library/DDCCPass-1.0.0"
      },
      "name" : "DDCCPass",
      "description" : "DDCC-compliant rule to evaluate if patients have a completed immunization schedule",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-DDCCPatientArabic.html"
      }],
      "reference" : {
        "reference" : "Patient/DDCCPatientArabic"
      },
      "name" : "DDCCPatientArabic",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCPatient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-DDCCPatientChinese.html"
      }],
      "reference" : {
        "reference" : "Patient/DDCCPatientChinese"
      },
      "name" : "DDCCPatientChinese",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCPatient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-DDCCPatientEnglish.html"
      }],
      "reference" : {
        "reference" : "Patient/DDCCPatientEnglish"
      },
      "name" : "DDCCPatientEnglish",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCPatient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-DDCCPatientFrench.html"
      }],
      "reference" : {
        "reference" : "Patient/DDCCPatientFrench"
      },
      "name" : "DDCCPatientFrench",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCPatient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-DDCCPatientRussian.html"
      }],
      "reference" : {
        "reference" : "Patient/DDCCPatientRussian"
      },
      "name" : "DDCCPatientRussian",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCPatient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-DDCCPatientSpanish.html"
      }],
      "reference" : {
        "reference" : "Patient/DDCCPatientSpanish"
      },
      "name" : "DDCCPatientSpanish",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCPatient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-DDCCTXSHEbundleexample1.html"
      }],
      "reference" : {
        "reference" : "Bundle/DDCCTXSHEbundleexample1"
      },
      "name" : "DDCCTXSHEbundleexample1",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCSubmitHealthEventRequest"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-DDCCTXSHEbundleexampleArabic.html"
      }],
      "reference" : {
        "reference" : "Bundle/DDCCTXSHEbundleexampleArabic"
      },
      "name" : "DDCCTXSHEbundleexampleArabic",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCSubmitHealthEventRequest"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-DDCCTXSHEbundleexampleChinese.html"
      }],
      "reference" : {
        "reference" : "Bundle/DDCCTXSHEbundleexampleChinese"
      },
      "name" : "DDCCTXSHEbundleexampleChinese",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCSubmitHealthEventRequest"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-DDCCTXSHEbundleexampleFrench.html"
      }],
      "reference" : {
        "reference" : "Bundle/DDCCTXSHEbundleexampleFrench"
      },
      "name" : "DDCCTXSHEbundleexampleFrench",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCSubmitHealthEventRequest"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-DDCCTXSHEbundleexampleRussian.html"
      }],
      "reference" : {
        "reference" : "Bundle/DDCCTXSHEbundleexampleRussian"
      },
      "name" : "DDCCTXSHEbundleexampleRussian",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCSubmitHealthEventRequest"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-DDCCTXSHEbundleexampleSpanish.html"
      }],
      "reference" : {
        "reference" : "Bundle/DDCCTXSHEbundleexampleSpanish"
      },
      "name" : "DDCCTXSHEbundleexampleSpanish",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCSubmitHealthEventRequest"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-DDCCVSQuestionnaireResponseArabic.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/DDCCVSQuestionnaireResponseArabic"
      },
      "name" : "DDCCVSQuestionnaireResponseArabic",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCQuestionnaireResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-DDCCVSQuestionnaireResponseChinese.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/DDCCVSQuestionnaireResponseChinese"
      },
      "name" : "DDCCVSQuestionnaireResponseChinese",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCQuestionnaireResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-DDCCVSQuestionnaireResponseExample.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/DDCCVSQuestionnaireResponseExample"
      },
      "name" : "DDCCVSQuestionnaireResponseExample",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCQuestionnaireResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-DDCCVSQuestionnaireResponseFrench.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/DDCCVSQuestionnaireResponseFrench"
      },
      "name" : "DDCCVSQuestionnaireResponseFrench",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCQuestionnaireResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-DDCCVSQuestionnaireResponseRussian.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/DDCCVSQuestionnaireResponseRussian"
      },
      "name" : "DDCCVSQuestionnaireResponseRussian",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCQuestionnaireResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-DDCCVSQuestionnaireResponseSpanish.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/DDCCVSQuestionnaireResponseSpanish"
      },
      "name" : "DDCCVSQuestionnaireResponseSpanish",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCQuestionnaireResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Composition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Composition-DDCCCompositionExampleArabic.html"
      }],
      "reference" : {
        "reference" : "Composition/DDCCCompositionExampleArabic"
      },
      "name" : "Digital Documentation of COVID-19 Certificate (DDCC)",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCVSComposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Composition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Composition-DDCCCompositionExampleChinese.html"
      }],
      "reference" : {
        "reference" : "Composition/DDCCCompositionExampleChinese"
      },
      "name" : "Digital Documentation of COVID-19 Certificate (DDCC)",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCVSComposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Composition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Composition-DDCCCompositionExampleEnglish.html"
      }],
      "reference" : {
        "reference" : "Composition/DDCCCompositionExampleEnglish"
      },
      "name" : "Digital Documentation of COVID-19 Certificate (DDCC)",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCVSComposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Composition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Composition-DDCCCompositionExampleFrench.html"
      }],
      "reference" : {
        "reference" : "Composition/DDCCCompositionExampleFrench"
      },
      "name" : "Digital Documentation of COVID-19 Certificate (DDCC)",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCVSComposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Composition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Composition-DDCCCompositionExampleRussian.html"
      }],
      "reference" : {
        "reference" : "Composition/DDCCCompositionExampleRussian"
      },
      "name" : "Digital Documentation of COVID-19 Certificate (DDCC)",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCVSComposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Composition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Composition-DDCCCompositionExampleSpanish.html"
      }],
      "reference" : {
        "reference" : "Composition/DDCCCompositionExampleSpanish"
      },
      "name" : "Digital Documentation of COVID-19 Certificate (DDCC)",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCVSComposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-WHODDCCdivoclabtestorigin.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/WHODDCCdivoclabtestorigin"
      },
      "name" : "DIVOC lab test origin codes used in this IG",
      "description" : "All DIVOC lab test origin codes from its internally defined code system used in this IG. Provided so the FHIR server can perform expansions.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-WHODDCCdivoclabtestpathogen.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/WHODDCCdivoclabtestpathogen"
      },
      "name" : "DIVOC lab test pathogen codes used in this IG",
      "description" : "All DIVOC lab test pathogen codes from its internally defined code system used in this IG. Provided so the FHIR server can perform expansions.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-WHODDCCdivoclabtestresult.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/WHODDCCdivoclabtestresult"
      },
      "name" : "DIVOC lab test result codes used in this IG",
      "description" : "All DIVOC lab test result codes from its internally defined code system used in this IG. Provided so the FHIR server can perform expansions.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-WHODDCCdivoclabtesttype.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/WHODDCCdivoclabtesttype"
      },
      "name" : "DIVOC lab test type codes used in this IG",
      "description" : "All DIVOC lab test type codes from its internally defined code system used in this IG. Provided so the FHIR server can perform expansions.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-EUDCCValueSet.html"
      }],
      "reference" : {
        "reference" : "ValueSet/EUDCCValueSet"
      },
      "name" : "EU DCC Allowed Vaccine List (COVID-19)",
      "description" : "EU DCC Allowed Vaccine List (COVID-19).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-WHODDCCeuur.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/WHODDCCeuur"
      },
      "name" : "EUUR codes used in this IG",
      "description" : "All EUUR codes from `https://ec.europa.eu/health/documents/community-register/html/` used in this IG. Provided so the FHIR server can perform expansions.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-Example-Russian.html"
      }],
      "reference" : {
        "reference" : "Bundle/Example-Russian"
      },
      "name" : "Example-Russian",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCVSDocument"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-ExampleArabic.html"
      }],
      "reference" : {
        "reference" : "Bundle/ExampleArabic"
      },
      "name" : "ExampleArabic",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCVSDocument"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-ExampleChinese.html"
      }],
      "reference" : {
        "reference" : "Bundle/ExampleChinese"
      },
      "name" : "ExampleChinese",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCVSDocument"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-ExampleEnglish.html"
      }],
      "reference" : {
        "reference" : "Bundle/ExampleEnglish"
      },
      "name" : "ExampleEnglish",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCVSDocument"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-ExampleFrench.html"
      }],
      "reference" : {
        "reference" : "Bundle/ExampleFrench"
      },
      "name" : "ExampleFrench",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCVSDocument"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-ExampleSpanish.html"
      }],
      "reference" : {
        "reference" : "Bundle/ExampleSpanish"
      },
      "name" : "ExampleSpanish",
      "exampleCanonical" : "http://smart.who.int/ddcc/StructureDefinition/DDCCVSDocument"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-WHODDCCicaolabtestorigin.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/WHODDCCicaolabtestorigin"
      },
      "name" : "ICAO lab test origin codes used in this IG",
      "description" : "All ICAO lab test origin codes from its internally defined code system used in this IG. Provided so the FHIR server can perform expansions.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-WHODDCCicaolabtestresult.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/WHODDCCicaolabtestresult"
      },
      "name" : "ICAO lab test result codes used in this IG",
      "description" : "All ICAO lab test result codes from its internally defined code system used in this IG. Provided so the FHIR server can perform expansions.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-WHODDCCicaolabtesttype.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/WHODDCCicaolabtesttype"
      },
      "name" : "ICAO lab test type codes used in this IG",
      "description" : "All ICAO lab test type codes from its internally defined code system used in this IG. Provided so the FHIR server can perform expansions.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-IPS-Immunization-Example-Bundle-01.html"
      }],
      "reference" : {
        "reference" : "Bundle/IPS-Immunization-Example-Bundle-01"
      },
      "name" : "IPS-Immunization-Example-Bundle-01",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-lab-test-pathogen-divoc-to-icd11.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/lab-test-pathogen-divoc-to-icd11"
      },
      "name" : "Lab Test - Pathogen - COVID-19 - Mapping DIVOC to ICD-11",
      "description" : "[Lab Test - Pathogen - DIVOC](ValueSet-lab-test-pathogen-divoc.html) mapped to ICD-11",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-LabTestPathogenCovid19SnomedValueSet.html"
      }],
      "reference" : {
        "reference" : "ValueSet/LabTestPathogenCovid19SnomedValueSet"
      },
      "name" : "Lab Test - Pathogen - COVID-19 - SNOMED CT",
      "description" : "This is a one-time snapshot of the allowed values for pathogens in EUDCC, retrieved in February 2023 from https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv%3AOJ.L_.2021.230.01.0032.01.ENG. Contents may need to be updated and readers should consult the credential's documentation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-LabTestPathogenDivocValueSet.html"
      }],
      "reference" : {
        "reference" : "ValueSet/LabTestPathogenDivocValueSet"
      },
      "name" : "Lab Test - Pathogen - DIVOC",
      "description" : "This is a one-time snapshot of the allowed values for pathogens, retrieved in February 2023. Contents may need to be updated and readers should consult the credential's documentation. Some information on DIVOC's test certificate can be found at https://github.com/egovernments/DIVOC/blob/main/test-certificate-context/test-certificate-context.js. Additional information on DIVOC can be found at <https://divoc.digit.org/platform/divocs-verifiable-certificate-features>",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-lab-test-type-snomed-to-icd11.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/lab-test-type-snomed-to-icd11"
      },
      "name" : "Lab Test - Pathogen - Mapping SNOMED CT to ICD-11",
      "description" : "[Lab Test - Type - Generic - LOINC](ValueSet-lab-test-type-loinc.html) mapped to ICD-11",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-LabTestQualitativeResultDivocValueSet.html"
      }],
      "reference" : {
        "reference" : "ValueSet/LabTestQualitativeResultDivocValueSet"
      },
      "name" : "Lab Test - Qualitative Result - DIVOC",
      "description" : "This is a one-time snapshot of the allowed values for lab test results, retrieved in February 2023. Contents may need to be updated and readers should consult the credential's documentation. Some information on DIVOC's test certificate can be found at https://github.com/egovernments/DIVOC/blob/main/test-certificate-context/test-certificate-context.js. Additional information on DIVOC can be found at <https://divoc.digit.org/platform/divocs-verifiable-certificate-features>",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-LabTestResultIcaoValueSet.html"
      }],
      "reference" : {
        "reference" : "ValueSet/LabTestResultIcaoValueSet"
      },
      "name" : "Lab Test - Qualitative Result - ICAO",
      "description" : "This is a one-time snapshot of the allowed values for lab test results in ICAO, retrieved in February 2023 from https://www.icao.int/Security/FAL/TRIP/PublishingImages/Pages/Publications/Visible%20Digital%20Seal%20for%20non-constrained%20environments%20%28VDS-NC%29.pdf. Contents may need to be updated and readers should consult the credential's documentation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-lab-test-qual-result-icao-to-icd11.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/lab-test-qual-result-icao-to-icd11"
      },
      "name" : "Lab Test - Qualitative Result - Mapping ICAO to ICD-11",
      "description" : "[Lab Test - Qualitative Result - ICAO](ValueSet-lab-test-qual-result-icao.html) mapped to ICD-11",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-LabTestQualitativeResultSnomedValueSet.html"
      }],
      "reference" : {
        "reference" : "ValueSet/LabTestQualitativeResultSnomedValueSet"
      },
      "name" : "Lab Test - Qualitative Result - SNOMED CT",
      "description" : "This is a one-time snapshot of the allowed values for lab test results in EUDCC and SMART Health Cards, retrieved in February 2023 from https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv%3AOJ.L_.2021.230.01.0032.01.ENG and <http://build.fhir.org/ig/HL7/fhir-shc-vaccination-ig/ValueSet-vaccine-snomed.html> respectively. Contents may need to be updated and readers should consult the original documentation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-lab-test-qual-result-divoc-to-icd11.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/lab-test-qual-result-divoc-to-icd11"
      },
      "name" : "Lab Test - Result - Mapping DIVOC to ICD-11",
      "description" : "[Lab Test - Qualitative Result - DIVOC](ValueSet-lab-test-qual-result-divoc.html) mapped to ICD-11",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-lab-test-qual-result-snomed-to-icd11.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/lab-test-qual-result-snomed-to-icd11"
      },
      "name" : "Lab Test - Result - Mapping SNOMED CT to ICD-11",
      "description" : "[Lab Test - Qualitative Result - SNOMED CT](ValueSet-lab-test-qual-result-snomed.html) mapped to ICD-11",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-lab-test-pathogen-snomed-to-icd11.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/lab-test-pathogen-snomed-to-icd11"
      },
      "name" : "Lab Test - Result - Pathogen - Mapping SNOMED CT to ICD-11",
      "description" : "[Lab Test - Pathogen - COVID-19 - SNOMED CT](ValueSet-lab-test-pathogen-covid19-snomed.html) mapped to ICD-11",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-lab-test-sample-origin-divoc.html"
      }],
      "reference" : {
        "reference" : "ValueSet/lab-test-sample-origin-divoc"
      },
      "name" : "Lab Test - Sample Origin - DIVOC",
      "description" : "This is a one-time snapshot of the allowed values for lab test sample origins, retrieved in February 2023. Contents may need to be updated and readers should consult the credential's documentation. Some information on DIVOC's test certificate is at https://github.com/egovernments/DIVOC/blob/main/test-certificate-context/test-certificate-context.js. Additional information on DIVOC can be found at <https://divoc.digit.org/platform/divocs-verifiable-certificate-features>",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-lab-test-sample-origin-icao.html"
      }],
      "reference" : {
        "reference" : "ValueSet/lab-test-sample-origin-icao"
      },
      "name" : "Lab Test - Sample Origin - ICAO",
      "description" : "This is a one-time snapshot of the allowed values for lab test sample origins in ICAO, retrieved in February 2023 from https://www.icao.int/Security/FAL/TRIP/PublishingImages/Pages/Publications/Visible%20Digital%20Seal%20for%20non-constrained%20environments%20%28VDS-NC%29.pdf. Contents may need to be updated and readers should consult the credential's documentation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-lab-test-sample-origin-divoc-to-icd11.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/lab-test-sample-origin-divoc-to-icd11"
      },
      "name" : "Lab Test - Sample Origin - Mapping DIVOC to ICD-11",
      "description" : "[Lab Test - Sample Origin - DIVOC](ValueSet-lab-test-sample-origin-divoc.html) mapped to ICD-11",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-lab-test-sample-origin-icao-to-icd11.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/lab-test-sample-origin-icao-to-icd11"
      },
      "name" : "Lab Test - Sample Origin - Mapping ICAO to ICD-11",
      "description" : "[Lab Test - Sample Origin - ICAO](ValueSet-lab-test-sample-origin-icao.html) mapped to ICD-11",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-LabTestTypeCovid19LoincValueSet.html"
      }],
      "reference" : {
        "reference" : "ValueSet/LabTestTypeCovid19LoincValueSet"
      },
      "name" : "Lab Test - Type - COVID-19 - LOINC",
      "description" : "This is a one-time snapshot of the allowed values for COVID-19 specific lab tests in EUDCC, retrieved in February 2023 from https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv%3AOJ.L_.2021.230.01.0032.01.ENG. Contents may need to be updated and readers should consult the credential's documentation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-lab-test-type-divoc-to-icd11.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/lab-test-type-divoc-to-icd11"
      },
      "name" : "Lab Test - Type - COVID-19 - Mapping DIVOC to ICD-11",
      "description" : "[Lab Test - Type - DIVOC](ValueSet-lab-test-type-divoc.html) mapped to ICD-11",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-LabTestTypeDivocValueSet.html"
      }],
      "reference" : {
        "reference" : "ValueSet/LabTestTypeDivocValueSet"
      },
      "name" : "Lab Test - Type - DIVOC",
      "description" : "This is a one-time snapshot of the allowed values for lab test types, retrieved in February 2023. Contents may need to be updated and readers should consult the credential's documentation. Some information on DIVOC's test certificate can be found at https://github.com/egovernments/DIVOC/blob/main/test-certificate-context/test-certificate-context.js. Additional information on DIVOC can be found at <https://divoc.digit.org/platform/divocs-verifiable-certificate-features>",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-LabTestTypeLoincValueSet.html"
      }],
      "reference" : {
        "reference" : "ValueSet/LabTestTypeLoincValueSet"
      },
      "name" : "Lab Test - Type - Generic - LOINC",
      "description" : "This is a one-time snapshot of the allowed values for generic lab tests in EUDCC, retrieved in February 2023 from https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv%3AOJ.L_.2021.230.01.0032.01.ENG. Contents may need to be updated and readers should consult the credential's documentation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-LabTestTypeIcaoValueSet.html"
      }],
      "reference" : {
        "reference" : "ValueSet/LabTestTypeIcaoValueSet"
      },
      "name" : "Lab Test - Type - ICAO",
      "description" : "This is a one-time snapshot of the allowed values for lab test types in ICAO, retrieved in February 2023 from https://www.icao.int/Security/FAL/TRIP/PublishingImages/Pages/Publications/Visible%20Digital%20Seal%20for%20non-constrained%20environments%20%28VDS-NC%29.pdf. Contents may need to be updated and readers should consult the credential's documentation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-lab-test-type-icao-to-icd11.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/lab-test-type-icao-to-icd11"
      },
      "name" : "Lab Test - Type - Mapping ICAO to ICD-11",
      "description" : "[Lab Test - Type - ICAO](ValueSet-lab-test-type-icao.html) mapped to ICD-11",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-lab-test-type-covid19-loinc-to-icd11.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/lab-test-type-covid19-loinc-to-icd11"
      },
      "name" : "Lab Test – Type - Mapping LOINC to ICD-11",
      "description" : "[Lab Test - Type - COVID-19 - LOINC](ValueSet-lab-test-type-covid19-loinc.html) mapped to ICD-11",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-WHODDCCloinc.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/WHODDCCloinc"
      },
      "name" : "LOINC codes used in this IG",
      "description" : "All LOINC codes from `http://loinc.org` used in this IG. Provided so the FHIR server can perform expansions.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Library"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Library-ModernaOrPfizerPass-1.0.0.html"
      }],
      "reference" : {
        "reference" : "Library/ModernaOrPfizerPass-1.0.0"
      },
      "name" : "ModernaOrPfizerPass",
      "description" : "DDCC-compliant rule to evaluate if patients have an immunization from Moderna or Pfizer",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "OperationDefinition-DDCCQuestionnaireResponsegenerateHealthCertificate.html"
      }],
      "reference" : {
        "reference" : "OperationDefinition/DDCCQuestionnaireResponsegenerateHealthCertificate"
      },
      "name" : "OperationDefinition for generating a health certificate (DDCC) that is signed.",
      "description" : "Generate one or more signed DDCC Documents based on a [DDCC QuestionnaireResponse](StructureDefinition-DDCCQuestionnaireResponse.html)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "OperationDefinition-DDCCQuestionnaireResponsegenerateHealthFolder.html"
      }],
      "reference" : {
        "reference" : "OperationDefinition/DDCCQuestionnaireResponsegenerateHealthFolder"
      },
      "name" : "OperationDefinition for generating a health folder (DDCCFolder).",
      "description" : "Generate a DDCC Folder from an IPS Bundle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "OperationDefinition-DDCCQuestionnaireResponserevokeHealthCertificate.html"
      }],
      "reference" : {
        "reference" : "OperationDefinition/DDCCQuestionnaireResponserevokeHealthCertificate"
      },
      "name" : "OperationDefinition for revoking a health certificate (DDCC).",
      "description" : "Revoke a DDCC Document.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical:abstract"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HCertDCC.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HCertDCC"
      },
      "name" : "Payload for Certificate - EU DCC CBOR Web Token Logical Model",
      "description" : "Data elements for the EU Digital COVID Certificate Core Data Set. Based on the official specification for COVID-19-related payloads <https://health.ec.europa.eu/system/files/2021-06/covid-certificate_json_specification_en_0.pdf> as of 2023-01-31, and Implementing Decision (EU) 2021/1073, Annex 1 <https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=CELEX:32021D1073&from=EN#d1e34-35-1>.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-SHCVaccinationBundleDM-Example-English-From-ddcc-to-shc.html"
      }],
      "reference" : {
        "reference" : "Bundle/SHCVaccinationBundleDM-Example-English-From-ddcc-to-shc"
      },
      "name" : "SHCVaccinationBundleDM-Example-English-From-ddcc-to-shc",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-WHODDCCsnomed.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/WHODDCCsnomed"
      },
      "name" : "SNOMED codes used in this IG",
      "description" : "All SNOMED codes from `http://snomed.info/sct` used in this IG. Provided so the FHIR server can perform expansions.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-VaccineCovid19CvxValueSet.html"
      }],
      "reference" : {
        "reference" : "ValueSet/VaccineCovid19CvxValueSet"
      },
      "name" : "Vaccine - COVID-19 - CVX",
      "description" : "This is a one-time snapshot of the allowed CVX codes for vaccines, retrieved in February 2023. Contents may need to be updated and readers should consult the credential documentation, found here http://hl7.org/fhir/uv/shc-vaccination/2021Sep/ValueSet-vaccine-cvx.html. More information on the CVX value set can be found here, <https://www2a.cdc.gov/vaccines/iis/iisstandards/vaccines.asp?rpt=cvx>",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-VaccineCovid19EUUnionRegisterValueSet.html"
      }],
      "reference" : {
        "reference" : "ValueSet/VaccineCovid19EUUnionRegisterValueSet"
      },
      "name" : "Vaccine - COVID-19 - EU Union Register of Medicinial Products",
      "description" : "Union Register of medicinal products for vaccines with EU-wide authorisation. The Union Register is found at <https://ec.europa.eu/health/documents/community-register/html/index_en.htm>. However, the contents of this ValueSet are based on v1.14 (2023-01-25) of the [EU DCC value set guidelines](https://health.ec.europa.eu/system/files/2023-01/eu-dcc-value-sets_en.pdf).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-VaccineCovid19Icd11ValueSet.html"
      }],
      "reference" : {
        "reference" : "ValueSet/VaccineCovid19Icd11ValueSet"
      },
      "name" : "Vaccine - COVID-19 - Icd11",
      "description" : "tbd",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-vaccine-covid19-cvx-to-icd11.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/vaccine-covid19-cvx-to-icd11"
      },
      "name" : "Vaccine - COVID-19 - Mapping CVX to ICD-11",
      "description" : "[Vaccine - COVID-19 - CVX](ValueSet-vaccine-covid19-cvx.html) mapped to ICD-11",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-vaccine-covid19-euur-to-icd11.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/vaccine-covid19-euur-to-icd11"
      },
      "name" : "Vaccine - COVID-19 - Mapping EUDCC to ICD-11",
      "description" : "[Vaccine - COVID-19 - EU Union Register of Medicinial Products](ValueSet-vaccine-covid19-euur.html) mapped to ICD-11",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-vaccine-covid19-snomed-to-icd11.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/vaccine-covid19-snomed-to-icd11"
      },
      "name" : "Vaccine - COVID-19 - Mapping SNOMED to ICD-11",
      "description" : "[Vaccine - COVID-19 - SNOMED CT](ValueSet-vaccine-covid19-snomed.html) mapped to ICD-11",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-VaccineCovid19SnomedValueSet.html"
      }],
      "reference" : {
        "reference" : "ValueSet/VaccineCovid19SnomedValueSet"
      },
      "name" : "Vaccine - COVID-19 - SNOMED CT",
      "description" : "This is a one-time snapshot of the allowed SNOMED values for vaccines, retrieved in February 2023. Contents may need to be updated and readers should consult the documentation, found here http://hl7.org/fhir/uv/shc-vaccination/2021Sep/ValueSet-vaccine-snomed.html",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-WHODDCCAgentTargetedCOVID19.html"
      }],
      "reference" : {
        "reference" : "ValueSet/WHODDCCAgentTargetedCOVID19"
      },
      "name" : "WHO Agent Targeted (COVID-19)",
      "description" : "WHO Agent Targeted List (COVID-19) from [ICD 11](https://icd.who.int/browse11)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-WHODDCCBrandsCOVID19.html"
      }],
      "reference" : {
        "reference" : "ValueSet/WHODDCCBrandsCOVID19"
      },
      "name" : "WHO DDCC Brand List (COVID-19)",
      "description" : "WHO DDCC Brand List (COVID-19) from [ICD 11](https://icd.who.int/browse11)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CapabilityStatement-WHO.DDCC.Generator.html"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/WHO.DDCC.Generator"
      },
      "name" : "WHO DDCC Generator",
      "description" : "CapabilityStatement for WHO DDCC Generator actor.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CapabilityStatement-WHO.DDCC.RegistryService.html"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/WHO.DDCC.RegistryService"
      },
      "name" : "WHO DDCC Registry Service",
      "description" : "CapabilityStatement for WHO DDCC Registry Service actor.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-WHODDCCDiseaseTargetedCOVID19.html"
      }],
      "reference" : {
        "reference" : "ValueSet/WHODDCCDiseaseTargetedCOVID19"
      },
      "name" : "WHO Disease or Agent Targeted (COVID-19)",
      "description" : "WHO Disease or Agent Targeted List (COVID-19) from [ICD 11](https://icd.who.int/browse11)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-WHODDCCSampleOriginCOVID19.html"
      }],
      "reference" : {
        "reference" : "ValueSet/WHODDCCSampleOriginCOVID19"
      },
      "name" : "WHO Speciman Sample Origin (COVID-19)",
      "description" : "WHO Speciman Sample Origin List (COVID-19)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-who-ddcc-test-result-covid-19.html"
      }],
      "reference" : {
        "reference" : "ValueSet/who-ddcc-test-result-covid-19"
      },
      "name" : "WHO Test Result (COVID-19)",
      "description" : "WHO COVID-19 Test Result from [ICD 11](https://icd.who.int/browse11)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-WHODDCCTypeofTestCOVID19.html"
      }],
      "reference" : {
        "reference" : "ValueSet/WHODDCCTypeofTestCOVID19"
      },
      "name" : "WHO Type of Covid-19 Test",
      "description" : "WHO Type of COVID-19 Test",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-WHODDCCVaccinesCOVID19.html"
      }],
      "reference" : {
        "reference" : "ValueSet/WHODDCCVaccinesCOVID19"
      },
      "name" : "WHO Vaccine List (COVID-19)",
      "description" : "WHO Vaccine List (COVID-19) from [ICD 11](https://icd.who.int/browse11)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureMap-BundleVSToAddBundle.html"
      }],
      "reference" : {
        "reference" : "StructureMap/BundleVSToAddBundle"
      },
      "name" : "BundleVSToAddBundle"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureMap-CertDCCtoCoreDataSet.html"
      }],
      "reference" : {
        "reference" : "StructureMap/CertDCCtoCoreDataSet"
      },
      "name" : "CertDCCtoCoreDataSet",
      "description" : "Structure map transforming CertDCC logical model to bundle of Core Data Set logical model"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureMap-EUDCCtoDDCC.html"
      }],
      "reference" : {
        "reference" : "StructureMap/EUDCCtoDDCC"
      },
      "name" : "EUDCCtoDDCC"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureMap-CertDIVOCtoCoreDataSet.html"
      }],
      "reference" : {
        "reference" : "StructureMap/CertDIVOCtoCoreDataSet"
      },
      "name" : "CertDIVOCtoCoreDataSet",
      "description" : "Structure map transforming CertDIVOC logical model to bundle of Core Data Set logical model"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureMap-DIVOCtoDDCC.html"
      }],
      "reference" : {
        "reference" : "StructureMap/DIVOCtoDDCC"
      },
      "name" : "DIVOCtoDDCC"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureMap-CertICAOtoCoreDataSet.html"
      }],
      "reference" : {
        "reference" : "StructureMap/CertICAOtoCoreDataSet"
      },
      "name" : "CertICAOtoCoreDataSet",
      "description" : "Structure map transforming CertICAO logical model to bundle of Core Data Set logical model"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureMap-ICAOtoDDCC.html"
      }],
      "reference" : {
        "reference" : "StructureMap/ICAOtoDDCC"
      },
      "name" : "ICAOtoDDCC"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureMap-CertSHCtoCoreDataSet.html"
      }],
      "reference" : {
        "reference" : "StructureMap/CertSHCtoCoreDataSet"
      },
      "name" : "CertSHCtoCoreDataSet",
      "description" : "Structure map transforming CertSHC logical model to bundle of Core Data Set logical model"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureMap-SHCJWTtoDDCC.html"
      }],
      "reference" : {
        "reference" : "StructureMap/SHCJWTtoDDCC"
      },
      "name" : "SHCJWTtoDDCC"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureMap-CoreDataSetLibrary.html"
      }],
      "reference" : {
        "reference" : "StructureMap/CoreDataSetLibrary"
      },
      "name" : "CoreDataSetLibrary"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureMap-CoreDataSetVSLibrary.html"
      }],
      "reference" : {
        "reference" : "StructureMap/CoreDataSetVSLibrary"
      },
      "name" : "CoreDataSetVSLibrary"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureMap-CoreDataSetVSToAddBundle.html"
      }],
      "reference" : {
        "reference" : "StructureMap/CoreDataSetVSToAddBundle"
      },
      "name" : "CoreDataSetVSToAddBundle"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureMap-DDCCtoCoredataset.html"
      }],
      "reference" : {
        "reference" : "StructureMap/DDCCtoCoredataset"
      },
      "name" : "DDCCtoCoredataset"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureMap-DDCCtoEUdcc.html"
      }],
      "reference" : {
        "reference" : "StructureMap/DDCCtoEUdcc"
      },
      "name" : "DDCCtoEUdcc"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureMap-DDCCtoSHC.html"
      }],
      "reference" : {
        "reference" : "StructureMap/DDCCtoSHC"
      },
      "name" : "DDCCtoSHC"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureMap-IPSToCoreDataSetVS.html"
      }],
      "reference" : {
        "reference" : "StructureMap/IPSToCoreDataSetVS"
      },
      "name" : "IPSToCoreDataSetVS"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureMap-QRespToVSCoreDataSet.html"
      }],
      "reference" : {
        "reference" : "StructureMap/QRespToVSCoreDataSet"
      },
      "name" : "QRespToVSCoreDataSet"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureMap-ResourcesToVSCoreDataSet.html"
      }],
      "reference" : {
        "reference" : "StructureMap/ResourcesToVSCoreDataSet"
      },
      "name" : "ResourcesToVSCoreDataSet"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureMap-SHCToCoreDataSetTR.html"
      }],
      "reference" : {
        "reference" : "StructureMap/SHCToCoreDataSetTR"
      },
      "name" : "SHCToCoreDataSetTR"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureMap-SHCToCoreDataSetVS.html"
      }],
      "reference" : {
        "reference" : "StructureMap/SHCToCoreDataSetVS"
      },
      "name" : "SHCToCoreDataSetVS"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureMap-SHCtoDDCC.html"
      }],
      "reference" : {
        "reference" : "StructureMap/SHCtoDDCC"
      },
      "name" : "SHCtoDDCC"
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Home",
        "generation" : "html"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "actors.html"
        }],
        "nameUrl" : "actors.html",
        "title" : "Actors",
        "generation" : "html"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "changes.html"
        }],
        "nameUrl" : "changes.html",
        "title" : "Changes",
        "generation" : "html"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "concepts.html"
        }],
        "nameUrl" : "concepts.html",
        "title" : "Concepts",
        "generation" : "html"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "content_profiles.html"
        }],
        "nameUrl" : "content_profiles.html",
        "title" : "Content Profiles",
        "generation" : "html"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "data_exchange.html"
        }],
        "nameUrl" : "data_exchange.html",
        "title" : "Data Exchange",
        "generation" : "html"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "dependencies.html"
        }],
        "nameUrl" : "dependencies.html",
        "title" : "Dependencies",
        "generation" : "html"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "deployment.html"
        }],
        "nameUrl" : "deployment.html",
        "title" : "Deployment",
        "generation" : "html"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "dictionary.html"
        }],
        "nameUrl" : "dictionary.html",
        "title" : "Dictionary",
        "generation" : "html"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "downloads.html"
        }],
        "nameUrl" : "downloads.html",
        "title" : "Downloads",
        "generation" : "html"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "functional_requirements.html"
        }],
        "nameUrl" : "functional_requirements.html",
        "title" : "Functional Requirements",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "interoperability.html"
        }],
        "nameUrl" : "interoperability.html",
        "title" : "Interoperability",
        "generation" : "html"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "license.html"
        }],
        "nameUrl" : "license.html",
        "title" : "License",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "maps.html"
        }],
        "nameUrl" : "maps.html",
        "title" : "Maps",
        "generation" : "html"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "reference_implementation.html"
        }],
        "nameUrl" : "reference_implementation.html",
        "title" : "Reference Implementation",
        "generation" : "html"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "references.html"
        }],
        "nameUrl" : "references.html",
        "title" : "References",
        "generation" : "html"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "requirements.html"
        }],
        "nameUrl" : "requirements.html",
        "title" : "Requirements",
        "generation" : "html"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "security_privacy.html"
        }],
        "nameUrl" : "security_privacy.html",
        "title" : "Security Privacy",
        "generation" : "html"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "testing.html"
        }],
        "nameUrl" : "testing.html",
        "title" : "Testing",
        "generation" : "html"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "transactions.html"
        }],
        "nameUrl" : "transactions.html",
        "title" : "Transactions",
        "generation" : "html"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "use_cases.html"
        }],
        "nameUrl" : "use_cases.html",
        "title" : "Use Cases",
        "generation" : "html"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "workflows.html"
        }],
        "nameUrl" : "workflows.html",
        "title" : "Workflows",
        "generation" : "html"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/maps"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
