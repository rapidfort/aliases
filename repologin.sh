#!/bin/bash -ex
user=${1:-boeyeb}
password=${2}
docker login -u ${user} --password-stdin ${password}  https://registry1.dso.mil
