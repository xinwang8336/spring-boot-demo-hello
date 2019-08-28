#!/bin/bash
echo "stop container"
docker stop springboot-demo;
echo "delete container"
docker rm springboot-demo;
echo "delete image"
docker rmi itmuch/springboot-demo-0.0.1&&
cd /home/images-build/springboot-demo/&&
echo "build image"
docker build -t itmuch/springboot-demo-0.0.1 .&&
echo "run container"
docker run -d --name springboot-demo -p 9004:8080 itmuch/springboot-demo-0.0.1;
