#!/usr/bin/env bash

docker build -t footprintai/minio-pyclient:3.7 -f Dockerfile .
docker push footprintai/minio-pyclient:3.7
