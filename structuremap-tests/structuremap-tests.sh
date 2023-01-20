#!/bin/sh
set -e

# download karate standalone jar
if ! [ -f ./karate-1.3.1.jar ]; then
  curl -L https://github.com/karatelabs/karate/releases/download/v1.3.1/karate-1.3.1.jar --output karate-1.3.1.jar
fi

# run sushi
sushi ..

# run all tests
java -jar karate-1.3.1.jar structuremap-tests.feature

# optionally run specific tests by tag
#java -jar karate-1.3.1.jar -t @shc structuremap-tests.feature