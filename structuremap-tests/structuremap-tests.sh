#!/bin/sh
set -e

# download karate standalone jar
if ! [ -f ./karate.jar ]; then
  curl -L https://github.com/karatelabs/karate/releases/download/v1.3.1/karate-1.3.1.jar --output karate.jar
fi

# run all tests against Matchbox server
# requires Sushi to be run first
sushi ..
# java -jar karate.jar -t @matchbox structuremap-tests.feature
# ^matchbox docker cmd^ docker run -d -p 8080:8080 mitre

# optionally run specific tests by tag
#java -jar karate.jar -t @matchbox -t @shc structuremap-tests.feature

# run tests against local copy of validator_cli.jar instead of Matchbox server
# requires IG publisher to be run first
# update jar classpath to path of local validator_cli.jar file, see https://confluence.hl7.org/display/FHIR/Using+the+FHIR+Validator
java -Xmx8192m -cp karate.jar:/Users/rscalfani/Documents/code/validator_cli.jar com.intuit.karate.Main -t @validator structuremap-tests.feature
# ^IG Publisher Command^ ~ java -jar publisher.jar -ig dvcc/ddcc/ig.ini