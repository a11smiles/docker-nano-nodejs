@echo off

echo Downloading node.msi...
@powershell -NoProfile -ExecutionPolicy Bypass -Command "Invoke-WebRequest -Uri "https://nodejs.org/dist/v6.9.1/node-v6.9.1-x64.msi" -OutFile "./node.msi"

echo Extracting node.msi...
msiexec /a node.msi /qn TARGETDIR="%CD%\nodejs"

echo Building docker image...
docker build -t a11smiles/nano-nodejs:6.9.1 .

echo Cleaning up...
rmdir /s /q nodejs
del node.msi

echo Done.