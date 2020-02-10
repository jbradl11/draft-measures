#!/bin/bash

export WORKING_DIR='pwd'
echo "> Working dir: $WORKING_DIR"

echo "> Cloning FHIR Bundle Calculator..."
git clone https://github.com/projecttacoma/fhir-bundle-calculator.git

echo "> Cloning FHIR Generated Patients..."
git clone https://github.com/projecttacoma/fhir-patient-generator.git

cd fhir-patient-generator

echo ">Installing FHIR Patient Generator CLI..."
npm install -g fhir-bundle-calculator

cd EXM_130

echo ">Calculate Bundles..."

make .connectathon
make .seed-cqf-ruler-r4

cd ..
cd ..

calculate-bundles -d ./fhir-patient-generator/EXM_130/patients-r4/denominator/ -c ./pages/cql/in-progress/fhir4/EXM130_FHIR4-7.2.000.cql -u http://localhost:8080/cqf-ruler-r4/fhir
calculate-bundles -d ./fhir-patient-generator/EXM_130/patients-r4/numerator/ -c ./pages/cql/in-progress/fhir4/EXM130_FHIR4-7.2.000.cql -u http://localhost:8080/cqf-ruler-r4/fhir

