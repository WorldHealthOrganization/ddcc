#!/bin/sh
### @host = http://localhost:8080/hapi-fhir-jpavalidator/fhir
### @host = http://test.ahdis.ch/hapi-fhir-jpavalidator/fhir
### @host = https://ehealthsuisse.ihe-europe.net/hapi-fhir-jpavalidator/fhir


HOST="http://127.0.0.1:8080/r4"
#HOST="http://hapi.fhir.org/baseR4"
#HOST="http://test.ahdis.ch/r4"

echo "Accessing $HOST/metadata"

### Get capability statement
curl --request GET $HOST/metadata \
     -H "Accept: application/fhir+json" 



#Preload some structure defintiions for funsies
curl  --request PUT $HOST/StructureDefinition/DDCCOrganization \
      --data-binary @../fsh-generated/resources/StructureDefinition-DDCCOrganization.json \
      -H "Accept: application/fhir+json"  -H "Content-Type: application/fhir+json "

curl  --request PUT $HOST/StructureDefinition/DDCCImmunizationRecommendation \
      --data-binary @../fsh-generated/resources/StructureDefinition-DDCCImmunizationRecommendation.json \
      -H "Accept: application/fhir+json"  -H "Content-Type: application/fhir+json " 


curl  --request PUT $HOST/StructureDefinition/DDCCImmunization \
      --data-binary @../fsh-generated/resources/StructureDefinition-DDCCImmunization.json \
      -H "Accept: application/fhir+json"  -H "Content-Type: application/fhir+json " 

curl  --request PUT $HOST/StructureDefinition/DDCCDocumentReferenceQR \
      --data-binary @../fsh-generated/resources/StructureDefinition-DDCCDocumentReferenceQR.json \
      -H "Accept: application/fhir+json"  -H "Content-Type: application/fhir+json " 


curl  --request PUT $HOST/StructureDefinition/DDCCComposition \
      --data-binary @../fsh-generated/resources/StructureDefinition-DDCCComposition.json \
      -H "Accept: application/fhir+json"  -H "Content-Type: application/fhir+json " 



#LM for WHO QR


echo "Updating Core Data Set PoV"
curl  --request PUT $HOST/StructureDefinition/DDCCCoreDataSetPoV  \
      --data-binary @../fsh-generated/resources/StructureDefinition-DDCCCoreDataSetPoV.json \
      -H "Accept: application/fhir+json"  -H "Content-Type: application/fhir+json " 

echo "Updating Core Data Set CoC"
curl --request PUT $HOST/StructureDefinition/DDCCCoreDataSetCoC \
     --data-binary @../fsh-generated/resources/StructureDefinition-DDCCCoreDataSetCoC.json \
     -H "Accept: application/fhir+json"  -H "Content-Type: application/fhir+json"

echo "Updating DDCC to Core Data Set Structure Map"
curl  --request POST $HOST/StructureMap \
      --data-binary @ddcc-to-coredataset.map \
      -H "Accept: application/fhir+json"  -H "Content-Type: text/fhir-mapping"

echo "Transforming Example DDCC Bundle to Core Data Set"
curl --request POST "$HOST/StructureMap/\$transform?source=http://who-int.github.io/svc/StructureMap/ddcc-to-coredataset" \
     --data-binary @../fsh-generated/resources/Bundle-Example-English.json  \
      -H "Accept: application/fhir+json"  -H "Content-Type: application/fhir+json"


#EU DCC LM for QR

echo "Rertrieving EU DCC LMs"
curl -sS http://build.fhir.org/ig/hl7-eu/dgc/branches/master/StructureDefinition-HC1.json > StructureDefinition-HC1.json
curl -sS http://build.fhir.org/ig/hl7-eu/dcc/branches/master/StructureDefinition-v.json > StructureDefinition-HC1-v.json


echo "Updating EU DCC LMs"
curl  --request PUT $HOST/StructureDefinition/HC1  \
      --data-binary @StructureDefinition-HC1.json \
      -H "Accept: application/fhir+json"  -H "Content-Type: application/fhir+json " 

curl  --request PUT $HOST/StructureDefinition/v  \
      --data-binary @StructureDefinition-HC1-v.json \
      -H "Accept: application/fhir+json"  -H "Content-Type: application/fhir+json " 


echo "Updating EU DCC LMs"
curl  --request POST $HOST/StructureMap \
      --data-binary @ddcc-to-eu-dcc.map \
      -H "Accept: application/fhir+json"  -H "Content-Type: text/fhir-mapping"


echo "Transforming Example DDCC Bundle to EU DCC QR Serialization"
curl --request POST "$HOST/StructureMap/\$transform?source=http://who-int.github.io/svc/StructureMap/ddcc-to-eu-dcc" \
     --data-binary @../fsh-generated/resources/Bundle-Example-English.json  \
      -H "Accept: application/fhir+json"  -H "Content-Type: application/fhir+json"

