# container

# container build
testing different ways of building container images

docker build -f dockerfile.fedora -t gpalmerjr/autostation:latest .

docker run --name auto-dev -rm -it gpalmerjr/autostation:latest

docker run --name auto-dev -d -v ~/mycode/netbox_ansible:/var/tmp/netbox_ansible -it gpalmerjr/automation-fedora:latest

*note: when running ansible playbooks you may need to disable host key checking.  if you want to pass in the ssh password rather than setup sshkeys*

`export ANSIBLE_HOST_KEY_CHECKING=False`

## imgpkg
using imgpkg to create bundles/images that are just files

### create folder structure and files

```bash
➜  palmer-bundle ls -lah
total 240
drwxr-xr-x   4 gary  staff   128B Feb 17 22:52 .
drwxr-xr-x  10 gary  staff   320B Feb 17 22:53 ..
-rw-r--r--   1 gary  staff    22B Feb 17 22:29 hello.txt
-rw-r--r--@  1 gary  staff   114K Feb 17 22:23 skate.jpeg
```

### create image and push to repository

note: if you create a bundle "-b" instead you must also include ".imgpkg/images.yml

`imgpkg push -i docker.io/gpalmerjr/first-bundle-image:v1.0.0 -f palmer-bundle`

### pull the image down

`imgpkg pull -i docker.io/gpalmerjr/first-bundle-image:v1.0.0 -o first-image`

### one to one match

```bash
➜  first-image ls -lah
total 240
drwx------   4 gary  staff   128B Feb 17 22:53 .
drwxr-xr-x  10 gary  staff   320B Feb 17 22:53 ..
-rw-------   1 gary  staff    22B Dec 31  1969 hello.txt
-rw-------@  1 gary  staff   114K Dec 31  1969 skate.jpeg
```
