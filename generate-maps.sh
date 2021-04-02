#!/bin/bash

HOST=https://test.ahdis.ch/r4
### HOST=http://localhost:8080/r4

      
curl -vvv ${HOST}/StructureMap \
     -X POST \
     --data-binary "@./input/resources/maps/svc-map-qr-uvci-bundle.map" \
     -o input/resources/maps/svc-map-qr-uvci-bundle.xml \
     -H 'Content-Type: text/fhir-mapping' \
     -H 'Accept: application/fhir+xml;fhirVersion=4.0'
