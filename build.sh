#!/bin/bash

gradle war

rm -f build/hapifhir.war
mv  build/libs/hapi-fhir-server-3.4.0.war build/hapifhir.war

docker build  --tag=openlmis-hapi .