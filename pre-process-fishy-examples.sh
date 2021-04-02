#!/bin/bash
set -e




# generate a StructureMap resource from the map defined via
# the FHIR Structure Mapping Language at input/resources/maps/svc-map-qr-uvci-bundle.map
# output is to input/resources/maps/svc-map-qr-uvci-bundle.xml
HOST=https://test.ahdis.ch/r4
### HOST=http://localhost:8080/r4

curl -vvv ${HOST}/StructureMap \
     -X POST \
     --data-binary "@./input/pre-generated/svc-map-qr-uvci-bundle.map" \
     -o input/resources/maps/svc-map-qr-uvci-bundle.xml \
     -H 'Content-Type: text/fhir-mapping' \
     -H 'Accept: application/fhir+xml;fhirVersion=4.0'


# From Chris Moesel:  you should not rely on SUSHI to create a snapshot.
# This is why I recommended in my earlier comment that if you put the built SD into input/resources, use the
# SD created by the IG Publisher (not directly from SUSHI). In other words, this should work fine for creating
# and using custom resources:
#
# 1. Use FSH Instance syntax to create an instance of StructureDefinition with differential elements specified.
# 2. Build w/ SUSHI to produce formal SD in fsh-generated, but it will still have no snapshot elements.
# 3. Use IG Publisher to build the IG, which will create a new SD in output w/ the snapshot elements.
# 4. Copy the SD from output to input/resources so that SUSHI will pick it up as a FHIR definition next time.
# 5. Comment out the original FSH definition (from step 1) so SUSHI doesn't generate it again.
# 6. Now you can use that custom resource as an InstanceOf or Parent in other FSH definitions.
#
# Of course you can use another tool (like Forge) to create the custom resource, but if you prefer to use FSH
# and don't mind the sequence up above, it should work. Of course, you'll need to redo that every time you need
# to make edits to the custom resource.

source /usr/local/opt/chruby/share/chruby/chruby.sh
chruby 3.0.0



rm -f input/resources/StructureDefinition-svc-qr-uvci.xml
rm -f input/fsh/svc-qr-uvci-example.fsh
rm -f  input/examples/svc-qr-uvci-example.json
cp input/pre-generated/svc-qr-uvci.fsh input/fsh/svc-qr-uvci.fsh
sushi
ls -R fsh-generated
./_genonce.sh
ls -R fsh-generated/
cp output/StructureDefinition-svc-qr-uvci.xml input/resources/
cp input/pre-generated/svc-qr-uvci-example.fsh input/fsh
rm -f input/fsh/svc-qr-uvci.fsh
./_genonce.sh

#get cleaned up and ready for a git commit continuous build
mkdir -p input/examples
cp fsh-generated/resources/svc-qr-uvci-example.json input/examples


