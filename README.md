# docker-nano-nodejs
Pure Node.js and NPM on Nano Server

## Contents
This repo contains two files:

1. `build.bat` - the executable that downloads everything and builds the docker image
2. `Dockerfile` - the docker build configuration 

## To run
Open a command prompt as an Administrator and within the same directory, run `.\build.bat`

## Process
The batch file automatically performs the following:

1. Downloads the latest version of Node.js LTS (and NPM)
2. Extracts the .msi
3. Downloads the latest version of the `microsoft/nanoserver` docker image
4. Copies the Node.js files to `C:\nodejs` folder within the image
5. Adds `C:\nodejs` to the system path within the image
6. Cleans up artifacts

## Versioning
The `Dockerfile` will contain the current LTS version of Node.js. It will tag the docker image with the version number.  Additionally, all docker images in the public docker hub (https://hub.docker.com/r/a11smiles/nano-nodejs) will be tagged with the appropriate version.

## Public Docker Hub
If your desire is to not build the image yourself and would rather download a pre-built image, you may download it via docker with the command `docker pull a11smiles\nano-nodejs:TAG` where _TAG_ is the version of Node.js LTS you'd like to pull (e.g. 6.9.1).  

