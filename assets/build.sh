#!/bin/sh



VERSION=${version:=3.19}

name=alpine-isobuild

docker ps || colima start docker

sed -e s/{{VERSION}}/$VERSION/g < Dockerfile.proto > Dockerfile


docker build -t $name:$VERSION .

echo "build $name:$VERSION"


rm Dockerfile
