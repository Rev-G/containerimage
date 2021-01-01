# containerimage
testing different ways of building container images

docker build -f dockerfile.fedora -t gpalmerjr/automation-fedora:latest .

docker run --name auto-dev -d -it gpalmerjr/automation-fedora:latest

docker run --name auto-dev -d -v ~/mycode/netbox_ansible:/var/tmp/netbox_ansible -it gpalmerjr/automation-fedora:latest

*note: when running ansible playbooks you may need to disable host key checking.  if you want to pass in the ssh password rather than setup sshkeys*

`export ANSIBLE_HOST_KEY_CHECKING=False`