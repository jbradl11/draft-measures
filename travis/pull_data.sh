#!/bin/bash

export WORKING_DIR='pwd'
echo "> Working dir: $WORKING_DIR"

echo ">Calculate Bundles..."
echo $0
file-name = $0
cd fhir-patient-generator/$file-name
make connectathon
make .seed-cqf-ruler-r4
cd ../..


calculate-bundles -d ./fhir-patient-generator/FILE/patients-r4/denominator/ -c ./pages/cql/in-progress/fhir4/FILE_FHIR4-7.2.000.cql -u http://localhost:8080/cqf-ruler-r4/fhir
calculate-bundles -d ./fhir-patient-generator/FILE/patients-r4/numerator/ -c ./pages/cql/in-progress/fhir4/FILE_FHIR4-7.2.000.cql -u http://localhost:8080/cqf-ruler-r4/fhir

