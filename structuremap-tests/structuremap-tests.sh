#!/bin/sh
set -e

# download karate standalone jar
if ! [ -f ./karate.jar ]; then
  curl -L https://github.com/karatelabs/karate/releases/download/v1.3.1/karate-1.3.1.jar --output karate.jar
fi

# run all tests against Matchbox server
# requires Sushi to be run first
sushi ..
java -jar karate.jar -t @matchbox structuremap-tests.feature

# optionally run specific tests by tag
#java -jar karate.jar -t @matchbox -t @shc structuremap-tests.feature