#!/bin/bash
set -eux

readarray -t datarr <<< "${INPUT_DATA}"
for file in "${datarr[@]}"
do
  echo "Checking ${file}..."
  /action/validate-yaml -schema="${INPUT_SCHEMA}" "${file}"
done