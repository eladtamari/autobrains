#!/bin/bash
app="docker.test"
docker build -t ${app} .
docker run -d -p 8080:80 --name=${app} ${app}