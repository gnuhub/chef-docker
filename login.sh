#!/usr/bin/env bash
docker run -ti --privileged=true --memory=512m chef-docker:$1 /bin/bash