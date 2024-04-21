# custom ee

# creating

`ansible-builder build --container-runtime=docker`

This created a context folder with a docker file and the files in the "execution-environment.yml" file inside a _build folder.

```bash
context
  |_ Dockerfile
  |_ _build
    |_ {files from execution-environment.yml}
```

## running

### with stdout

`ansible-navigator run tf_ee_test.yml -i hosts --execution-environment-image palmeransible:1.0.0.2023-51 --container-engine docker --pull-policy missing -m stdout`

## with tui

`ansible-navigator run tf_ee_test.yml -i hosts --execution-environment-image palmeransible:1.0.0.2023-51 --container-engine docker --pull-policy missing`
