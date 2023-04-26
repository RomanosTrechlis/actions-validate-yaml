# GitHub actions Validate YAML

Validate YAML files with a JSON schema. 
Using [validate-yaml](https://github.com/gerald1248/validate-yaml)

## GitHub actions configuration

In order to use RomanosTrechlis/actions-validate-yaml, follow the instructions bellow:

1. Create the **.github/workflows** directory in your root directory
2. Create a **yml** file with an appropriate name
3. Copy the following script into that file
4. Change input variables
5. Commit and push

```yml
on:
  push:
    paths:
      - '**.yml'
      - '**.yaml'
release:
  types: [created]

name: Validate YAML
jobs:
  releases-matrix:
    name: Validate YAML
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: RomanosTrechlis/actions-validate-yaml@master
        with:
          schema: spec.json
          data: |-
            file1.yml
            file2.yml
```
