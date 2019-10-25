#!/bin/bash

# Arguments:
# $1: exercise slug (currently ignored)
# $2: path to solution folder (without trailing slash or preceeding ./)
# $3: path to output directory (without trailing slash or preceeding ./)

# Example:
# ./run.sh two-fer path/to/two-fer path/to/output/directory
# ./run.sh two-fer twofer output

# Run the test and pipe the json directly to the testoutput module
# then dump the resulting json into the output folder
go test --json ./$2 | go run cmd/testoutput/main.go > $3/results.json