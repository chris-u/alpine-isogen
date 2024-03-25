#!/bin/sh

VER=${ver:=3.19}

PROFILE=${profile:=lxd}

SUDO='' sh ~/aports/scripts/mkimage.sh  \
          --tag $VER \
	  --arch x86_64 \
	  --outdir /tmp/iso \
	  --repository https://dl-cdn.alpinelinux.org/alpine/v${VER}/community/ \
	  --repository https://dl-cdn.alpinelinux.org/alpine/v${VER}/main/ \
	  --profile $PROFILE
