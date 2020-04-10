### Overview

A packer template to create Ubuntu 18.04.04 "Bionic Beaver" Server box for vagrant.  On top of the base image it als installs the utils such as jq, curl, git and unzip.  Docker ce also installed in the image.

## USAGE
To create VirtualBox virtual machine.

```
$ packer validate docker-ce-ubuntu-180404.json
$ packer build docker-ce-ubuntu-180404.json
```

This is tested with Packer ver 1.5.5
