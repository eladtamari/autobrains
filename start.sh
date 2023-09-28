#!/bin/bash
app="docker.test"
docker build -t ${app} .
docker run --rm -d -p 8081:80 --name=${app} -v $PWD:/app/tests ${app}