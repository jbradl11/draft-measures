#!/bin/bash

export WORKING_DIR='pwd'
echo "> Working dir: $WORKING_DIR"

echo "> Getting data..."
git clone git@github.com:projecttacoma/fhir-bundle-calculator.git

echo "> Making data dir"
sudo mv fhir-bundle-calculator data
