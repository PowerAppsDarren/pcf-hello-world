#!/bin/bash

# Create a timestamp in format 'yyyy-MM-dd-hh-mm-ss-AM/PM'
timestamp=$(date +"%Y-%m-%d-%I-%M-%S-%p")

# Define directories
simpleDir="./SolutionPackages/pcfHelloWorld"
finalDir="./SolutionPackages/pcfHelloWorld-$timestamp"

# Create directory with underscores (valid for solution init)
mkdir -p "$simpleDir"

# Navigate into the new directory
pushd "$simpleDir" > /dev/null

# Initialize the solution
pac solution init --publisher-name "SuperPowerLabs" --publisher-prefix "spl"

# Add reference to the PCF component
pac solution add-reference --path "../.."

# Build the solution
dotnet build

# Return to the original directory
popd > /dev/null

# Move the solution to the timestamped directory
mkdir -p "$finalDir"
mv "$simpleDir"/* "$finalDir"
rm -rf "$simpleDir"

# Build the solution again (optional)
dotnet build

# Authenticate with your environment (replace with your actual environment URL)
pac auth create --url "https://yourenvironment.crm.dynamics.com"

# Push the PCF component (replace 'spl' with your actual publisher prefix if different)
pac pcf push --publisher-prefix spl
