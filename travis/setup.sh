#!/bin/bash

echo "> Cloning FHIR Bundle Calculator..."
git clone https://github.com/projecttacoma/fhir-bundle-calculator.git

echo "> Cloning FHIR Generated Patients..."
git clone https://github.com/projecttacoma/fhir-patient-generator.git

echo ">Installing FHIR Patient Generator CLI..."
npm install -g fhir-bundle-calculator

