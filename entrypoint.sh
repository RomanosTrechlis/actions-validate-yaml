#!/bin/sh

set -eux

echo "${INPUT_SCHEMA}"
echo "${INPUT_DATA}"

./validate-yaml -schema="${INPUT_SCHEMA}" "${INPUT_DATA}"