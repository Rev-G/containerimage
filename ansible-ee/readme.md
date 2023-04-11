# creating custom ee

`ansible-builder build --container-runtime=docker`

This created a context folder with a docker file and the files in the "execution-environment.yml" file inside a _build folder.

```bash
context
  |_ Dockerfile
  |_ _build
    |_ {files from execution-environment.yml}
```