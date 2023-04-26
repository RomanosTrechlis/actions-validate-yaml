#!/bin/bash
set -eux

readarray -t strarr <<< "${INPUT_DATA}"
for file in "${strarr[@]}"
do
  echo "Checking ${file}..."
  /action/validate-yaml -schema="${INPUT_SCHEMA}" "${file}"
done