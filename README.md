### Overview

A packer template to create Ubuntu 18.04.04 "Bionic Beaver" Server box for vagrant.  On top of the base image it als installs the utils such as jq, curl, git and unzip.  Docker ce also installed in the image.

## Usage
The packer templates creates a VirtualBox image of Ubuntu 18.04.04.  
The base image is updated with the following utilities.
jq
curl
git
unzip

Docker CE also installed into the base image.

Disk size is set to around 80MB

Timezone of the image is set to Australia/Melbourne
vagrant user is added to the Docker group so all the docker commands can be executed by the vagrant user.

Validate the template and build the image as shown below

```
$ packer validate docker-ce-ubuntu-180404.json
$ packer build docker-ce-ubuntu-180404.json
```

The image will be created in the same folder with name ```ubuntu-18.04.04-with-docker-ce-0.1.box```

This build is tested with ```Packer ver 1.5.5```

## Test

Use the Vagrant file to create a VM with the image to test it.

```
$ vagrant validate
$ vagrant status
$ vagrant up

$ vagrant ssh
```
