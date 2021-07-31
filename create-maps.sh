#!/bin/sh
set -e
### @host = http://localhost:8080/hapi-fhir-jpavalidator/fhir
### @host = http://test.ahdis.ch/hapi-fhir-jpavalidator/fhir
### @host = https://ehealthsuisse.ihe-europe.net/hapi-fhir-jpavalidator/fhir


#HOST="http://127.0.0.1:8080/r4"
#HOST="http://hapi.fhir.org/baseR4"
HOST="http://test.ahdis.ch/r4"

echo "Accessing $HOST/metadata"

### Get capability statement
#curl --request GET $HOST/metadata \
#     -H "Accept: application/fhir+json" 

DIR="input/resources/"
FILES=`ls $DIR/maps-src/*.map`
for FILE in $FILES
do
    NAME=${FILE##*/}

    echo $NAME
    echo "Updating DDCC to Core Data Set Structure Map $FILE"
    curl  --request POST $HOST/StructureMap \
      --data-binary @$FILE \
      -H "Accept: application/fhir+json"  -H "Content-Type: text/fhir-mapping" \
      > "$DIR/maps/$NAME.json"
done
