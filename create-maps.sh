#!/bin/sh
set -e

#this script assumes jq is installed See: https://stedolan.github.io/jq/download/
#this script assumes matchboxes is running on localhost at port 8080 See: https://github.com/ahdis/matchbox
#intended to be run after sushi has been run with contents in fsh-generated

### @host = http://localhost:8080/hapi-fhir-jpavalidator/fhir
### @host = http://test.ahdis.ch/hapi-fhir-jpavalidator/fhir
### @host = https://ehealthsuisse.ihe-europe.net/hapi-fhir-jpavalidator/fhir


#HOST="http://127.0.0.1:8080/matchbox/fhir"
#HOST="http://hapi.fhir.org/baseR4"
HOST="https://test.ahdis.ch/matchbox/fhir" 

echo "Accessing $HOST/metadata"

### Get capability statement
#curl --request GET $HOST/metadata \
#     -H "Accept: application/fhir+json" 


#make sure all our structure definitions are loaded up
SDS=(    "fsh-generated/resources/StructureDefinition-DDCCOrganization.json"  "fsh-generated/resources/StructureDefinition-DDCCImmunizationRecommendation.json"    "fsh-generated/resources/StructureDefinition-DDCCImmunization.json"    "fsh-generated/resources/StructureDefinition-DDCCPatient.json"    "fsh-generated/resources/StructureDefinition-DDCCVaccineBrand.json"    "fsh-generated/resources/StructureDefinition-DDCCCountryOfVaccination.json"    "fsh-generated/resources/StructureDefinition-DDCCDocumentReferenceQR.json"    "fsh-generated/resources/StructureDefinition-DDCCComposition.json"    "fsh-generated/resources/StructureDefinition-DDCCCoreDataSetPoV.json"    "fsh-generated/resources/StructureDefinition-DDCCCoreDataSetCoC.json"    "input/resources/structuredefinitions/StructureDefinition-HC1.json"    "input/resources/structuredefinitions/StructureDefinition-HC1-v.json"    )




for SD in ${SDS[@]}
do
    ID=$(jq -r '.id' $SD)
    echo Loading $SD with $ID
    curl -sS --request PUT $HOST/StructureDefinition/$ID \
      --data-binary @$SD \
      -H "Accept: application/fhir+json"  -H "Content-Type: application/fhir+json"

done


#transform all fhir mapping language files in a maps-src directory to json structure maps in a maps directory
RDIR="input"
FILES=`ls $RDIR/resources/maps-src/*.map`
SMAPS=( )
for FILE in $FILES
do
    FILENAME=${FILE##*/}
    NAME=${FILENAME%.*}
    SMAP="$RDIR/resources/StructureMap-$NAME.json"
    SMAPS+=($SMAP)
    echo $NAME
    echo "Creating StructureMap from FHIR Mapping Language in $FILE"
    curl -sS  --request PUT $HOST/StructureMap/$NAME \
      --data-binary @$FILE \
      -H "Accept: application/fhir+json"  -H "Content-Type: text/fhir-mapping" \
      > $SMAP

done

#load SHC implementation guide
# echo Loading SHC IG
#     curl -sS --request POST $HOST/ImplementationGuide \
#       --data-binary '{ "resourceType": "ImplementationGuide", "version": "0.6.2", "name": "hl7.fhir.uv.shc-vaccination", "packageId": "hl7.fhir.uv.shc-vaccination" }' \
#       -H "Accept: application/fhir+json"  -H "Content-Type: application/fhir+json"


#transform all ddcc bundle examples with structure maps
EXDIR=$RDIR/resources/examples
mkdir -p $EXDIR
DDCCS=("fsh-generated/resources/Bundle-Example-English.json")
SRC='DDCCDocument'
for SMAP in ${SMAPS[@]}
do 
    SRCTYPE=$(jq -r '.group[0].input[0].type' $SMAP)
    TGTTYPE=$(jq -r '.group[0].input[1].type' $SMAP)
    SMURL=$(jq -r '.url' $SMAP)
    SMID=$(jq -r '.id' $SMAP)
    
    for DDCC in ${DDCCS[@]}
    do
        SRCID=$(jq -r '.id' $DDCC)
	OUT=$TGTTYPE-$SRCID-From-$SMID.json
	if [ $SRCTYPE == $SRC ]; then
	    echo "Transforming $SRCID instance of $SRC to $TGTTYPE using $SMID"
	    echo $OUT
     	    curl -sS --request POST "$HOST/StructureMap/\$transform?source=$SMURL" \
     	        --data-binary @$DDCC  \
     		-H "Accept: application/fhir+json"  -H "Content-Type: application/fhir+json" \
		> $EXDIR/$OUT

	fi
    done
 done
   